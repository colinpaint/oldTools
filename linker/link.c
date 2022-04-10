/* Output from p2c 2.00.Oct.15, the Pascal-to-C translator */

#include "p2c.h"

#define vermsg          "V1.44"

#define max_len         132
#define max_hash        4095
#define startbase       0x400
#define esc             27


typedef uchar byte;

typedef short word;


typedef Char sym_name[10];

typedef struct reference {
	sym_name rname;
	struct reference *next_ref;
} reference;

typedef struct resolve {
	long res_addr, res_offset;
	struct resolve *next_res;
} resolve;

typedef Char string[max_len + 1];


typedef struct symbol {
	sym_name sname, mname;
	long ssect, saddr, comsize;
	struct symbol *next_sym, *next_com;
	unsigned sdef : 1, sused : 1, sflagged : 1, shist : 1;
	reference *reflist;
	resolve *reslist;
} symbol;

typedef struct idrec {
	word rlen;
	Char rtype;
	sym_name modname;
} idrec;

typedef Char filename[81];


typedef Char objrec[256];


typedef byte block[256];
typedef byte bblock[512];


typedef struct milestone {
	long mill_time, int_time;
	Char time_of_day[11];
} milestone;

typedef enum {
	$history_obj, $history_symbol, $history_ref
} history_type_t;

typedef struct history_t {
	history_type_t history_type;
	union {
		long obj_addr;
		struct {
			long symbol_addr;
			sym_name symbol_name;
		} U1;
		struct {
			long ref_addr, ref_offset;
		} U2;
	} UU;
} history_t;


/* --- size( history_t ) = 15;
{ Therefore size( filed_history_t ) = 545 * 15 + 4 = 8179.
{ ie. Almost filling 8k.
*/
/*bytes_per_file_rec$ = 8192 ;
{recs_per_file_rec$ = 545 ;
*/

/* --- ICC/JMcD say 3 blocks is cluster size. so try that.
{ Therefore size( filed_history_t ) = 102 * 15 + 4 = 1534.
*/

#define bytes_per_file_rec$  1536
/*102*/

#define recs_per_file_rec$  ((bytes_per_file_rec$ - 4) / 15)


typedef union filed_history_t {
	struct {
		long num_recs;
		history_t recs[recs_per_file_rec$];
	} U1;
	Char dummy[bytes_per_file_rec$];
} filed_history_t;



/* p2c: ql.pas, line 104: Warning: Type attribute EXTERNAL ignored [128] */
/* p2c: ql.pas, line 104: Note: Mechanism specifier %DESCR ignored [108] */
/* p2c: ql.pas, line 105:
 * Note: Mechanism specified %REF treated like VAR [107] */
/* p2c: ql.pas, line 106:
 * Note: Mechanism specified %REF treated like VAR [107] */




/* p2c: ql.pas, line 110: Warning: Type attribute UNSAFE ignored [128] */
/* p2c: ql.pas, line 114:
 * Warning: Unsatisfied forward reference to type NAM$TYPE [138] */
/* p2c: ql.pas, line 114:
 * Warning: Unsatisfied forward reference to type FAB$TYPE [138] */



typedef struct text_rec_t {
	FILE *f;
	struct text_rec_t *next_text;
} text_rec_t;


Static long ql_undefsym, ql_dbldefsym, ql_sizeclash, ql_fatalerr,
			ql_sctovrlap;

Static boolean firstfile;
Static Char termchar;
Static long return_code, smax, checksum, pass, opos, bpos;
Static objrec o;

Static long line_length;
Static Char line_buff[max_len + 1];
/*extra byte to stop bound overflow!*/

Static symbol *prev_com, *com_head;

Static boolean modules, debug, download, check, bell, xref, map, bin, out,
				 symout, log_, english, quiet, files, chat, history,
				 use_history, escape;

Static boolean newline, duffer, inpacket;

Static symbol *hash_table[max_hash + 1];
Static string fil, prompt, file_id;
Static word fil_len;
Static long dirend, colonpos, codestart, codelen, topesd, blockpt, undefsym,
			result, pflag, numsymbols;
Static long userbase[17], sbase[17], sectbase[17], baseaddr[17];
/*element -1 is the ABS section*/

Static long outaddr[256], esdarr[256];
Static symbol *esdsymarr[256];

Static long codearr[64];

Static milestone start_link, end_pass_1, end_pass_2, end_link, end_map_gen,
		 end_his_gen, end_sym_gen, end_space_alloc, end_xref_gen,
		 start_read_his, end_read_his;

Static sym_name mod_id;

Static FILE *symfile, *objfile;
Static FILE *mod_file, *tgtfile, *sfile, *tobjfile;
Static FILE *btgtfile, *bfile;

Static bblock oblock;
Static block bl, inblock;
Static boolean empty;
Static filename cur_file, ext, defext, cmdroot, cmdname, full_filename;

Static sym_name sn;
Static symbol *spt;
Static objrec orec;
Static text_rec_t *cmdfile;
Static filename f;
Static long total, basepos, i;

Static FILE *log_file;
Static Char datestring[11];



/*-------------------------------------------------------------------------*/
Static Void showmod()
{
	printf("in module '%.10s', from file '%s'....\n", mod_id, cur_file);
	if (log_)
		fprintf(log_file, "in module '%.10s', from file '%s'....\n",
			mod_id, cur_file);
}  /* showmod */


/*-------------------------------------------------------------------------*/
Static boolean seq(f1, f2)
Char *f1, *f2;
{
	if (strlen(f1) != strlen(f2))
		return false;
	else
		return (strcmp(f1, f2) == 0);
}  /* seq */


/*-------------------------------------------------------------------------*/
Static long ior(i1, i2)
long i1, i2;
{
	return (((unsigned long)i1) | ((unsigned long)i2));
}  /*ior */


/*-------------------------------------------------------------------------*/
Static long iand(i1, i2)
long i1, i2;
{
	return (((unsigned long)i1) & ((unsigned long)i2));
}  /* iand */


/*-------------------------------------------------------------------------*/
Static long ixor(i1, i2)
long i1, i2;
{
	return (((unsigned long)i1) ^ ((unsigned long)i2));
}  /* ixor */


/*-------------------------------------------------------------------------*/
Static long mvl(i)
long i;
{
	return (i * 256);
}  /* mvl */


/*-------------------------------------------------------------------------*/
Static long mvr(i)
long i;
{
	if (i < 0)
		return (0x800000L | ((unsigned long)mvr(0x7fffffffL & ((unsigned long)i))));
	else
		return (i / 256 % 0x1000000L);
}  /* mvr */


Static long hexchr(c)
Char c;
{
	if (isdigit(c))
		return (c - '0');
	if (c >= 'a' && c <= 'f')
		return (c + 10 - 'a');
	if (c >= 'A' && c <= 'F')
		return (c + 10 - 'A');
	printf("Duff char '%c'when hex char expected!\n", c);
}  /* hexchr */


typedef Char packed_array[80];


/*I think the fields in the NAM block are rather volatile, they
get reused very soon, particularly if you do writelns in between
NAM extractions. So do all the extractions, then write the results. */
/*The RMS manual talks about allocating space by your program for use
as intermediate space when using RMS services, so thats probably whats
needed. */

Local Void do_string(b, l, str)
byte b;
unsigned long l;
Char *str;
{
	long i;
	Char *string_ptr;

	*str = '\0';
	string_ptr = (Char *)l;
	for (i = 0; i < b; i++)
		sprintf(str + strlen(str), "%c", string_ptr[i]);
}



/*-------------------------------------------------------------------------*/
Static Void openin(f)
Char *f;
{
	strcpy(cur_file, f);
/* p2c: ql.pas, line 294: Note: Ignoring option string in open [183] */
	if (objfile != NULL)
		objfile = freopen(P_trimname(f, 81), "r+b", objfile);
	else
		objfile = fopen(P_trimname(f, 81), "r+b");
	if (objfile == NULL)
		objfile = fopen(P_trimname(f, 81), "w+");
	if (objfile == NULL)
		_EscIO2(FileNotFound, P_trimname(f, 81));
/* p2c: ql.pas, line 294: Warning: Expected a ')', found a ':=' [227] */

	strcpy(file_id, f);
/* p2c: ql.pas, line 296: Warning: Type mismatch in VAR parameter F [295] */

	rewind(objfile);
	blockpt = 0;
	fread(inblock, sizeof(block), 1, objfile);
	empty = false;
}  /*openin */



/*-------------------------------------------------------------------------*/
Static Void getrec(o)
Char *o;
{
	long i, l1, FORLIM;

	/*.ro files are 256 byte fixed size blocks. Within these blocks, records are
packed end to end i.e. one record can span a block boundary. Each record
conisits of a single byte <n> followed by <n> data bytes*/

	o[inblock[blockpt]] = '\0';
/* p2c: ql.pas, line 316:
 * Note: Modification of string length may translate incorrectly [146] */

	if (255 - blockpt > strlen(o))
		l1 = strlen(o);
	else
		l1 = 255 - blockpt;

	for (i = 1; i <= l1; i++)
		o[i-1] = inblock[blockpt + i];
	blockpt += l1 + 1;
	if (blockpt <= 255)
		return;

	if (P_eof(objfile))
		empty = true;
	else
		fread(inblock, sizeof(block), 1, objfile);

	blockpt = 0;
	l1++;   /*step to start of next xfer*/
	FORLIM = strlen(o);
	for (i = l1; i <= FORLIM; i++)
		o[i-1] = inblock[i - l1];
	blockpt = strlen(o) - l1 + 1;
}  /* getrec */



/*-------------------------------------------------------------------------*/
Static Void opentextin(f)
Char *f;
{
	strcpy(cur_file, f);
/* p2c: ql.pas, line 343: Note: Ignoring option string in open [183] */
	if (tobjfile != NULL)
		tobjfile = freopen(P_trimname(f, 81), "r+", tobjfile);
	else
		tobjfile = fopen(P_trimname(f, 81), "r+");
	if (tobjfile == NULL)
		tobjfile = fopen(P_trimname(f, 81), "w+");
	if (tobjfile == NULL)
		_EscIO2(FileNotFound, P_trimname(f, 81));
/* p2c: ql.pas, line 343: Warning: Expected a ')', found a ':=' [227] */
	strcpy(file_id, f);
/* p2c: ql.pas, line 344: Warning: Type mismatch in VAR parameter F [295] */
	rewind(tobjfile);
}  /*opentextin */



/*-------------------------------------------------------------------------*/
Static Void gettextrec(o)
Char *o;
{
	Char buff[256];
	long bytes, i;
	Char *TEMP;

	/*.rx files are a text version of the .ro file. Each record is a single line
of text, written out as hex characters i.e. 2 characters per byte. The record
length is derived from the bytes on the line. This format is provided to allow
.rx files to be easily ported from other systems e.g. Unix*/

	fgets(buff, 256, tobjfile);
	TEMP = strchr(buff, '\n');
	if (TEMP != NULL)
		*TEMP = 0;
	bytes = strlen(buff) / 2;
	o[bytes] = '\0';
/* p2c: ql.pas, line 364:
 * Note: Modification of string length may translate incorrectly [146] */
	for (i = 1; i <= bytes; i++)
		o[i-1] = (Char)(hexchr(buff[i * 2 - 2]) * 16 + hexchr(buff[i * 2 - 1]));

}  /* gettextrec */



/*-------------------------------------------------------------------------*/
Static boolean null_(c)
Char c;
{
	return (c == '\015' || c == '\n' || c == ' ' || c == '\t' || c == '\0');
}  /* null */


/*-------------------------------------------------------------------------*/
Static boolean digit(c)
Char c;
{
	return isdigit(c);
}  /* digit */


/*-------------------------------------------------------------------------*/
Static boolean alpha(c)
Char c;
{
	return isalpha(c);
}  /* alpha */


/*-------------------------------------------------------------------------*/
Static boolean alphanum(c)
Char c;
{
	return (digit(c) || alpha(c) || c == '_');
}  /* alphanum */


/*-------------------------------------------------------------------------*/
Static Void force_up(s)
Char *s;
{
	long i;

	for (i = 0; i <= 9; i++) {
		if (islower(s[i]))
			s[i] = _toupper(s[i]);
	}
}  /* force_up */



/*-------------------------------------------------------------------------*/
Static Void init_hash()
{
	long i;

	for (i = 0; i <= max_hash; i++)
		hash_table[i] = NULL;
}


/* of PROCEDUR
nit_hash */

/*-------------------------------------------------------------------------*/
Static long hash_sym(s)
Char *s;
{
	long h = 0, i = 1;

	while (i < 10 && s[i-1] != ' ') {
		h = h * 97 + s[i-1];
		i++;
	}

	return (h % max_hash);
}  /* hash_sym */


/*-------------------------------------------------------------------------*/
Static boolean find_insert(s, s_ptr, ins)
Char *s;
symbol **s_ptr;
boolean ins;
{
	boolean Result;
	boolean found = false;
	long hash;

	force_up(s);
	hash = hash_sym(s);
	*s_ptr = hash_table[hash];

	while (!found && *s_ptr != NULL) {
		if (!strncmp((*s_ptr)->sname, s, sizeof(sym_name)))
			found = true;
		else
			*s_ptr = (*s_ptr)->next_sym;
	}

	Result = found;
	if (found || !ins)
		return Result;

	numsymbols++;
	*s_ptr = (symbol *)Malloc(sizeof(symbol));
	(*s_ptr)->next_sym = hash_table[hash];
	hash_table[hash] = *s_ptr;

	(*s_ptr)->sdef = false;
	(*s_ptr)->sused = true;
	(*s_ptr)->sflagged = false;
	memcpy((*s_ptr)->sname, s, sizeof(sym_name));
	memcpy((*s_ptr)->mname, mod_id, sizeof(sym_name));
	(*s_ptr)->comsize = -1;
	(*s_ptr)->reflist = NULL;
	(*s_ptr)->reslist = NULL;
	return Result;
}  /* find_insert */



/*-------------------------------------------------------------------------*/
Static Void disp_xref()
{
	/*--- dump cross references to file from list held per symbol */
	long i, refcount;
	symbol *s_ptr;
	FILE *ref_file;
	reference *r;
	Char STR1[86];

/* p2c: ql.pas, line 494: Note: Ignoring option string in open [183] */
	sprintf(STR1, "%s.xrf", cmdroot);
	ref_file = fopen(P_trimname(STR1, 86), "r+");
	if (ref_file == NULL) {
		sprintf(STR1, "%s.xrf", cmdroot);
		ref_file = fopen(P_trimname(STR1, 86), "w+");
	}
	if (ref_file == NULL) {
		sprintf(STR1, "%s.xrf", cmdroot);
		_EscIO2(FileNotFound, P_trimname(STR1, 86));
	}
/* p2c: ql.pas, line 494: Warning: Expected a ')', found a ':=' [227] */
/* p2c: ql.pas, line 495: Note: REWRITE does not specify a name [181] */
	rewind(ref_file);

	for (i = 0; i <= max_hash; i++) {
		if (hash_table[i] != NULL) {
			if (debug)
	fprintf(ref_file, "%12ld:\n", i);
			s_ptr = hash_table[i];
			do {
	refcount = 0;
	fprintf(ref_file, "%.10s %6.6lx %.10s",
		s_ptr->sname, s_ptr->saddr + baseaddr[s_ptr->ssect + 1],
		s_ptr->mname);
	if (s_ptr->comsize != -1)
		fprintf(ref_file, " C:%4.4lx\n", s_ptr->comsize);
	else {
		if (!s_ptr->sdef)
			fprintf(ref_file, " Undef!\n");
		else
			putc('\n', ref_file);
	}

	if (s_ptr->reflist != NULL) {
		r = s_ptr->reflist;
		do {
			fprintf(ref_file, "%.10s    ", r->rname);
			refcount++;
			if (refcount % 6 == 0)
				putc('\n', ref_file);
			r = r->next_ref;
		} while (r != NULL);
		if (refcount % 6 != 0)
			putc('\n', ref_file);
	} else
		fprintf(ref_file, "Not referenced ANYWHERE!\n");

	fprintf(ref_file,
		"--------------------------------------------------------------------------\n");
	s_ptr = s_ptr->next_sym;
			} while (s_ptr != NULL);
		}
	}

	fclose(ref_file);
}  /* disp_xref */


/*-------------------------------------------------------------------------*/
Static Void add_res(s, addr, offset)
symbol *s;
long addr, offset;
{
	/*--- add a resolved symbol reference to list held per symbol */
	resolve *res_ptr;

	res_ptr = (resolve *)Malloc(sizeof(resolve));
	res_ptr->next_res = s->reslist;
	res_ptr->res_addr = addr;
	res_ptr->res_offset = offset;
	s->reslist = res_ptr;
}  /* add_res */



/*-------------------------------------------------------------------------*/
Static Void read_history(f)
Char *f;
{
	/*--- disp history and read_history must have match in file format */
	symbol *spt;
	resolve *r;

	filed_history_t history_rec;
	FILE *res_file;
	long FORLIM;
	history_t *WITH;

/* p2c: ql.pas, line 564: Note: Ignoring option string in open [183] */
	res_file = fopen(P_trimname(f, 81), "r+b");
	if (res_file == NULL)
		res_file = fopen(P_trimname(f, 81), "w+");
	if (res_file == NULL)
		_EscIO2(FileNotFound, P_trimname(f, 81));
/* p2c: ql.pas, line 564: Warning: Expected a ')', found a ':=' [227] */
	rewind(res_file);

	while (!P_eof(res_file)) {
		fread(&history_rec, sizeof(filed_history_t), 1, res_file);

		FORLIM = history_rec.U1.num_recs;
		for (i = 1; i <= FORLIM; i++) {
			WITH = &history_rec.U1.recs[i-1];
			switch (WITH->history_type) {

			case $history_obj:
	basepos = WITH->UU.obj_addr;
	break;

			case $history_symbol:
	find_insert(WITH->UU.U1.symbol_name, &spt, true);
	spt->shist = true;
	memcpy(spt->mname, "patched!!!", sizeof(sym_name));
	spt->ssect = -1;
	spt->sdef = true;
	spt->saddr = WITH->UU.U1.symbol_addr;
	break;

			case $history_ref:
	r = (resolve *)Malloc(sizeof(resolve));
	r->next_res = spt->reslist;
	r->res_addr = WITH->UU.U2.ref_addr;
	r->res_offset = WITH->UU.U2.ref_offset;
	spt->reslist = r;
	break;
			}/*WITH CASE*/
		}

	}

	fclose(res_file);
}  /* read_history */


/* Local variables for disp_history: */
struct LOC_disp_history {
	filed_history_t filed_history_rec;
	FILE *res_file;
} ;

Local Void send_to_file(rec, LINK)
history_t rec;
struct LOC_disp_history *LINK;
{
	LINK->filed_history_rec.U1.num_recs++;
	LINK->filed_history_rec.U1.recs[LINK->filed_history_rec.U1.num_recs - 1] = rec;
	if (LINK->filed_history_rec.U1.num_recs == recs_per_file_rec$) {
		fwrite(&LINK->filed_history_rec, sizeof(filed_history_t), 1,
		 LINK->res_file);
		LINK->filed_history_rec.U1.num_recs = 0;
	}
}



/*-------------------------------------------------------------------------*/
Static Void disp_history()
{
	/*--- disp history and read_history must have match in file format */
	struct LOC_disp_history V;
	long i;
	symbol *s_ptr;
	resolve *r;

	history_t history_rec;
	Char STR1[86];

/* p2c: ql.pas, line 627: Note: Ignoring option string in open [183] */
	V.res_file = NULL;
	sprintf(STR1, "%s.his", cmdroot);
	V.res_file = fopen(P_trimname(STR1, 86), "r+b");
	if (V.res_file == NULL) {
		sprintf(STR1, "%s.his", cmdroot);
		V.res_file = fopen(P_trimname(STR1, 86), "w+");
	}
	if (V.res_file == NULL) {
		sprintf(STR1, "%s.his", cmdroot);
		_EscIO2(FileNotFound, P_trimname(STR1, 86));
	}
/* p2c: ql.pas, line 627: Warning: Expected a ')', found a ':=' [227] */
/* p2c: ql.pas, line 628: Note: REWRITE does not specify a name [181] */
	rewind(V.res_file);
	V.filed_history_rec.U1.num_recs = 0;

	history_rec.history_type = $history_obj;
	history_rec.UU.obj_addr = basepos;

	/*Write (res_file, history_rec);*/
	send_to_file(history_rec, &V);

	for (i = 0; i <= max_hash; i++) {
		if (hash_table[i] != NULL) {
			s_ptr = hash_table[i];

			do {
	if (s_ptr->comsize == -1) {   /* dont dump commons in history */
		history_rec.history_type = $history_symbol;
		history_rec.UU.U1.symbol_addr = s_ptr->saddr + baseaddr[s_ptr->ssect + 1];
		memcpy(history_rec.UU.U1.symbol_name, s_ptr->sname,
		 sizeof(sym_name));
		/*history_rec.mod_name := s_ptr^.mname;*/
		/*Write (res_file, history_rec);*/
		send_to_file(history_rec, &V);

		if (s_ptr->reslist != NULL) {
			r = s_ptr->reslist;
			do {
				history_rec.history_type = $history_ref;
				history_rec.UU.U2.ref_addr = r->res_addr;
				history_rec.UU.U2.ref_offset = r->res_offset;
				/*Write (res_file, history_rec);*/
				send_to_file(history_rec, &V);
				r = r->next_res;
			} while (r != NULL);
		}

	}

	s_ptr = s_ptr->next_sym;
			} while (s_ptr != NULL);

		}
	}

	/* --- Send the last one. */
	if (V.filed_history_rec.U1.num_recs > 0)
		fwrite(&V.filed_history_rec, sizeof(filed_history_t), 1, V.res_file);
	if (V.res_file != NULL)
		fclose(V.res_file);
	V.res_file = NULL;
}  /* disp_history */



/*-------------------------------------------------------------------------*/
Static Void disp_hash()
{
	long i;
	symbol *s_ptr;
	FILE *map_file;
	Char STR1[86];

/* p2c: ql.pas, line 688: Note: Ignoring option string in open [183] */
	sprintf(STR1, "%s.map", cmdroot);
	map_file = fopen(P_trimname(STR1, 86), "r+");
	if (map_file == NULL) {
		sprintf(STR1, "%s.map", cmdroot);
		map_file = fopen(P_trimname(STR1, 86), "w+");
	}
	if (map_file == NULL) {
		sprintf(STR1, "%s.map", cmdroot);
		_EscIO2(FileNotFound, P_trimname(STR1, 86));
	}
/* p2c: ql.pas, line 688: Warning: Expected a ')', found a ':=' [227] */
/* p2c: ql.pas, line 689: Note: REWRITE does not specify a name [181] */
	rewind(map_file);

	for (i = 0; i <= max_hash; i++) {
		if (hash_table[i] != NULL) {
			if (debug)
	fprintf(map_file, "%12ld:\n", i);
			s_ptr = hash_table[i];

			do {
	fprintf(map_file, "%.10s %6.6lx %.10s",
		s_ptr->sname, s_ptr->saddr + baseaddr[s_ptr->ssect + 1],
		s_ptr->mname);
	if (s_ptr->comsize != -1)
		fprintf(map_file, " C:%4.4lx\n", s_ptr->comsize);
	else {
		if (!s_ptr->sdef)
			fprintf(map_file, " Undef!\n");
		else
			putc('\n', map_file);
	}
	s_ptr = s_ptr->next_sym;
			} while (s_ptr != NULL);
		}
	}

	fclose(map_file);
}  /* disp_hash */


/* Local variables for gen_sym_file: */
struct LOC_gen_sym_file {
	FILE *sym_tab;
	block bl;
} ;


Local Void pbyte(b, LINK)
byte b;
struct LOC_gen_sym_file *LINK;
{
	LINK->bl[bpos] = b;
	bpos++;

	if (bpos > 255) {
		fwrite(LINK->bl, sizeof(block), 1, LINK->sym_tab);
		bpos = 0;
	}
}  /* pbyte */


Local Void outdata(s, LINK)
Char *s;
struct LOC_gen_sym_file *LINK;
{
	long i, FORLIM;

	pbyte(strlen(s), LINK);
	FORLIM = strlen(s);
	for (i = 0; i < FORLIM; i++)
		pbyte(s[i], LINK);
}  /* outdata */


Local Char *binint(Result, val, LINK)
Char *Result;
long val;
struct LOC_gen_sym_file *LINK;
{  /* bintval */
	string b;
	long i;

	b[4] = '\0';
	for (i = 3; i >= 0; i--) {
		b[i] = (Char)val;
		val = mvr(val);
	}

	return strcpy(Result, b);
}  /* bintval */


Local Void out_sym(s, LINK)
symbol *s;
struct LOC_gen_sym_file *LINK;
{
	Char STR2[46];
	string STR3;
	Char STR4[146];

	sprintf(STR2, "1%.10sVRLvvvvuuccccccccffffffffxxtttddd", s->mname);
	outdata(STR2, LINK);
	sprintf(STR4, "2P%.10s%s",
		s->sname, binint(STR3, s->saddr + baseaddr[s->ssect + 1], LINK));
	outdata(STR4, LINK);
}  /* out_sym */



/*-------------------------------------------------------------------------*/
Static Void gen_sym_file()
{
	struct LOC_gen_sym_file V;
	long i;
	symbol *s_ptr;
	Char STR1[86];
	string STR2;
	Char STR3[136];


	V.sym_tab = NULL;
	bpos = 0;

/* p2c: ql.pas, line 782: Note: Ignoring option string in open [183] */
	sprintf(STR1, "%s.sym", cmdroot);
	V.sym_tab = fopen(P_trimname(STR1, 86), "r+b");
	if (V.sym_tab == NULL) {
		sprintf(STR1, "%s.sym", cmdroot);
		V.sym_tab = fopen(P_trimname(STR1, 86), "w+");
	}
	if (V.sym_tab == NULL) {
		sprintf(STR1, "%s.sym", cmdroot);
		_EscIO2(FileNotFound, P_trimname(STR1, 86));
	}
/* p2c: ql.pas, line 782: Warning: Expected a ')', found a ':=' [227] */
/* p2c: ql.pas, line 783: Note: REWRITE does not specify a name [181] */
	rewind(V.sym_tab);

	for (i = 0; i <= max_hash; i++) {
		if (hash_table[i] != NULL) {
			s_ptr = hash_table[i];
			do {
	out_sym(s_ptr, &V);
	s_ptr = s_ptr->next_sym;
			} while (s_ptr != NULL);
		}
	}

	sprintf(STR3, "4\021%s", binint(STR2, 0L, &V));
	outdata(STR3, &V);   /*module end record*/
	if (bpos > 0) {
		for (i = bpos; i <= 255; i++)
			V.bl[i] = 0;
		fwrite(V.bl, sizeof(block), 1, V.sym_tab);
	}

	if (V.sym_tab != NULL)
		fclose(V.sym_tab);
	V.sym_tab = NULL;
}  /* gen_sym_file */




/*-------------------------------------------------------------------------*/
Static Void open_log_file()
{
	Char STR1[86];

/* p2c: ql.pas, line 812: Note: Ignoring option string in open [183] */
	if (log_file != NULL) {
		sprintf(STR1, "%s.log", cmdroot);
		log_file = freopen(P_trimname(STR1, 86), "r+", log_file);
	} else {
		sprintf(STR1, "%s.log", cmdroot);
		log_file = fopen(P_trimname(STR1, 86), "r+");
	}
	if (log_file == NULL) {
		sprintf(STR1, "%s.log", cmdroot);
		log_file = fopen(P_trimname(STR1, 86), "w+");
	}
	if (log_file == NULL) {
		sprintf(STR1, "%s.log", cmdroot);
		_EscIO2(FileNotFound, P_trimname(STR1, 86));
	}
/* p2c: ql.pas, line 812: Warning: Expected a ')', found a ':=' [227] */
/* p2c: ql.pas, line 813: Note: REWRITE does not specify a name [181] */
	rewind(log_file);
	fprintf(log_file, "Linking from %s\n", full_filename);
}  /*open_log_file*/



/*-------------------------------------------------------------------------*/
Static Void close_log_file()
{
	long total, i;
	Char datestring[11];


	if (english) {
		putc('\n', log_file);
		total = 0;
		if (sectbase[9] != 0) {
			fprintf(log_file, "Size of P                 (8)  = %8ld bytes\n",
				sectbase[9]);
			total += sectbase[9];
		}
		if (sectbase[10] != 0) {
			fprintf(log_file, "Size of HELP              (9)  = %8ld bytes\n",
				sectbase[10]);
			total += sectbase[10];
		}
		if (sectbase[13] != 0) {
			fprintf(log_file, "Size of error messages   (12)  = %8ld bytes\n",
				sectbase[13]);
			total += sectbase[13];
		}
		if (sectbase[14] != 0) {
			fprintf(log_file, "Size of code & constants (13)  = %8ld bytes\n",
				sectbase[14]);
			total += sectbase[14];
		}
		if (sectbase[15] != 0) {
			fprintf(log_file, "Size of diagnostic block (14)  = %8ld bytes\n",
				sectbase[15]);
			total += sectbase[15];
		}
		if (sectbase[16] != 0) {
			fprintf(log_file, "Size of global variables (15)  = %8ld bytes\n",
				sectbase[16]);
			total += sectbase[16];
		}
		fprintf(log_file, "Total size                     = %8ld bytes\n", total);
	}

	else {
		for (i = 1; i <= 16; i++) {
			if (sectbase[i] != 0) {
	fprintf(log_file, "Section %2ld Start %6.6lx Length %6.6lx",
		i - 1, baseaddr[i], sectbase[i]);
	fprintf(log_file, " Finish  %6.6lx\n", baseaddr[i] + sectbase[i]);
			}
		}
	}

	VAXdate(datestring);
	fprintf(log_file, "\nLink started %.11s %.11s\n",
		start_link.time_of_day, datestring);
	fprintf(log_file, "Link ended   %.11s %.11s\n",
		end_link.time_of_day, datestring);
	fprintf(log_file, "total CPU time:- %7.2f\n",
		(end_link.mill_time - start_link.mill_time) / 1000.0);

	if (log_file != NULL)
		fclose(log_file);
	log_file = NULL;
}  /* close_log_file */




/*-------------------------------------------------------------------------*/
Static Void alloc_com()
{
	symbol *s_ptr;

	s_ptr = com_head;
	while (s_ptr != NULL) {
		s_ptr->saddr = sectbase[s_ptr->ssect + 1];
		sectbase[s_ptr->ssect + 1] += s_ptr->comsize;

		if (sectbase[s_ptr->ssect + 1] & 1)
			sectbase[s_ptr->ssect + 1]++;

		s_ptr = s_ptr->next_com;
	}

}  /* alloc_com */


Local boolean clash(i, j)
long i, j;
{
	return (sectbase[i+1] + baseaddr[i+1] > baseaddr[j+1] &&
		sectbase[j+1] + baseaddr[j+1] > baseaddr[i+1]);
}  /* clash */


/*-------------------------------------------------------------------------*/
Static Void overlap_check()
{  /* overlap check */
	long i, j;


	for (i = 0; i <= 14; i++) {
		for (j = i + 1; j <= 15; j++) {
			if (clash(i, j)) {
	return_code = ql_sctovrlap;
	printf("Sections %2ld and %2ld overlap!\n", i, j);
			}
		}
	}

}  /* overlap check */



/*-------------------------------------------------------------------------*/
Static Void check_undef()
{
	long i;
	symbol *s_ptr;

	return_code = ql_undefsym;

	printf("Undefined symbols:-\n");
	if (log_)
		fprintf(log_file, "Undefined symbols:-\n");
	for (i = 0; i <= max_hash; i++) {
		if (hash_table[i] != NULL) {
			s_ptr = hash_table[i];

			do {
	if (!s_ptr->sdef) {
		printf("'%.10s' first referenced in module '%.10s'\n",
		 s_ptr->sname, s_ptr->mname);
		if (log_)
			fprintf(log_file, "'%.10s' first referenced in module '%.10s'\n",
				s_ptr->sname, s_ptr->mname);
		s_ptr->ssect = -1;
		s_ptr->saddr = 0xfaffL;
	}

	s_ptr = s_ptr->next_sym;
			} while (s_ptr != NULL);
		}
	}

}  /* check undef */



/*-------------------------------------------------------------------------*/
Static byte gbyte()
{
	byte Result;

	Result = o[bpos-1];
	bpos++;
	return Result;
}  /* gbyte */


/*-------------------------------------------------------------------------*/
Static Char *getnam(Result)
Char *Result;
{
	long i;
	sym_name sn;

	for (i = 0; i <= 9; i++)
		sn[i] = gbyte();
	return memcpy(Result, sn, sizeof(sym_name));
}  /* getnam */


/*-------------------------------------------------------------------------*/
Static long getint()
{
	long i = 0;
	long j;

	for (j = 1; j <= 4; j++)
		i = mvl(i) + gbyte();
	return i;
}  /* get_int */


/*-------------------------------------------------------------------------*/
Static Void doubledef(s)
symbol *s;
{
	return_code = ql_dbldefsym;

	showmod();
	printf("Doubly defined label  '%.10s'\n", s->sname);
	printf("Previously defined in module '%.10s'\n", s->mname);
	if (log_) {
		fprintf(log_file, "Doubly defined label  '%.10s'\n", s->sname);
		fprintf(log_file, "Previously defined in module '%.10s'\n", s->mname);
	}

	s->sflagged = true;
}  /* doubledef */



/*-------------------------------------------------------------------------*/
Static Void binbyte(b)
byte b;
{
	oblock[opos] = b;
	opos++;
	if (opos <= 511)
		return;

	if (out)
		fwrite(oblock, sizeof(bblock), 1, bfile);
	if (download)
		fwrite(oblock, sizeof(bblock), 1, btgtfile);
	opos = 0;
}  /* binbyte */


/*-------------------------------------------------------------------------*/
Static Void sendbin(b)
byte b;
{
	if (b == esc && escape == true)
		binbyte(b);
	binbyte(b);
}  /* sendbin */


/*-------------------------------------------------------------------------*/
Static Void sendsfnewline()
{
	if (download)
		putc('\n', tgtfile);
	if (out)
		putc('\n', sfile);
}  /* senddfnewline */


/*-------------------------------------------------------------------------*/
Static Void sendsform(s)
Char *s;
{
	if (out)
		fputs(s, sfile);
	if (download)
		fputs(s, tgtfile);
}  /* sendsform */


/*-------------------------------------------------------------------------*/
Static Void wbyte(b)
byte b;
{
	string s;

	if (bin) {
		sendbin(b);
		checksum = ixor(checksum, (long)b);
		return;
	}

	sprintf(s, "%2.2x", b);
	sendsform(s);
	checksum += b;

}  /* wbyte */


/*-------------------------------------------------------------------------*/
Static Void endpacket()
{
	string s;

	if (bin) {
		sendbin((int)checksum);
		return;
	}
	sprintf(s, "%2.2lx", 255 - (checksum & 255));
	sendsform(s);
	sendsfnewline();
}  /* endpacket */



/*-------------------------------------------------------------------------*/
Static Void procid()
{
	/*same on both passes*/
	union {
		objrec ob;
		idrec id;
	} coerce;
	long sect;

	topesd = 17;
	esdarr[0] = 0;   /*unused esd value*/

	strcpy(coerce.ob, o);
	memcpy(mod_id, coerce.id.modname, sizeof(sym_name));

	/*--- we need to init these esd values, in case of zero length sections*/
	if (pass != 2) {
		if (chat || debug) {
			printf("Pass 1 of %.10s:\n", mod_id);

		}
		return;
	}

	if (chat || debug)
		printf("Pass 2 of %.10s:\n", mod_id);
	if (modules) {
		fprintf(mod_file, "%.10s:", mod_id);
		if (files) {
			if (strlen(file_id) < 50)
	fprintf(mod_file, "%50s:", "");
			else
	fprintf(mod_file, "%s:", file_id);
		}
	}

	for (sect = 1; sect <= 16; sect++) {
		esdarr[sect] = baseaddr[sect] + sbase[sect];
		esdsymarr[topesd] = NULL;
		outaddr[sect] = esdarr[sect];
	}
}  /* procid */


Local Void add_ref(s, mod_name)
symbol *s;
Char *mod_name;
{
	reference *r_ptr;

	r_ptr = (reference *)Malloc(sizeof(reference));
	r_ptr->next_ref = s->reflist;
	memcpy(r_ptr->rname, mod_name, sizeof(sym_name));
	s->reflist = r_ptr;
}  /* add_ref */


Local Void doesd()
{
	byte ty;
	long sect;
	sym_name s;
	boolean b;
	long i;
	symbol *spt;

	ty = gbyte();
	sect = ty & 15;
	ty /= 16;

	switch (ty) {

	case 0:
		bpos += 8;
		break;

	case 1:  /* common area symbol */
		getnam(s);
		i = getint();
		b = find_insert(s, &spt, true);

		if (debug)
			printf("Common data - section %2ld %.10s length = %6.6lx\n", sect, s, i);
		if (xref)
			add_ref(spt, mod_id);
		if (!spt->sdef) {
			if (b)
	undefsym--;
			memcpy(spt->mname, mod_id, sizeof(sym_name));
			spt->ssect = sect;
			spt->sdef = true;
			spt->comsize = i;
			if (prev_com != NULL)
	prev_com->next_com = spt;
			else
	com_head = spt;
			spt->next_com = NULL;
			prev_com = spt;
		}

		else {
			if (i != spt->comsize) {
	if (!spt->sflagged && spt->comsize == -1) {
		return_code = ql_dbldefsym;
		showmod();
		printf("Label '%.10s' is used double defined - \n", s);
		printf("as a common in module '%.10s'\n", mod_id);
		printf(" and as an XDEF in module '%.10s'\n", spt->mname);
		spt->sflagged = true;
	}

	else if (check && !spt->sflagged) {
		return_code = ql_sizeclash;
		showmod();
		printf("Common area size clash - common '%.10s'\n", s);
		printf("size in this module is %6.6lx bytes\n", i);
		printf("size in '%.10s' is %6.6lx bytes\n",
		 spt->mname, spt->comsize);
		spt->sflagged = true;
	}

	if (i > spt->comsize && spt->comsize != -1) {
		memcpy(spt->mname, mod_id, sizeof(sym_name));
		spt->comsize = i;
	}
			}
		}
		break;

	case 2:
	case 3:  /* section definition and allocation */
		i = getint();
		if (debug)
			printf("Section - %2ld  length = %6.6lx\n", sect, i);
		sectbase[sect+1] += i;
		if (sectbase[sect+1] & 1)
			sectbase[sect+1]++;
		break;

	case 4:
	case 5:  /* symbol defintion */
		if (ty == 5)
			sect = -1;
		getnam(s);
		b = find_insert(s, &spt, true);

		/*--- this isnt right yet, should fix it */
		if (spt->sdef && !spt->sflagged) {
			if (spt->shist) {   /* previously defined by history file */
	if (chat)
		printf("redefining %.10s\n", s);
			} else
	doubledef(spt);
		}

		else {
			if (b) {
	if (spt->shist) {   /* previously defined by history file */
		if (chat)
			printf("redefining %.10s\n", s);
	} else
		undefsym--;
			}
		}

		memcpy(spt->mname, mod_id, sizeof(sym_name));
		spt->ssect = sect;
		spt->sdef = true;
		spt->saddr = getint() + sectbase[sect+1];
		break;

	case 6:
	case 7:  /* symbol reference */
		if (ty == 6) {
			showmod();
			printf("xref %12ld\n", sect);
		}

		getnam(s);
		b = find_insert(s, &spt, true);
		if (xref)
			add_ref(spt, mod_id);
		if (!b)
			undefsym++;
		break;

	case 8:
	case 9:
		showmod();
		printf("cl address\n");
		bpos += 5;
		break;

	case 10:
		showmod();
		printf("cl addr common\n");
		bpos += 15;
		break;
	}

}  /* doesd */

Local Void procesd()
{
	bpos = 2;
	while (bpos < strlen(o))
		doesd();
}  /* procesd */


Local Void proctxt()
{
}


Local Void proceom()
{
}


Local Char *gnam(Result)
Char *Result;
{
	sym_name s;
	long i = 1;

	memcpy(s, "          ", sizeof(sym_name));
	do {
		s[i-1] = gbyte();
		i++;
	} while (i <= 10 && bpos <= strlen(o));

	return memcpy(Result, s, sizeof(sym_name));
}



/*-------------------------------------------------------------------------*/
Static Void processrec()
{
	/* first pass object record processor */
	switch (o[0]) {

	case '1':
		procid();
		break;

	case '2':
		procesd();
		break;

	case '3':
		proctxt();
		break;

	case '4':
		proceom();
		break;
	}

}  /* processrec */


/* Local variables for sformat: */
struct LOC_sformat {
	long pos, len, cstart;
} ;


Local Void startpacket(LINK)
struct LOC_sformat *LINK;
{
	string pktstart;
	long plen;

	LINK->cstart = codestart + LINK->pos * 2;
	plen = LINK->len * 2 + 4;   /*this happens to be right for both*/

	if (bin) {
		binbyte(esc);
		binbyte(0);
		wbyte(1);
		wbyte((int)mvr(plen));
		wbyte((int)(plen & 255));
		wbyte((int)mvr(mvr(mvr(LINK->cstart))));
		wbyte((int)mvr(mvr(LINK->cstart)));
		wbyte((int)mvr(LINK->cstart));
		wbyte((int)(LINK->cstart & 255));
		return;
	}

	strcpy(pktstart, "S2");
	sendsform(pktstart);
	wbyte((int)plen);
	wbyte((int)mvr(mvr(LINK->cstart)));
	wbyte((int)mvr(LINK->cstart));
	wbyte((int)(LINK->cstart & 255));
}  /* start packet */


Local Void sformat(pos_, len_)
long pos_, len_;
{  /* startformat */
	struct LOC_sformat V;
	long b, i, FORLIM;


	V.pos = pos_;
	V.len = len_;
	checksum = 0;
	startpacket(&V);
	if (bin) {
		FORLIM = V.len;
		for (i = 0; i < FORLIM; i++) {
			b = (0xffffL & ((unsigned long)codearr[i + V.pos])) / 256;
			if (b == esc && escape == true) {
	oblock[opos] = b;
	opos++;
	if (opos > 511) {
		if (out)
			fwrite(oblock, sizeof(bblock), 1, bfile);
		if (download)
			fwrite(oblock, sizeof(bblock), 1, btgtfile);
		opos = 0;
	}
			}

			oblock[opos] = b;
			opos++;
			if (opos > 511) {
	if (out)
		fwrite(oblock, sizeof(bblock), 1, bfile);
	if (download)
		fwrite(oblock, sizeof(bblock), 1, btgtfile);
	opos = 0;
			}

			checksum = ((unsigned long)b) ^ ((unsigned long)checksum);

			b = codearr[i + V.pos] & 255;
			if (b == esc && escape == true) {
	oblock[opos] = b;
	opos++;
	if (opos > 511) {
		if (out)
			fwrite(oblock, sizeof(bblock), 1, bfile);
		if (download)
			fwrite(oblock, sizeof(bblock), 1, btgtfile);
		opos = 0;
	}
			}

			oblock[opos] = b;
			opos++;
			if (opos > 511) {
	if (out)
		fwrite(oblock, sizeof(bblock), 1, bfile);
	if (download)
		fwrite(oblock, sizeof(bblock), 1, btgtfile);
	opos = 0;
			}
			checksum = ((unsigned long)b) ^ ((unsigned long)checksum);
		}

	} else {
		FORLIM = V.len;
		for (i = 0; i < FORLIM; i++) {
			wbyte((int)mvr(codearr[i + V.pos]));
			wbyte((int)(codearr[i + V.pos] & 255));
		}
	}

	endpacket();
}  /* startformat */

Local Void output_data()
{
	long c;
	long pos = 0;


	c = codelen;
	while (c > smax) {
		sformat(pos, smax);
		pos += smax;
		c -= smax;
	}

	if (c > 0)
		sformat(pos, c);
}  /* output_data */

Local Void doesd_()
{
	byte sect, ty;
	sym_name s;
	boolean b;
	long patch, i;
	symbol *spt;
	resolve *r;

	ty = gbyte();
	sect = ty & 15;
	ty /= 16;

	switch (ty) {

	case 0:  /* no idea !! */
		bpos += 4;

		i = getint();
		esdarr[topesd] = i;
		esdsymarr[topesd] = NULL;

		outaddr[topesd] = esdarr[topesd];
		topesd++;
		break;

	case 1:  /* common area symbol */
		getnam(s);
		bpos += 4;   /*skip int*/

		b = find_insert(s, &spt, false);
		if (!b) {
			showmod();
			printf("internal consistency check failure - lost symbol\n");
		}

		esdarr[topesd] = spt->saddr + baseaddr[spt->ssect + 1];
		esdsymarr[topesd] = spt;

		outaddr[topesd] = esdarr[topesd];
		topesd++;
		break;

	case 2:
	case 3:  /* section symbol */
		i = getint();
		esdarr[sect+1] = baseaddr[sect+1] + sbase[sect+1];
		esdsymarr[topesd] = NULL;

		outaddr[sect+1] = esdarr[sect+1];
		if (modules)
			fprintf(mod_file, " %2d:%6.6lx+%6.6lx", sect, esdarr[sect+1], i);
		sbase[sect+1] += i;
		if (sbase[sect+1] & 1)
			sbase[sect+1]++;
		break;

	case 4:
	case 5:   /* skip past offset into module */
		if (use_history)
		{  /* symbol defintion, use to make patches on second pass */
			getnam(s);
			find_insert(s, &spt, false);   /* find it */

/* p2c: ql.pas: Note: Eliminated unused assignment statement [338] */
			if (spt->reslist != NULL) {
	r = spt->reslist;
	do {
		patch = spt->saddr + baseaddr[spt->ssect + 1] + r->res_offset;
		if (debug)
			printf("patching %6.6lx with %6.6lx + %6.6lx\n",
			 r->res_addr, patch - r->res_offset, r->res_offset);

		codestart = r->res_addr;
		codearr[0] = mvr(mvr(patch));
		codearr[1] = patch;
		codelen = 2;
		output_data();

		r = r->next_res;
	} while (r != NULL);
			}

			bpos += 4;   /* skip past offset into module */
		} else
			bpos += 14;
		break;

	case 6:
	case 7:  /* symbol reference */
		getnam(s);
		b = find_insert(s, &spt, false);
		if (!b) {
			showmod();
			printf("internal check failure - lost symbol\n");
		}

		esdarr[topesd] = spt->saddr + baseaddr[spt->ssect + 1];
		esdsymarr[topesd] = spt;

		outaddr[topesd] = esdarr[topesd];
		topesd++;
		break;

	case 8:
	case 9:
		bpos += 5;
		break;

	case 10:
		bpos += 15;
		break;
	}
}  /* pof PROCEDURE doesd */


Local Void procesd_()
{
	bpos = 2;
	while (bpos < strlen(o))
		doesd_();
}  /* procesd */

/* Local variables for proctxt_: */
struct LOC_proctxt_ {
	long bitmap, curresd;
} ;


Local Void adddata(w)
long w;
{
	duffer = (w == 0x4eba);
	codelen++;
	codearr[codelen-1] = w;
}  /* adddata */


Local Void procbyte(LINK)
struct LOC_proctxt_ *LINK;
{
	boolean longwd;
	long offset, add, i, numesds, offsize, thisesd;
	byte flag;


	if (LINK->bitmap >= 0) {
		adddata(mvl((long)o[bpos-1]) + o[bpos]);
		bpos += 2;
	}

	else {
		if (duffer) {
			showmod();
			printf("Warning - possible assembler foul-up\n");
		}

		flag = gbyte();
		numesds = flag / 32;
		offsize = flag & 7;
		/*    writeln('num esds, ',numesds,'  offset size ',offsize);*/
		longwd = (((flag / 8) & 1) == 1);

		add = 0;
		for (i = 1; i <= numesds; i++) {
			thisesd = gbyte();
			if (thisesd > topesd) {
	showmod();
	printf(" assembler foul-up.. trying to use an undefined ESD : %12ld\n",
				 thisesd);
			}

			if (i & 1)
	add += esdarr[thisesd];
			else
	add -= esdarr[thisesd];
		}

		offset = 0;
		for (i = 1; i <= offsize; i++)
			offset = mvl(offset) + gbyte();
		switch (offsize) {

		case 0:
		case 4:
			/* blank case */
			break;

		case 1:
			if (offset > 127)
	offset = ((unsigned long)offset) | 0xffffff00L;
			break;

		case 2:
			if (offset > 32767)
	offset = ((unsigned long)offset) | 0xffff0000L;
			break;
		}
		/*    writeln('OFFSET ',hex(add,6,6),'+',hex(offset,6,6),'=',hex(add+offset,6,6));
*/
		add += offset;
		if (numesds == 0) {
			if (offset & 1) {
	showmod();
	printf("odd fix-up offset - assembler error .%12ld%12ld\n",
				 offset, LINK->curresd);
	printf(">>%6.6lx\n", codestart);
	offset++;
			}

			if (codelen > 0)
	output_data();
			outaddr[LINK->curresd] += codelen * 2 + offset;
			codelen = 0;   /*FIXED PAP*/
			codestart = outaddr[LINK->curresd];
		}

		else {
			if (!longwd) {
	if (add > 32767 || add < -32768L) {
		showmod();
		printf("Long address generated into word location :%8.8lx\n", add);
	}
			}

			if (esdsymarr[thisesd] != NULL) {   /* only need named symbols */
	if (strncmp(mod_id, esdsymarr[thisesd]->mname, sizeof(sym_name)))
	{   /* outside module */
		if (history)
		/*--- address to be resolved LONGWORD only at present*/
			add_res(esdsymarr[thisesd], codestart + codelen * 2, offset);
		if (debug)
			printf("sym %s %2ld %.10s %8.8lx = %9.8lx + %4.4lx;%lx at %8.8lx\n",
			 longwd ? " TRUE" : "FALSE", thisesd,
			 esdsymarr[thisesd]->sname, add, esdarr[thisesd], offset,
			 offsize, codestart + codelen * 2);
	}
			}

			/*--- generate resolved address */
			if (longwd)
	adddata(mvr(mvr(add)));
			adddata(add);
			/* numesd <> 0 */
		}
	}

	LINK->bitmap *= 2;
}  /* PROCDURE procbyte */


Local Void proctxt_()
{
	struct LOC_proctxt_ V;


	bpos = 2;
	V.bitmap = getint();

	codelen = 0;
	V.curresd = gbyte();
	codestart = outaddr[V.curresd];

	while (bpos < strlen(o))
		procbyte(&V);

	output_data();
	/*--- dont forget convert to bytes*/
	outaddr[V.curresd] += codelen * 2;
}  /* proctxt */


Local Void proceom_()
{
	if (modules)
		putc('\n', mod_file);
}  /* proceom */



/*-------------------------------------------------------------------------*/
Static Void procrec2()
{
	/* second pass object record processor */
	switch (o[0]) {

	case '1':
		procid();
		break;

	case '2':
		procesd_();
		break;

	case '3':
		proctxt_();
		break;

	case '4':
		proceom_();
		break;
	}
}  /* procrec2 */



/*-------------------------------------------------------------------------*/
Static Void openoutput()
{
	string STR2;
	Char STR3[86];
	Char STR4[84];

	opos = 0;
	inpacket = false;

	if (bin) {
		if (download) {
			if (btgtfile != NULL)
	btgtfile = freopen("sys$target", "r+b", btgtfile);
			else
	btgtfile = fopen("sys$target", "r+b");
			if (btgtfile == NULL)
	btgtfile = fopen("sys$target", "w+");
			if (btgtfile == NULL) {

	_EscIO2(FileNotFound, "sys$target");
			}
/* p2c: ql.pas, line 1775: Warning: Expected a ')', found a ':=' [227] */
/* p2c: ql.pas, line 1776:
 * Warning: Type mismatch in VAR parameter F [295] */
			printf("Downloading binary file %s\n", "sys$target");
/* p2c: ql.pas, line 1777: Note: REWRITE does not specify a name [181] */
			if (btgtfile != NULL)
	rewind(btgtfile);
			else
	btgtfile = tmpfile();
			if (btgtfile == NULL)
	_EscIO(FileNotFound);
		}
/* p2c: ql.pas, line 1775: Note: Ignoring option string in open [183] */

		if (!out)
			return;
/* p2c: ql.pas, line 1782: Note: Ignoring option string in open [183] */
		if (bfile != NULL) {
			sprintf(STR3, "%s.BIN", cmdroot);
			bfile = freopen(P_trimname(STR3, 86), "r+b", bfile);
		} else {
			sprintf(STR3, "%s.BIN", cmdroot);
			bfile = fopen(P_trimname(STR3, 86), "r+b");
		}
		if (bfile == NULL) {
			sprintf(STR3, "%s.BIN", cmdroot);
			bfile = fopen(P_trimname(STR3, 86), "w+");
		}
		if (bfile == NULL) {
			sprintf(STR3, "%s.BIN", cmdroot);
			_EscIO2(FileNotFound, P_trimname(STR3, 86));
		}
/* p2c: ql.pas, line 1782: Warning: Expected a ')', found a ':=' [227] */
		if (chat || debug || !quiet)
			printf("Making binary file %s\n", STR3);
/* p2c: ql.pas, line 1784:
 * Warning: Type mismatch in VAR parameter F [295] */
		if (log_)
			fprintf(log_file, "Making binary file %s\n", STR3);
/* p2c: ql.pas, line 1786:
 * Warning: Type mismatch in VAR parameter F [295] */
/* p2c: ql.pas, line 1787: Note: REWRITE does not specify a name [181] */
		if (bfile != NULL)
			rewind(bfile);
		else
			bfile = tmpfile();
		if (bfile == NULL)
			_EscIO(FileNotFound);
		return;
	}

	if (download) {
		if (tgtfile != NULL)
			tgtfile = freopen("sys$target", "r+", tgtfile);
		else
			tgtfile = fopen("sys$target", "r+");
		if (tgtfile == NULL)
			tgtfile = fopen("sys$target", "w+");
		if (tgtfile == NULL)
			_EscIO2(FileNotFound, "sys$target");
/* p2c: ql.pas, line 1795: Warning: Expected a ')', found a ':=' [227] */
/* p2c: ql.pas, line 1796:
 * Warning: Type mismatch in VAR parameter F [295] */
		printf("Downloading SR file %s\n", "sys$target");
/* p2c: ql.pas, line 1797: Note: REWRITE does not specify a name [181] */
		if (tgtfile != NULL)
			rewind(tgtfile);
		else
			tgtfile = tmpfile();
		if (tgtfile == NULL)
			_EscIO(FileNotFound);
	}
/* p2c: ql.pas, line 1795: Note: Ignoring option string in open [183] */

	if (!out)
		return;
/* p2c: ql.pas, line 1802: Note: Ignoring option string in open [183] */

	if (sfile != NULL) {
		sprintf(STR4, "%s.SR", cmdroot);
		sfile = freopen(P_trimname(STR4, 84), "r+", sfile);
	} else {
		sprintf(STR4, "%s.SR", cmdroot);
		sfile = fopen(P_trimname(STR4, 84), "r+");
	}
	if (sfile == NULL) {
		sprintf(STR4, "%s.SR", cmdroot);
		sfile = fopen(P_trimname(STR4, 84), "w+");
	}
	if (sfile == NULL) {
		sprintf(STR4, "%s.SR", cmdroot);
		_EscIO2(FileNotFound, P_trimname(STR4, 84));
	}
/* p2c: ql.pas, line 1802: Warning: Expected a ')', found a ':=' [227] */
/* p2c: ql.pas, line 1803:
 * Warning: Type mismatch in VAR parameter F [295] */
	printf("Making SR file %s\n", STR4);
/* p2c: ql.pas, line 1804: Note: REWRITE does not specify a name [181] */
	if (sfile != NULL)
		rewind(sfile);
	else
		sfile = tmpfile();
	if (sfile == NULL)
		_EscIO(FileNotFound);
}  /* openoutput */



/*-------------------------------------------------------------------------*/
Static Void sendstop()
{
	string endstr;
	long I;

	if (bin) {
		checksum = 0;
		binbyte(esc);
		binbyte(0);
		wbyte(2);
		wbyte(0);
		wbyte(4);
		for (I = 1; I <= 4; I++)
			wbyte(0);
		endpacket();
		for (I = 0; I <= 511; I++)
			binbyte(0);
		return;
	}

	strcpy(endstr, "S9030000FC");
	sendsform(endstr);
	sendsfnewline();

}  /* sendstop */



/*-------------------------------------------------------------------------*/
Static Void closeoutput()
{
	if (inpacket)
		endpacket();
	sendstop();

	if (bin) {
		if (download) {
			if (btgtfile != NULL)
	fclose(btgtfile);
			btgtfile = NULL;
		}
		if (!out)
			return;
		if (bfile != NULL)
			fclose(bfile);
		bfile = NULL;
		return;
	}
	if (download) {
		if (tgtfile != NULL)
			fclose(tgtfile);
		tgtfile = NULL;
	}
	if (!out)
		return;
	if (sfile != NULL)
		fclose(sfile);
	sfile = NULL;

}


/* Local variables for do_switch: */
struct LOC_do_switch {
	long sw_len;
	boolean noflag;
	long swpos;
} ;


Local Void setsw(b, LINK)
boolean *b;
struct LOC_do_switch *LINK;
{
	*b = !LINK->noflag;
}  /* setsw */

Local Char gnext(LINK)
struct LOC_do_switch *LINK;
{
	Char Result;

	Result = line_buff[LINK->swpos-1];
	if (LINK->swpos < LINK->sw_len)
		LINK->swpos++;
	return Result;
}  /* gnext */



/*-------------------------------------------------------------------------*/
Static Void do_switch(start, sw_len_)
long start, sw_len_;
{
	/*--- processes a switch setting directive*/
	struct LOC_do_switch V;
	Char sw[3];
	long endpos, sw_end, sect, i;
	Char c;
	long FORLIM;


	V.sw_len = sw_len_;
	FORLIM = V.sw_len;
	/*--- Convert to lower case only*/
	for (i = 0; i < FORLIM; i++) {
		if (isupper(line_buff[i]))
			line_buff[i] = _tolower(line_buff[i]);
	}

	V.swpos = start;
	do {
		V.noflag = false;
		sw[0] = gnext(&V);
		sw[1] = gnext(&V);
		sw[2] = '.';
		if (!strncmp(sw, "no.", 3)) {
			V.noflag = true;
			sw[0] = gnext(&V);
			sw[1] = gnext(&V);
		}

		sw[2] = gnext(&V);
		sw_end = V.swpos;

		do {
			c = gnext(&V);
		} while (!(c == '/' || null_(c) || V.swpos >= V.sw_len));
	/*skip to next switch*/

		if (sw[0] == 'o' && isdigit(sw[1])) {
			/*we're processing a section start address record*/
			if (sw[2] == ':')
	sect = sw[1] - '0';
			else {
	sect = (sw[1] - '0') * 10 + sw[2] - '0';
	sw_end++;
			}

			if (V.swpos != V.sw_len)
	endpos = V.swpos - 2;
			else
	endpos = V.swpos;

			if ((unsigned long)sect <= 15) {
	userbase[sect+1] = 0;
	for (i = sw_end - 1; i < endpos; i++)
		userbase[sect+1] = userbase[sect+1] * 16 + hexchr(line_buff[i]);
	if (debug)
		printf("%6.6lx %12ld\n", userbase[sect+1], sect);
			} else
	printf(" Illegal section number in switch '%.3s'\n", sw);
		}

		else {

			if (!strncmp(sw, "xre", 3) || !strncmp(sw, "xrf", 3))
			/*generate xref file*/
				setsw(&xref, &V);
			else if (!strncmp(sw, "map", 3))   /*generate map file*/
	setsw(&map, &V);
			else if (!strncmp(sw, "sym", 3))   /*generate symbol file*/
	setsw(&symout, &V);
			else if (!strncmp(sw, "bin", 3))   /*binary output*/
	setsw(&bin, &V);
			else if (!strncmp(sw, "mod", 3))   /*module list*/
	setsw(&modules, &V);
			else if (!strncmp(sw, "deb", 3))   /*debug mode*/
	setsw(&debug, &V);
			else if (!strncmp(sw, "dld", 3) || !strncmp(sw, "dow", 3))
			/*download to target*/
				setsw(&download, &V);
			else if (!strncmp(sw, "out", 3))   /*generate any output at all!*/
	setsw(&out, &V);
			else if (!strncmp(sw, "cha", 3))   /*generate loads of output*/
	setsw(&chat, &V);
			else if (!strncmp(sw, "qui", 3))   /*generate minimum output*/
	setsw(&quiet, &V);
			else if (!strncmp(sw, "eng", 3))   /*say understandable things*/
	setsw(&english, &V);
			else if (!strncmp(sw, "log", 3)) {   /*put sizes etc in .log file*/
	setsw(&log_, &V);
	open_log_file();
			} else if (!strncmp(sw, "fil", 3))
			/*generate put filenames in mod file*/
				setsw(&files, &V);
			else if (!strncmp(sw, "his", 3))   /*generate history file*/
	setsw(&history, &V);
			else if (!strncmp(sw, "bel", 3)) {
	setsw(&bell, &V);   /*generate bells at end of link*/
	if (V.noflag)
		printf("What do you want, a prize or something??\n");
			} else if (!strncmp(sw, "che", 3))   /*check all possible grubbies*/
	setsw(&check, &V);
			else if (!strncmp(sw, "esc", 3))
			/*replace all 1B's in code with 1B1B*/
				setsw(&escape, &V);
			else
	printf("Unknown switch :'%.3s'\n", sw);
		}
	} while (!(V.swpos >= V.sw_len || null_(c)));

}  /* do_switch */


/*-------------------------------------------------------------------------*/
Static Void switchprocess(s)
Char *s;
{
	long i = 1;
	long j, l;
	boolean slashfound = false;
	Char STR1[256];

	l = strlen(s);

	while (i < l && !slashfound) {
		if (s[i-1] == '/')
			slashfound = true;
		else
			i++;
	}

	if (!slashfound)
		return;

	for (j = i; j < l; j++)   /*pick up everything after the slash */
		line_buff[j - i] = s[j];

	do_switch(1L, l - i);
	if (i == 1)
		*s = '\0';
	else
		sprintf(s, "%.*s", (int)(i - 1), strcpy(STR1, s));
}  /* switchprocess */



/*-------------------------------------------------------------------------*/
Static Char *getfile(Result, terminator)
Char *Result;
Char *terminator;
{
	filename f;
	Char c;
	string s;
	text_rec_t *tempfile;
	Char *TEMP;
	Char STR1[134];
	string STR3;

	*f = '\0';
	do {
		/* --- Get the next char that is part of a filename. */
		do {
			c = getc(cmdfile->f);

			if (c == '\n')
	c = ' ';
			/* --- If it's at the start of a line, handle switches and comments. */
			if (newline) {
	newline = false;

	/* --- Read sequence of comment/control lines. */
	while ((c == '!' || c == '/' || c == '@') && !P_eof(cmdfile->f))
	{   /*its a comment/control line*/
		fgets(s, max_len + 1, cmdfile->f);
		TEMP = strchr(s, '\n');
		if (TEMP != NULL)
			*TEMP = 0;

		if (c == '@') {
			while (!(s[strlen(s) - 1] == '_' || s[strlen(s) - 1] == '-' ||
				 isalnum(s[strlen(s) - 1])))
				s[strlen(s) - 1] = '\0';

			printf("File read is %s\n", s);

			tempfile = (text_rec_t *)Malloc(sizeof(text_rec_t));
			tempfile->f = NULL;
			tempfile->next_text = cmdfile;
			cmdfile = tempfile;
/* p2c: ql.pas, line 2036: Note: Ignoring option string in open [183] */
			if (cmdfile->f != NULL)
				cmdfile->f = freopen(P_trimname(s, max_len + 1), "r+",
					 cmdfile->f);
			else
				cmdfile->f = fopen(P_trimname(s, max_len + 1), "r+");
			if (cmdfile->f == NULL)
				cmdfile->f = fopen(P_trimname(s, max_len + 1), "w+");
			if (cmdfile->f == NULL)
				_EscIO2(FileNotFound, P_trimname(s, max_len + 1));
/* p2c: ql.pas, line 2036: Warning: Expected a ')', found a ':=' [227] */

/* p2c: ql.pas, line 2038:
 * Warning: Type mismatch in VAR parameter F [295] */
			printf("File opened is %s\n", s);

			rewind(cmdfile->f);
		}
		/*writeln( 'Line read is ', s );*/

		else if (c == '/' && pass == 1) {

			sprintf(s, "/%s", strcpy(STR1, s));
			switchprocess(s);
		}

		if (P_eof(cmdfile->f))
			break;
		c = getc(cmdfile->f);
		if (c == '\n')
			c = ' ';
	}

	if (P_eof(cmdfile->f)) {
		if (cmdfile->next_text != NULL) {
			if (cmdfile->f != NULL)
				fclose(cmdfile->f);
			cmdfile->f = NULL;
			cmdfile = cmdfile->next_text;
		}
	}

			}  /*IF newline*/

			/* --- If we're at the end of the line, absorb empty lines. */
			if (P_eoln(cmdfile->f)) {
	fscanf(cmdfile->f, "%*[^\n]");
	getc(cmdfile->f);
	while (P_eoln(cmdfile->f) && !P_eof(cmdfile->f)) {
		fscanf(cmdfile->f, "%*[^\n]");
		getc(cmdfile->f);
	}
	newline = true;
			}
		} while (null_(c) && !P_eof(cmdfile->f));
		/* --- Read the next char. */

		if (P_eof(cmdfile->f)) {
			if (cmdfile->next_text != NULL) {
	if (cmdfile->f != NULL)
		fclose(cmdfile->f);
	cmdfile->f = NULL;
	cmdfile = cmdfile->next_text;
			}
		}

		if (c != '=' && c != ',' && c != '!' && !null_(c)) {
			strcat(f, " ");
			f[strlen(f) - 1] = c;
		}
	} while (!(c == ',' || c == '=' || P_eof(cmdfile->f)));

	if (P_eof(cmdfile->f)) {
		if (cmdfile->next_text != NULL) {
			if (cmdfile->f != NULL)
	fclose(cmdfile->f);
			cmdfile->f = NULL;
			cmdfile = cmdfile->next_text;
		}
	}

	strcpy(Result, f);
	*terminator = c;
	/*writeln( 'getfile returning <', f, '>, terminator <', c, '>' );*/
	return Result;
}  /* getfile */



/*-------------------------------------------------------------------------*/
Static Char *getext(Result, f, dext)
Char *Result, *f, *dext;
{
	long i;

	i = strlen(f);
	/*search backwards, to see if first non-alpha char is a '.' (i.e. extension)*/

	while (i > 1 && alphanum(f[i-1]))
		i--;

	if (f[i-1] == '.') {
		sprintf(Result, "%.*s", (int)(strlen(f) - i + 1), f + i - 1);
		return Result;
	}
	strcpy(Result, dext);
	strcat(f, dext);

	return Result;
}  /* getext */


/* Local variables for current_time: */
struct LOC_current_time {
	milestone ms;
} ;

Local long get_num(startch, LINK)
long startch;
struct LOC_current_time *LINK;
{
	long temp1, temp2;

	temp1 = LINK->ms.time_of_day[startch-1] - '0';
	temp2 = LINK->ms.time_of_day[startch] - '0';
	return (temp1 * 10 + temp2);
}



/*-------------------------------------------------------------------------*/
Static milestone current_time()
{
	struct LOC_current_time V;
	long temp;

	V.ms.mill_time = 0; //clock;
/* p2c: ql.pas, line 2137: Warning: Symbol 'CLOCK' is not defined [221] */
	VAXtime(V.ms.time_of_day);

	/* ms.time_of_day is hh:mm:ss.cc */
	/*                   12 45 78 AB */
	V.ms.int_time = 0;
	temp = get_num(1L, &V);   /*hh*/
	V.ms.int_time = temp;
	temp = get_num(4L, &V);   /*mm*/
	V.ms.int_time = V.ms.int_time * 60 + temp;
	temp = get_num(7L, &V);   /*ss*/
	V.ms.int_time = V.ms.int_time * 60 + temp;
	temp = get_num(10L, &V);   /*cc*/
	V.ms.int_time = V.ms.int_time * 100 + temp;

	return V.ms;
}  /* current_time */


/*-------------------------------------------------------------------------*/
Static Void show_milestone(s, ms1, ms2)
Char *s;
milestone ms1, ms2;
{
	long temp, cc, ss, mm, hh;
	string time_str;
	long FORLIM;

	temp = ms1.int_time - ms2.int_time;
	cc = temp % 100;
	temp /= 100;
	ss = temp % 60;
	temp /= 60;
	mm = temp % 60;
	temp /= 60;
	hh = temp % 60;

	fputs(s, stdout);
	printf("%.11s %7.2f",
	 ms1.time_of_day, (ms1.mill_time - ms2.mill_time) / 1000.0);
	sprintf(time_str, "%2ld:%2ld:%2ld.%2ld", hh, mm, ss, cc);
	FORLIM = strlen(time_str);
	for (temp = 0; temp < FORLIM; temp++) {
		if (time_str[temp] == ' ')
			time_str[temp] = '0';
	}
	printf(" %s", time_str);
	printf("  %7.2f%%\n", (ms1.mill_time - ms2.mill_time) * 100.0 /
			(end_link.mill_time - start_link.mill_time));
}


Static Void hash_usage()
{
	long depth, i;
	long hash_used = 0;
	long depth_used[11];
	symbol *s_ptr;

	for (depth = 0; depth <= 10; depth++)
		depth_used[depth] = 0;
	for (i = 0; i <= max_hash; i++) {
		if (hash_table[i] != NULL) {
			hash_used++;
			depth = 0;
			s_ptr = hash_table[i];
			do {
	depth++;
	s_ptr = s_ptr->next_sym;
			} while (s_ptr != NULL);
			if (depth > 10) {
	printf("Depth %ld too deep, rounding to 10.\n", depth);
	depth = 10;
			}
			depth_used[depth]++;
		}
	}
	if (!(chat || debug)) {
		return;
	}  /*chatting*/
	printf("%ld out of %ld hash table entries used.\n",
	 hash_used, (long)max_hash);
	for (depth = 0; depth <= 10; depth++) {
		if (depth_used[depth] != 0)
			printf("%ld @ %ld,", depth_used[depth], depth);
	}
	putchar('\n');
}



/*****************************************************************************/
main(argc, argv)
int argc;
Char *argv[];
{  /* main code of PROGRAM */
	Char STR1[86];
	Char STR2[256];
	Char *TEMP;

	PASCAL_MAIN(argc, argv);
	log_file = NULL;
	bfile = NULL;
	btgtfile = NULL;
	tobjfile = NULL;
	sfile = NULL;
	tgtfile = NULL;
	mod_file = NULL;
	objfile = NULL;
	symfile = NULL;
	ql_dbldefsym = 0x8008004L;
	ql_undefsym = 0x800800cL;
	ql_fatalerr = 0x8008014L;
	ql_sizeclash = 0x800801aL;
	ql_sctovrlap = 0;
	return_code = 0;

	/*--- set up default switch settings*/
	xref = false;
	symout = false;
	bin = false;
	check = false;
	bell = false;
	out = true;
	map = true;

	history = false;
	chat = false;

	use_history = false;

	modules = false;
	files = false;
	strcpy(file_id, "no file open.");

	quiet = false;
	english = false;
	log_ = false;
	newline = true;

	escape = true;

	/*--- set up pointers for common area list*/
	com_head = NULL;
	prev_com = NULL;

	strcpy(defext, ".ro");

	total = 0;
	undefsym = 0;
	init_hash();

	for (i = -1; i <= 15; i++) {
		sectbase[i+1] = 0;
		userbase[i+1] = -1;   /*set up user bases as not needed*/
	}

	sprintf(prompt, "quicklink %s", vermsg);
	if (chat || debug)
		puts(prompt);
	strcat(prompt, " >");
	fil_len = -1;
	pflag = 0;
//  result = lib$get_foreign(fil, prompt, &fil_len, &pflag);
	if (argc > 1) {
		strcpy(fil, argv[1]);
	} else {
		fil[0] = '\0';
	}

	switchprocess(fil);

	while (*fil == '\0') {
		fputs(prompt, stdout);
		fgets(fil, max_len + 1, stdin);
		TEMP = strchr(fil, '\n');
		if (TEMP != NULL)
			*TEMP = 0;
		switchprocess(fil);
	}

	strcpy(cmdname, fil);
	getext(ext, cmdname, ".cmd");
	strcpy(cmdroot, cmdname);
	cmdroot[strlen(cmdname) - strlen(ext)] = '\0';
/* p2c: ql.pas, line 2285:
 * Note: Modification of string length may translate incorrectly [146] */

	colonpos = strpos2(":", cmdroot, 1);
	dirend = strpos2("]", cmdroot, 1);
	if (colonpos > dirend)
		dirend = colonpos;
	if (dirend != 0) {
		sprintf(STR2, "%.*s", (int)(strlen(cmdroot) - dirend), cmdroot + dirend);
		strcpy(cmdroot, STR2);
	}

	start_link = current_time();

	start_read_his = current_time();
	end_read_his = start_read_his;

	cmdfile = (text_rec_t *)Malloc(sizeof(text_rec_t));
	cmdfile->f = NULL;
	cmdfile->next_text = NULL;

	if (chat || debug)
		printf("File given is %s\n", cmdname);

/* p2c: ql.pas, line 2303: Note: Ignoring option string in open [183] */
	if (cmdfile->f != NULL)
		cmdfile->f = freopen(P_trimname(cmdname, 81), "r+", cmdfile->f);
	else
		cmdfile->f = fopen(P_trimname(cmdname, 81), "r+");
	if (cmdfile->f == NULL)
		cmdfile->f = fopen(P_trimname(cmdname, 81), "w+");
	if (cmdfile->f == NULL)
		_EscIO2(FileNotFound, P_trimname(cmdname, 81));
/* p2c: ql.pas, line 2303: Warning: Expected a ')', found a ':=' [227] */
	rewind(cmdfile->f);

	strcpy(full_filename, cmdname);
/* p2c: ql.pas, line 2306:
 * Warning: Type mismatch in VAR parameter F [295] */
	printf("Linking from %s\n", full_filename);

	pass = 1;
	firstfile = true;
	basepos = startbase;

	do {
		getfile(f, &termchar);
		if (termchar == '=') {
			if (firstfile)
	strcpy(cmdroot, f);
			else
	printf("You can't put an '=' THERE!\n");
		}

		else {   /* history file of previous link */
			getext(ext, f, defext);

			if (!strcmp(ext, ".his")) {
	if (use_history)
		printf("Can only use one history file, subsequent ones ignored\n");
	else {
		start_read_his = current_time();
		read_history(f);
		end_read_his = current_time();
	}
	use_history = true;
			}

			else if (!strcmp(ext, ".rx")) {   /* text format .rx file */
	opentextin(f);
	do {
		gettextrec(o);
		if (*o != '\0')
			processrec();
	} while (!P_eof(tobjfile));
	if (tobjfile != NULL)
		fclose(tobjfile);
	tobjfile = NULL;
			}

			else {
	openin(f);
	do {
		getrec(o);
		if (*o != '\0')
			processrec();
	} while (!empty);
	if (objfile != NULL)
		fclose(objfile);
	objfile = NULL;
	/* normal .ro file */
			}
		}
		/*process the file*/

		firstfile = false;
	} while (!P_eof(cmdfile->f));

	end_pass_1 = current_time();
	alloc_com();

	hash_usage();
	if (chat || debug || !quiet) {
		printf("%5ld in symbol table\n", numsymbols);
		if (log_)
			fprintf(log_file, "%5ld in symbol table\n", numsymbols);
	}

	baseaddr[0] = 0;   /*set up base of absolute section*/

	for (i = 0; i <= 15; i++) {
		if (userbase[i+1] != -1)   /*--- put this section somewhere special*/
			basepos = userbase[i+1];

		if (sectbase[i+1] != 0) {
			if (!english)
	printf("Section %2ld Start %6.6lx Length %6.6lx",
				 i, basepos, sectbase[i+1]);
			baseaddr[i+1] = basepos;
			basepos += sectbase[i+1];
			if (!english)
	printf(" Finish  %6.6lx\n", basepos);
		}
	}

	if (english) {
		putchar('\n');
		if (sectbase[9] != 0) {
			printf("Size of P                 (8)  = %8ld bytes\n", sectbase[9]);
			total += sectbase[9];
		}
		if (sectbase[10] != 0) {
			printf("Size of HELP              (9)  = %8ld bytes\n", sectbase[10]);
			total += sectbase[10];
		}
		if (sectbase[13] != 0) {
			printf("Size of error messages   (12)  = %8ld bytes\n", sectbase[13]);
			total += sectbase[13];
		}
		if (sectbase[14] != 0) {
			printf("Size of code & constants (13)  = %8ld bytes\n", sectbase[14]);
			total += sectbase[14];
		}
		if (sectbase[15] != 0) {
			printf("Size of diagnostic block (14)  = %8ld bytes\n", sectbase[15]);
			total += sectbase[15];
		}
		if (sectbase[16] != 0) {
			printf("Size of global variables (15)  = %8ld bytes\n", sectbase[16]);
			total += sectbase[16];
		}
		printf("Total size                     = %8ld bytes\n", total);
	}

	overlap_check();
	end_space_alloc = current_time();

	if (undefsym != 0) {
		printf("Number of undefined symbols:- %12ld\n", undefsym);
		if (log_)
			fprintf(log_file, "Number of undefined symbols:- %12ld\n", undefsym);
		check_undef();
	}

	if (bin)
		smax = 512;   /*randomly large number!*/
	else
		smax = 16;
	/*s-format max line size*/

	if (modules || out || download) {
		pass = 2;
		openoutput();
		rewind(cmdfile->f);
		newline = true;

		if (modules) {
			if (mod_file != NULL) {
	sprintf(STR1, "%s.MOD", cmdroot);
	mod_file = freopen(P_trimname(STR1, 86), "r+", mod_file);
			} else {
	sprintf(STR1, "%s.MOD", cmdroot);
	mod_file = fopen(P_trimname(STR1, 86), "r+");
			}
			if (mod_file == NULL) {
	sprintf(STR1, "%s.MOD", cmdroot);
	mod_file = fopen(P_trimname(STR1, 86), "w+");
			}
			if (mod_file == NULL) {
	sprintf(STR1, "%s.MOD", cmdroot);
	_EscIO2(FileNotFound, P_trimname(STR1, 86));
			}
			if (mod_file != NULL) {
/* p2c: ql.pas, line 2457: Warning: Expected a ')', found a ':=' [227] */
/* p2c: ql.pas, line 2458: Note: REWRITE does not specify a name [181] */
	rewind(mod_file);
			} else
	mod_file = tmpfile();
			if (mod_file == NULL)
	_EscIO(FileNotFound);
		}
/* p2c: ql.pas, line 2457: Note: Ignoring option string in open [183] */

		for (i = 0; i <= 15; i++)
			sbase[i+1] = 0;
		do {
			getfile(f, &termchar);

			if (termchar != '=') {
	getext(ext, f, defext);
	if (strcmp(ext, ".his")) {
		if (!strcmp(ext, ".rx")) {   /* text format .rx file */
			opentextin(f);
			do {
				gettextrec(o);
				if (*o != '\0')
		procrec2();
			} while (!P_eof(tobjfile));
			if (tobjfile != NULL)
				fclose(tobjfile);
			tobjfile = NULL;
		}

		else {
			openin(f);
			do {
				getrec(o);
				if (*o != '\0')
		procrec2();
			} while (!empty);
			if (objfile != NULL)
				fclose(objfile);
			objfile = NULL;
			/*normal .ro file*/
		}
	}
	/* do not reread history file */

			}
		} while (!P_eof(cmdfile->f));


		if (modules) {
			if (mod_file != NULL)
	fclose(mod_file);
			mod_file = NULL;
		}
		closeoutput();
	}

	end_pass_2 = current_time();

	if (history)
		disp_history();
	end_his_gen = current_time();

	if (symout)
		gen_sym_file();
	end_sym_gen = current_time();

	if (map)
		disp_hash();
	end_map_gen = current_time();

	if (xref)
		disp_xref();
	end_xref_gen = current_time();

	if (bell) {
		for (i = 1; i <= 10; i++)
			putchar('\007');
	}

	putchar('\n');
	end_link = current_time();

	if (chat || debug || !quiet) {
		printf("Link started           %.11s\n", start_link.time_of_day);
		show_milestone("Pass 1                 ", end_pass_1, start_link);
		if (start_read_his.mill_time != end_read_his.mill_time)
			show_milestone("Reading history file   ", end_read_his, start_read_his);
		show_milestone("Space allocation       ", end_space_alloc, end_pass_1);
		show_milestone("Pass 2                 ", end_pass_2, end_space_alloc);
		if (history)
			show_milestone(".HIS generation        ", end_his_gen, end_pass_2);
		if (symout)
			show_milestone(".SYM generation        ", end_sym_gen, end_his_gen);
		if (map)
			show_milestone(".MAP generation        ", end_map_gen, end_sym_gen);
		if (xref)
			show_milestone(".XRF generation        ", end_xref_gen, end_map_gen);
		show_milestone("Link ended             ", end_link, start_link);
		printf("\ntotal CPU time:- %7.2f\n",
		 (end_link.mill_time - start_link.mill_time) / 1000.0);
	}

	if (english) {
		VAXdate(datestring);
		printf("\nLink started %.11s %.11s\n", start_link.time_of_day, datestring);
		printf("Link ended   %.11s %.11s\n", end_link.time_of_day, datestring);
	}

	if (log_)
		close_log_file();

	if (return_code != 0) {
		exit(return_code);
/* p2c: ql.pas, line 2551: Warning: Symbol '$EXIT' is not defined [221] */
	}
	if (symfile != NULL)
		fclose(symfile);
	if (objfile != NULL)
		fclose(objfile);
	if (mod_file != NULL)
		fclose(mod_file);
	if (tgtfile != NULL)
		fclose(tgtfile);
	if (sfile != NULL)
		fclose(sfile);
	if (tobjfile != NULL)
		fclose(tobjfile);
	if (btgtfile != NULL)
		fclose(btgtfile);
	if (bfile != NULL)
		fclose(bfile);
	if (log_file != NULL)
		fclose(log_file);
	exit(EXIT_SUCCESS);
}  /* PROGRAM */




/* End. */
