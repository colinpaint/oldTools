/* Output from p2c 2.00.Oct.15, the Pascal-to-C translator */
/* From input file "link.pas" */


#include <p2c/p2c.h>
/* p2c: link.pas, line 1: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2: 
 * Warning: Unrecognized character 015 in file [247] */


/*<<<*/
/* p2c: link.pas, line 3: 
 * Warning: Unrecognized character 015 in file [247] */

#define vermsg          "V1.44"
/* p2c: link.pas, line 4: 
 * Warning: Unrecognized character 015 in file [247] */

#define max_len         132
/* p2c: link.pas, line 5: 
 * Warning: Unrecognized character 015 in file [247] */
#define max_hash        4095
/* p2c: link.pas, line 6: 
 * Warning: Unrecognized character 015 in file [247] */
#define startbase       0x400
/* p2c: link.pas, line 7: 
 * Warning: Unrecognized character 015 in file [247] */
#define esc             27
/* p2c: link.pas, line 8: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 9: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 10: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
/* p2c: link.pas, line 11: 
 * Warning: Unrecognized character 015 in file [247] */

typedef uchar byte;

/* p2c: link.pas, line 12:
 * Warning: Unrecognized character 015 in file [247] */
typedef short word;

/* p2c: link.pas, line 13:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 14:
 * Warning: Unrecognized character 015 in file [247] */
typedef Char sym_name[10];
/* p2c: link.pas, line 15:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 16:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 17:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 18:
 * Warning: Unrecognized character 015 in file [247] */

typedef struct reference {
/* p2c: link.pas, line 19:
 * Warning: Unrecognized character 015 in file [247] */
  sym_name rname;
/* p2c: link.pas, line 20:
 * Warning: Unrecognized character 015 in file [247] */
  struct reference *next_ref;
/* p2c: link.pas, line 21:
 * Warning: Unrecognized character 015 in file [247] */
} reference;

/* p2c: link.pas, line 22:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 23:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 24:
 * Warning: Unrecognized character 015 in file [247] */

typedef struct resolve {
/* p2c: link.pas, line 25:
 * Warning: Unrecognized character 015 in file [247] */
  long res_addr;
/* p2c: link.pas, line 26:
 * Warning: Unrecognized character 015 in file [247] */
  long res_offset;
/* p2c: link.pas, line 27:
 * Warning: Unrecognized character 015 in file [247] */
  struct resolve *next_res;
/* p2c: link.pas, line 28:
 * Warning: Unrecognized character 015 in file [247] */
} resolve;

/* p2c: link.pas, line 29:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 30:
 * Warning: Unrecognized character 015 in file [247] */
typedef Char string[max_len + 1];

/* p2c: link.pas, line 31:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 32:
 * Warning: Unrecognized character 015 in file [247] */

typedef struct symbol {
/* p2c: link.pas, line 33:
 * Warning: Unrecognized character 015 in file [247] */
  sym_name sname, mname;
/* p2c: link.pas, line 34:
 * Warning: Unrecognized character 015 in file [247] */
  long ssect, saddr, comsize;
/* p2c: link.pas, line 35:
 * Warning: Unrecognized character 015 in file [247] */
  struct symbol *next_sym, *next_com;
/* p2c: link.pas, line 36:
 * Warning: Unrecognized character 015 in file [247] */
  unsigned sdef : 1, sused : 1;
/* p2c: link.pas, line 37:
 * Warning: Unrecognized character 015 in file [247] */
  unsigned sflagged : 1, shist : 1;
/* p2c: link.pas, line 38:
 * Warning: Unrecognized character 015 in file [247] */
  reference *reflist;
/* p2c: link.pas, line 39:
 * Warning: Unrecognized character 015 in file [247] */
  resolve *reslist;
/* p2c: link.pas, line 40:
 * Warning: Unrecognized character 015 in file [247] */
} symbol;

/* p2c: link.pas, line 41:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 42:
 * Warning: Unrecognized character 015 in file [247] */

typedef struct idrec {
/* p2c: link.pas, line 43:
 * Warning: Unrecognized character 015 in file [247] */
  word rlen;
/* p2c: link.pas, line 44:
 * Warning: Unrecognized character 015 in file [247] */
  Char rtype;
/* p2c: link.pas, line 45:
 * Warning: Unrecognized character 015 in file [247] */
  sym_name modname;
/* p2c: link.pas, line 46:
 * Warning: Unrecognized character 015 in file [247] */
} idrec;

/* p2c: link.pas, line 47:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 48:
 * Warning: Unrecognized character 015 in file [247] */
typedef Char filename[81];

/* p2c: link.pas, line 49:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 50:
 * Warning: Unrecognized character 015 in file [247] */
typedef Char objrec[256];

/* p2c: link.pas, line 51:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 52:
 * Warning: Unrecognized character 015 in file [247] */
typedef byte block[256];
/* p2c: link.pas, line 53:
 * Warning: Unrecognized character 015 in file [247] */
typedef byte bblock[512];
/* p2c: link.pas, line 54:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 55:
 * Warning: Unrecognized character 015 in file [247] */

typedef struct milestone {
/* p2c: link.pas, line 56:
 * Warning: Unrecognized character 015 in file [247] */
  long mill_time, int_time;
/* p2c: link.pas, line 57:
 * Warning: Unrecognized character 015 in file [247] */
  Char time_of_day[11];
/* p2c: link.pas, line 58:
 * Warning: Unrecognized character 015 in file [247] */
} milestone;

/* p2c: link.pas, line 59:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 60:
 * Warning: Unrecognized character 015 in file [247] */
typedef enum {
  $history_obj, $history_symbol, $history_ref
} history_type_t;
/* p2c: link.pas, line 61:
 * Warning: Unrecognized character 015 in file [247] */

typedef struct history_t {
/* p2c: link.pas, line 62:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 63:
 * Warning: Unrecognized character 015 in file [247] */
  history_type_t history_type;
  union {
/* p2c: link.pas, line 64:
 * Warning: Unrecognized character 015 in file [247] */
    long obj_addr;
    struct {
/* p2c: link.pas, line 65:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 66:
 * Warning: Unrecognized character 015 in file [247] */
      long symbol_addr;
/* p2c: link.pas, line 67:
 * Warning: Unrecognized character 015 in file [247] */
      sym_name symbol_name;
    } U1;
    struct {
/* p2c: link.pas, line 68:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 69:
 * Warning: Unrecognized character 015 in file [247] */
      long ref_addr, ref_offset;
    } U2;
  } UU;
} history_t;

/* p2c: link.pas, line 71:
 * Warning: Unrecognized character 015 in file [247] */
/*>>>*/
/* p2c: link.pas, line 72:
 * Warning: Unrecognized character 015 in file [247] */
/*<<<*/
/* p2c: link.pas, line 73:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 74: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 78: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 81: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 82: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 85: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 86: 
 * Warning: Unrecognized character 015 in file [247] */


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
/* p2c: link.pas, line 87: 
 * Warning: Unrecognized character 015 in file [247] */
/*102*/

#define recs_per_file_rec$  ((bytes_per_file_rec$ - 4) / 15)
/* p2c: link.pas, line 88: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 89: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 90: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 91: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
/* p2c: link.pas, line 92: 
 * Warning: Unrecognized character 015 in file [247] */

typedef union filed_history_t {
  struct {
/* p2c: link.pas, line 93:
 * Warning: Unrecognized character 015 in file [247] */
    long num_recs;
/* p2c: link.pas, line 94:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 95:
 * Warning: Unrecognized character 015 in file [247] */
    history_t recs[recs_per_file_rec$];
  } U1;
/* p2c: link.pas, line 96:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 97:
 * Warning: Unrecognized character 015 in file [247] */
  Char dummy[bytes_per_file_rec$];
} filed_history_t;

/* p2c: link.pas, line 99:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 100:
 * Warning: Unrecognized character 015 in file [247] */

/* p2c: link.pas, line 101:
 * Warning: Unrecognized character 015 in file [247] */
/*>>>*/
/* p2c: link.pas, line 102:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 103: 
 * Warning: Type attribute EXTERNAL ignored [128] */
/* p2c: link.pas, line 103: 
 * Note: Mechanism specifier %DESCR ignored [108] */
/* p2c: link.pas, line 103: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 104: 
 * Note: Mechanism specified %REF treated like VAR [107] */
/* p2c: link.pas, line 104: 
 * Note: Mechanism specified %REF treated like VAR [107] */


extern long lib$get_foreign PP((Char *result, Char *user_prompt,
				word *out_len, long *force_prompt));
/* p2c: link.pas, line 104: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 105: 
 * Warning: Unrecognized character 015 in file [247] */


/*<<<*/
/* p2c: link.pas, line 106: 
 * Warning: Unrecognized character 015 in file [247] */

/* p2c: link.pas, line 107: Warning: Type attribute UNSAFE ignored [128] */
/* p2c: link.pas, line 111: 
 * Warning: Unsatisfied forward reference to type NAM$TYPE [138] */
/* p2c: link.pas, line 111: 
 * Warning: Unsatisfied forward reference to type FAB$TYPE [138] */
/* p2c: link.pas, line 107:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 108:
 * Warning: Unrecognized character 015 in file [247] */

/* p2c: link.pas, line 109:
 * Warning: Unrecognized character 015 in file [247] */
/*>>>*/
/* p2c: link.pas, line 110:
 * Warning: Unrecognized character 015 in file [247] */


extern char *PAS$FAB PP((FILE **F));
/* p2c: link.pas, line 111: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 112: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 113: 
 * Warning: Unrecognized character 015 in file [247] */


/*<<<*/
/* p2c: link.pas, line 114: 
 * Warning: Unrecognized character 015 in file [247] */

/* p2c: link.pas, line 115:
 * Warning: Unrecognized character 015 in file [247] */

typedef struct text_rec_t {
/* p2c: link.pas, line 116:
 * Warning: Unrecognized character 015 in file [247] */
  FILE *f;
/* p2c: link.pas, line 117:
 * Warning: Unrecognized character 015 in file [247] */
  struct text_rec_t *next_text;
/* p2c: link.pas, line 118:
 * Warning: Unrecognized character 015 in file [247] */
} text_rec_t;

/* p2c: link.pas, line 119:
 * Warning: Unrecognized character 015 in file [247] */
/*>>>*/
/* p2c: link.pas, line 120:
 * Warning: Unrecognized character 015 in file [247] */
/*<<<*/
/* p2c: link.pas, line 121:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 122: 
 * Warning: Unrecognized character 015 in file [247] */


Static long ql_undefsym, ql_dbldefsym, ql_sizeclash, ql_fatalerr,
	    ql_sctovrlap;
/* p2c: link.pas, line 123:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 124:
 * Warning: Unrecognized character 015 in file [247] */
Static boolean firstfile;
/* p2c: link.pas, line 125:
 * Warning: Unrecognized character 015 in file [247] */
Static Char termchar;
/* p2c: link.pas, line 126:
 * Warning: Unrecognized character 015 in file [247] */
Static long return_code, smax, checksum, pass, opos, bpos;
/* p2c: link.pas, line 127:
 * Warning: Unrecognized character 015 in file [247] */
Static objrec o;
/* p2c: link.pas, line 128:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 129:
 * Warning: Unrecognized character 015 in file [247] */
Static long line_length;
/* p2c: link.pas, line 130:
 * Warning: Unrecognized character 015 in file [247] */
Static Char line_buff[max_len + 1];   /*extra byte to stop bound overflow!*/
/* p2c: link.pas, line 131:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 132:
 * Warning: Unrecognized character 015 in file [247] */
Static symbol *prev_com, *com_head;
/* p2c: link.pas, line 133:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 134:
 * Warning: Unrecognized character 015 in file [247] */
Static boolean modules, debug, download, check, bell, xref, map, bin, out,
	       symout;
/* p2c: link.pas, line 135:
 * Warning: Unrecognized character 015 in file [247] */
Static boolean log_, english, quiet, files, chat, history, use_history,
	       escape;
/* p2c: link.pas, line 136:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 137:
 * Warning: Unrecognized character 015 in file [247] */
Static boolean newline, duffer, inpacket;
/* p2c: link.pas, line 138:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 139:
 * Warning: Unrecognized character 015 in file [247] */
Static symbol *hash_table[max_hash + 1];
/* p2c: link.pas, line 140:
 * Warning: Unrecognized character 015 in file [247] */
Static string fil, prompt, file_id;
/* p2c: link.pas, line 141:
 * Warning: Unrecognized character 015 in file [247] */
Static word fil_len;
/* p2c: link.pas, line 142:
 * Warning: Unrecognized character 015 in file [247] */
Static long dirend, colonpos;
/* p2c: link.pas, line 143:
 * Warning: Unrecognized character 015 in file [247] */
Static long codestart, codelen, topesd, blockpt, undefsym, result, pflag,
	    numsymbols;
/* p2c: link.pas, line 144:
 * Warning: Unrecognized character 015 in file [247] */
Static long userbase[17], sbase[17], sectbase[17], baseaddr[17];
    /*element -1 is the ABS section*/
/* p2c: link.pas, line 145:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 146:
 * Warning: Unrecognized character 015 in file [247] */
Static long outaddr[256], esdarr[256];
/* p2c: link.pas, line 147:
 * Warning: Unrecognized character 015 in file [247] */
Static symbol *esdsymarr[256];
/* p2c: link.pas, line 148:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 149:
 * Warning: Unrecognized character 015 in file [247] */
Static long codearr[64];
/* p2c: link.pas, line 150:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 151:
 * Warning: Unrecognized character 015 in file [247] */
Static milestone start_link, end_pass_1, end_pass_2, end_link;
/* p2c: link.pas, line 152:
 * Warning: Unrecognized character 015 in file [247] */
Static milestone end_map_gen, end_his_gen, end_sym_gen, end_space_alloc,
		 end_xref_gen;
/* p2c: link.pas, line 153:
 * Warning: Unrecognized character 015 in file [247] */
Static milestone start_read_his, end_read_his;
/* p2c: link.pas, line 154:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 155:
 * Warning: Unrecognized character 015 in file [247] */
Static sym_name mod_id;
/* p2c: link.pas, line 156:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 157:
 * Warning: Unrecognized character 015 in file [247] */
Static FILE *symfile, *objfile;
/* p2c: link.pas, line 158:
 * Warning: Unrecognized character 015 in file [247] */
Static FILE *mod_file, *tgtfile, *sfile, *tobjfile;
/* p2c: link.pas, line 159:
 * Warning: Unrecognized character 015 in file [247] */
Static FILE *btgtfile, *bfile;
/* p2c: link.pas, line 160:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 161:
 * Warning: Unrecognized character 015 in file [247] */
Static bblock oblock;
/* p2c: link.pas, line 162:
 * Warning: Unrecognized character 015 in file [247] */
Static block bl, inblock;
/* p2c: link.pas, line 163:
 * Warning: Unrecognized character 015 in file [247] */
Static boolean empty;
/* p2c: link.pas, line 164:
 * Warning: Unrecognized character 015 in file [247] */
Static filename cur_file, ext, defext, cmdroot, cmdname, full_filename;
/* p2c: link.pas, line 165:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 166:
 * Warning: Unrecognized character 015 in file [247] */
Static sym_name sn;
/* p2c: link.pas, line 167:
 * Warning: Unrecognized character 015 in file [247] */
Static symbol *spt;
/* p2c: link.pas, line 168:
 * Warning: Unrecognized character 015 in file [247] */
Static objrec orec;
/* p2c: link.pas, line 169:
 * Warning: Unrecognized character 015 in file [247] */
Static text_rec_t *cmdfile;
/* p2c: link.pas, line 170:
 * Warning: Unrecognized character 015 in file [247] */
Static filename f;
/* p2c: link.pas, line 171:
 * Warning: Unrecognized character 015 in file [247] */
Static long total, basepos, i;
/* p2c: link.pas, line 172:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 173:
 * Warning: Unrecognized character 015 in file [247] */
Static FILE *log_file;
/* p2c: link.pas, line 174:
 * Warning: Unrecognized character 015 in file [247] */
Static Char datestring[11];
/* p2c: link.pas, line 179: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 180: 
 * Warning: Unrecognized character 015 in file [247] */


/* p2c: link.pas, line 175:
 * Warning: Unrecognized character 015 in file [247] */
/*>>>*/
/* p2c: link.pas, line 176:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 177:
 * Warning: Unrecognized character 015 in file [247] */
/*<<<*/
/* p2c: link.pas, line 178:
 * Warning: Unrecognized character 015 in file [247] */
Static Void showmod()
{
/* p2c: link.pas, line 181:
 * Warning: Unrecognized character 015 in file [247] */
  printf("in module '%.10s', from file '%s'....\n", mod_id, cur_file);
/* p2c: link.pas, line 182:
 * Warning: Unrecognized character 015 in file [247] */
  if (log_)
    fprintf(log_file, "in module '%.10s', from file '%s'....\n",
	    mod_id, cur_file);
/* p2c: link.pas, line 183:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 184:
 * Warning: Unrecognized character 015 in file [247] */
}  /* showmod */
/* p2c: link.pas, line 185: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 186: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 187: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 188: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 189: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 190: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static boolean seq(f1, f2)
Char *f1, *f2;
{
/* p2c: link.pas, line 191:
 * Warning: Unrecognized character 015 in file [247] */
  if (strlen(f1) != strlen(f2)) {
/* p2c: link.pas, line 192:
 * Warning: Unrecognized character 015 in file [247] */
    return false;
/* p2c: link.pas, line 193:
 * Warning: Unrecognized character 015 in file [247] */
  } else {
/* p2c: link.pas, line 194:
 * Warning: Unrecognized character 015 in file [247] */
    return (strcmp(f1, f2) == 0);
/* p2c: link.pas, line 195:
 * Warning: Unrecognized character 015 in file [247] */
  }
}  /* seq */
/* p2c: link.pas, line 196: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 197: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 198: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 199: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 200: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static long ior(i1, i2)
long i1, i2;
{
/* p2c: link.pas, line 201:
 * Warning: Unrecognized character 015 in file [247] */
  return (((unsigned long)i1) | ((unsigned long)i2));
/* p2c: link.pas, line 202:
 * Warning: Unrecognized character 015 in file [247] */
}  /*ior */
/* p2c: link.pas, line 203: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 204: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 205: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 206: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 207: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static long iand(i1, i2)
long i1, i2;
{
/* p2c: link.pas, line 208:
 * Warning: Unrecognized character 015 in file [247] */
  return (((unsigned long)i1) & ((unsigned long)i2));
/* p2c: link.pas, line 209:
 * Warning: Unrecognized character 015 in file [247] */
}  /* iand */
/* p2c: link.pas, line 210: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 211: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 212: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 213: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 214: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static long ixor(i1, i2)
long i1, i2;
{
/* p2c: link.pas, line 215:
 * Warning: Unrecognized character 015 in file [247] */
  return (((unsigned long)i1) ^ ((unsigned long)i2));
/* p2c: link.pas, line 216:
 * Warning: Unrecognized character 015 in file [247] */
}  /* ixor */
/* p2c: link.pas, line 217: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 218: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 219: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 220: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 221: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static long mvl(i)
long i;
{
/* p2c: link.pas, line 222:
 * Warning: Unrecognized character 015 in file [247] */
  return (i * 256);
/* p2c: link.pas, line 223:
 * Warning: Unrecognized character 015 in file [247] */
}  /* mvl */
/* p2c: link.pas, line 224: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 225: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 226: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 227: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 228: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static long mvr(i)
long i;
{
/* p2c: link.pas, line 229:
 * Warning: Unrecognized character 015 in file [247] */
  if (i < 0) {
/* p2c: link.pas, line 230:
 * Warning: Unrecognized character 015 in file [247] */
    return (0x800000L | ((unsigned long)mvr(0x7fffffffL & ((unsigned long)i))));
/* p2c: link.pas, line 231:
 * Warning: Unrecognized character 015 in file [247] */
  } else {
/* p2c: link.pas, line 232:
 * Warning: Unrecognized character 015 in file [247] */
    return (i / 256 % 0x1000000L);
/* p2c: link.pas, line 233:
 * Warning: Unrecognized character 015 in file [247] */
  }
}  /* mvr */
/* p2c: link.pas, line 234: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 235: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 236: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 237: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 238: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static long hexchr(c)
Char c;
{
/* p2c: link.pas, line 239:
 * Warning: Unrecognized character 015 in file [247] */
  if (isdigit(c)) {
/* p2c: link.pas, line 240:
 * Warning: Unrecognized character 015 in file [247] */
    return (c - '0');
/* p2c: link.pas, line 241:
 * Warning: Unrecognized character 015 in file [247] */
  }
  if (c >= 'a' && c <= 'f') {
/* p2c: link.pas, line 242:
 * Warning: Unrecognized character 015 in file [247] */
    return (c + 10 - 'a');
/* p2c: link.pas, line 243:
 * Warning: Unrecognized character 015 in file [247] */
  }
  if (c >= 'A' && c <= 'F') {
/* p2c: link.pas, line 244:
 * Warning: Unrecognized character 015 in file [247] */
    return (c + 10 - 'A');
/* p2c: link.pas, line 245:
 * Warning: Unrecognized character 015 in file [247] */
  }
  printf("Duff char '%c'when hex char expected!\n", c);
/* p2c: link.pas, line 246:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 247:
 * Warning: Unrecognized character 015 in file [247] */
}  /* hexchr */
/* p2c: link.pas, line 248: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 249: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 250: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 251: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 252: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 253: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 254: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 266: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 267: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 268: 
 * Warning: Unrecognized character 015 in file [247] */


typedef Char packed_array[80];
/* p2c: link.pas, line 269:
 * Warning: Unrecognized character 015 in file [247] */

/* p2c: link.pas, line 270:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 271:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 272: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 281: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 282: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 283: 
 * Warning: Unrecognized character 015 in file [247] */


/* p2c: link.pas, line 256:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 257:
 * Warning: Unrecognized character 015 in file [247] */
/*I think the fields in the NAM block are rather volatile, they

get reused very soon, particularly if you do writelns in between

NAM extractions. So do all the extractions, then write the results. */
/* p2c: link.pas, line 260:
 * Warning: Unrecognized character 015 in file [247] */
/*The RMS manual talks about allocating space by your program for use

as intermediate space when using RMS services, so thats probably whats

needed. */
/* p2c: link.pas, line 263:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 264:
 * Warning: Unrecognized character 015 in file [247] */
/*<<<*/
/* p2c: link.pas, line 265:
 * Warning: Unrecognized character 015 in file [247] */
Local Void do_string(b, l, str)
byte b;
unsigned long l;
Char *str;
{
  long i;
/* p2c: link.pas, line 273:
 * Warning: Unrecognized character 015 in file [247] */
  Char *string_ptr;

/* p2c: link.pas, line 274:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 275:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 276:
 * Warning: Unrecognized character 015 in file [247] */
  *str = '\0';
/* p2c: link.pas, line 277:
 * Warning: Unrecognized character 015 in file [247] */
  string_ptr = (Char *)l;
/* p2c: link.pas, line 278:
 * Warning: Unrecognized character 015 in file [247] */
  for (i = 0; i < b; i++) {
/* p2c: link.pas, line 279:
 * Warning: Unrecognized character 015 in file [247] */
    sprintf(str + strlen(str), "%c", string_ptr[i]);
  }
/* p2c: link.pas, line 280:
 * Warning: Unrecognized character 015 in file [247] */
}


/*>>>*/
/*<<<*/
Static Char *get_nam(Result, fab_ptr)
Char *Result;
char *fab_ptr;
{
  string full_name, node_str, dev_str, dir_str, name_str, type_str, ver_str;
/* p2c: link.pas, line 255:
 * Warning: Unrecognized character 015 in file [247] */
  char *nam_ptr;

  /*>>>*/
/* p2c: link.pas, line 284:
 * Warning: Unrecognized character 015 in file [247] */
  nam_ptr = (char *)fab_ptr->fab$l_nam;
/* p2c: link.pas, line 285:
 * Warning: No field called FAB$L_NAM in that record [288] */
/* p2c: link.pas, line 285:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 286:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 287:
 * Warning: No field called NAM$B_NODE in that record [288] */
/* p2c: link.pas, line 287:
 * Warning: No field called NAM$L_NODE in that record [288] */
  do_string((int)nam_ptr->nam$b_node, nam_ptr->nam$l_node, node_str);
/* p2c: link.pas, line 287:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 288:
 * Warning: No field called NAM$B_DEV in that record [288] */
/* p2c: link.pas, line 288:
 * Warning: No field called NAM$L_DEV in that record [288] */
  do_string((int)nam_ptr->nam$b_dev, nam_ptr->nam$l_dev, dev_str);
/* p2c: link.pas, line 288:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 289:
 * Warning: No field called NAM$B_DIR in that record [288] */
/* p2c: link.pas, line 289:
 * Warning: No field called NAM$L_DIR in that record [288] */
  do_string((int)nam_ptr->nam$b_dir, nam_ptr->nam$l_dir, dir_str);
/* p2c: link.pas, line 289:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 290:
 * Warning: No field called NAM$B_NAME in that record [288] */
/* p2c: link.pas, line 290:
 * Warning: No field called NAM$L_NAME in that record [288] */
  do_string((int)nam_ptr->nam$b_name, nam_ptr->nam$l_name, name_str);
/* p2c: link.pas, line 290:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 291:
 * Warning: No field called NAM$B_TYPE in that record [288] */
/* p2c: link.pas, line 291:
 * Warning: No field called NAM$L_TYPE in that record [288] */
  do_string((int)nam_ptr->nam$b_type, nam_ptr->nam$l_type, type_str);
/* p2c: link.pas, line 291:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 292:
 * Warning: No field called NAM$B_VER in that record [288] */
/* p2c: link.pas, line 292:
 * Warning: No field called NAM$L_VER in that record [288] */
  do_string((int)nam_ptr->nam$b_ver, nam_ptr->nam$l_ver, ver_str);
/* p2c: link.pas, line 292:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 293:
 * Warning: Unrecognized character 015 in file [247] */
  sprintf(full_name, "%s%s%s%s%s%s",
	  node_str, dev_str, dir_str, name_str, type_str, ver_str);
/* p2c: link.pas, line 294:
 * Warning: Unrecognized character 015 in file [247] */
  return strcpy(Result, full_name);
/* p2c: link.pas, line 295:
 * Warning: Unrecognized character 015 in file [247] */
}
/* p2c: link.pas, line 296: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 297: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 298: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 299: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 300: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void openin(f)
Char *f;
{
/* p2c: link.pas, line 301:
 * Warning: Unrecognized character 015 in file [247] */
  strcpy(cur_file, f);
/* p2c: link.pas, line 302:
 * Warning: Unrecognized character 015 in file [247] */
  open(objfile, f, history);
/* p2c: link.pas, line 303: Warning: Expected a ')', found a ':=' [227] */
/* p2c: link.pas, line 303: Warning: Symbol 'OPEN' is not defined [221] */
/* p2c: link.pas, line 303:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 304:
 * Warning: Unrecognized character 015 in file [247] */
  get_nam(file_id, PAS$FAB(&objfile));
/* p2c: link.pas, line 305:
 * Warning: Type mismatch in VAR parameter F [295] */
/* p2c: link.pas, line 305:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 306:
 * Warning: Unrecognized character 015 in file [247] */
  rewind(objfile);
/* p2c: link.pas, line 307:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 308:
 * Warning: Unrecognized character 015 in file [247] */
  blockpt = 0;
/* p2c: link.pas, line 309:
 * Warning: Unrecognized character 015 in file [247] */
  fread(inblock, sizeof(block), 1, objfile);
/* p2c: link.pas, line 310:
 * Warning: Unrecognized character 015 in file [247] */
  empty = false;
/* p2c: link.pas, line 311:
 * Warning: Unrecognized character 015 in file [247] */
}  /*openin */
/* p2c: link.pas, line 312: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 313: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 314: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 315: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 316: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 317: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void getrec(o)
Char *o;
{
  long i, l1, FORLIM;

/* p2c: link.pas, line 318:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 319:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 320:
 * Warning: Unrecognized character 015 in file [247] */
  /*.ro files are 256 byte fixed size blocks. Within these blocks, records are

packed end to end i.e. one record can span a block boundary. Each record

conisits of a single byte <n> followed by <n> data bytes*/
/* p2c: link.pas, line 323:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 324:
 * Warning: Unrecognized character 015 in file [247] */
  o[inblock[blockpt]] = '\0';
/* p2c: link.pas, line 325:
 * Note: Modification of string length may translate incorrectly [146] */
/* p2c: link.pas, line 325:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 326:
 * Warning: Unrecognized character 015 in file [247] */
  if (255 - blockpt > strlen(o)) {
/* p2c: link.pas, line 327:
 * Warning: Unrecognized character 015 in file [247] */
    l1 = strlen(o);
/* p2c: link.pas, line 328:
 * Warning: Unrecognized character 015 in file [247] */
  } else {
/* p2c: link.pas, line 329:
 * Warning: Unrecognized character 015 in file [247] */
    l1 = 255 - blockpt;
  }
/* p2c: link.pas, line 330:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 331:
 * Warning: Unrecognized character 015 in file [247] */
  for (i = 1; i <= l1; i++) {
/* p2c: link.pas, line 332:
 * Warning: Unrecognized character 015 in file [247] */
    o[i-1] = inblock[blockpt + i];
  }
/* p2c: link.pas, line 333:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 334:
 * Warning: Unrecognized character 015 in file [247] */
  blockpt += l1 + 1;
/* p2c: link.pas, line 335:
 * Warning: Unrecognized character 015 in file [247] */
  if (blockpt <= 255)
    return;
/* p2c: link.pas, line 348:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 349:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 336:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 337:
 * Warning: Unrecognized character 015 in file [247] */
  if (P_eof(objfile)) {
/* p2c: link.pas, line 338:
 * Warning: Unrecognized character 015 in file [247] */
    empty = true;
/* p2c: link.pas, line 339:
 * Warning: Unrecognized character 015 in file [247] */
  } else
    fread(inblock, sizeof(block), 1, objfile);
/* p2c: link.pas, line 340:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 341:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 342:
 * Warning: Unrecognized character 015 in file [247] */
  blockpt = 0;
/* p2c: link.pas, line 343:
 * Warning: Unrecognized character 015 in file [247] */
  l1++;   /*step to start of next xfer*/
  FORLIM = strlen(o);
/* p2c: link.pas, line 344:
 * Warning: Unrecognized character 015 in file [247] */
  for (i = l1; i <= FORLIM; i++) {
/* p2c: link.pas, line 345:
 * Warning: Unrecognized character 015 in file [247] */
    o[i-1] = inblock[i - l1];
  }
/* p2c: link.pas, line 346:
 * Warning: Unrecognized character 015 in file [247] */
  blockpt = strlen(o) - l1 + 1;
/* p2c: link.pas, line 347:
 * Warning: Unrecognized character 015 in file [247] */
}  /* getrec */
/* p2c: link.pas, line 350: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 351: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 352: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 353: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 354: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void opentextin(f)
Char *f;
{
/* p2c: link.pas, line 355:
 * Warning: Unrecognized character 015 in file [247] */
  strcpy(cur_file, f);
/* p2c: link.pas, line 356:
 * Warning: Unrecognized character 015 in file [247] */
  open(tobjfile, f, history);
/* p2c: link.pas, line 357: Warning: Expected a ')', found a ':=' [227] */
/* p2c: link.pas, line 357: Warning: Symbol 'OPEN' is not defined [221] */
/* p2c: link.pas, line 357:
 * Warning: Unrecognized character 015 in file [247] */
  get_nam(file_id, PAS$FAB(&tobjfile));
/* p2c: link.pas, line 358:
 * Warning: Type mismatch in VAR parameter F [295] */
/* p2c: link.pas, line 358:
 * Warning: Unrecognized character 015 in file [247] */
  rewind(tobjfile);
/* p2c: link.pas, line 359:
 * Warning: Unrecognized character 015 in file [247] */
}  /*opentextin */
/* p2c: link.pas, line 360: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 361: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 362: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 363: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 364: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 365: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void gettextrec(o)
Char *o;
{
  Char buff[256];
/* p2c: link.pas, line 366:
 * Warning: Unrecognized character 015 in file [247] */
  long bytes, i;
  Char *TEMP;

/* p2c: link.pas, line 367:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 368:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 369:
 * Warning: Unrecognized character 015 in file [247] */
  /*.rx files are a text version of the .ro file. Each record is a single line

of text, written out as hex characters i.e. 2 characters per byte. The record

length is derived from the bytes on the line. This format is provided to allow

.rx files to be easily ported from other systems e.g. Unix*/
/* p2c: link.pas, line 373:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 374:
 * Warning: Unrecognized character 015 in file [247] */
  fgets(buff, 256, tobjfile);
  TEMP = strchr(buff, '\n');
  if (TEMP != NULL)
    *TEMP = 0;
/* p2c: link.pas, line 375:
 * Warning: Unrecognized character 015 in file [247] */
  bytes = strlen(buff) / 2;
/* p2c: link.pas, line 376:
 * Warning: Unrecognized character 015 in file [247] */
  o[bytes] = '\0';
/* p2c: link.pas, line 377:
 * Note: Modification of string length may translate incorrectly [146] */
/* p2c: link.pas, line 377:
 * Warning: Unrecognized character 015 in file [247] */
  for (i = 1; i <= bytes; i++) {
/* p2c: link.pas, line 378:
 * Warning: Unrecognized character 015 in file [247] */
    o[i-1] = (Char)(hexchr(buff[i * 2 - 2]) * 16 + hexchr(buff[i * 2 - 1]));
  }
/* p2c: link.pas, line 379:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 380:
 * Warning: Unrecognized character 015 in file [247] */
}  /* gettextrec */
/* p2c: link.pas, line 381: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 382: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 383: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 384: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 385: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 386: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static boolean null_(c)
Char c;
{
/* p2c: link.pas, line 387:
 * Warning: Unrecognized character 015 in file [247] */
  return (c == '\015' || c == '\n' || c == ' ' || c == '\t' || c == '\0');
/* p2c: link.pas, line 388:
 * Warning: Unrecognized character 015 in file [247] */
}  /* null */
/* p2c: link.pas, line 389: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 390: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 391: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 392: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 393: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static boolean digit(c)
Char c;
{
/* p2c: link.pas, line 394:
 * Warning: Unrecognized character 015 in file [247] */
  return isdigit(c);
/* p2c: link.pas, line 395:
 * Warning: Unrecognized character 015 in file [247] */
}  /* digit */
/* p2c: link.pas, line 396: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 397: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 398: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 399: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 400: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static boolean alpha(c)
Char c;
{
/* p2c: link.pas, line 401:
 * Warning: Unrecognized character 015 in file [247] */
  return isalpha(c);
/* p2c: link.pas, line 402:
 * Warning: Unrecognized character 015 in file [247] */
}  /* alpha */
/* p2c: link.pas, line 403: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 404: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 405: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 406: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 407: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static boolean alphanum(c)
Char c;
{
/* p2c: link.pas, line 408:
 * Warning: Unrecognized character 015 in file [247] */
  return (digit(c) || alpha(c) || c == '_');
/* p2c: link.pas, line 409:
 * Warning: Unrecognized character 015 in file [247] */
}  /* alphanum */
/* p2c: link.pas, line 410: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 411: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 412: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 413: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 414: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 415: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void force_up(s)
Char *s;
{
  long i;

/* p2c: link.pas, line 416:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 417:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 418:
 * Warning: Unrecognized character 015 in file [247] */
  for (i = 0; i <= 9; i++) {
/* p2c: link.pas, line 419:
 * Warning: Unrecognized character 015 in file [247] */
    if (islower(s[i])) {
/* p2c: link.pas, line 420:
 * Warning: Unrecognized character 015 in file [247] */
      s[i] = _toupper(s[i]);
    }
  }
/* p2c: link.pas, line 421:
 * Warning: Unrecognized character 015 in file [247] */
}  /* force_up */
/* p2c: link.pas, line 422: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 423: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 424: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 425: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 426: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 427: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 428: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void init_hash()
{
  long i;

/* p2c: link.pas, line 429:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 430:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 431:
 * Warning: Unrecognized character 015 in file [247] */
  for (i = 0; i <= max_hash; i++)
    hash_table[i] = NULL;
/* p2c: link.pas, line 432:
 * Warning: Unrecognized character 015 in file [247] */
}  /* init_hash */
/* p2c: link.pas, line 433: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 434: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 435: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 436: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 437: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 438: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static long hash_sym(s)
Char *s;
{
  long h = 0, i = 1;

/* p2c: link.pas, line 439:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 440:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 441:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 442:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 443:
 * Warning: Unrecognized character 015 in file [247] */
  while (i < 10 && s[i-1] != ' ') {
/* p2c: link.pas, line 444:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 445:
 * Warning: Unrecognized character 015 in file [247] */
    h = h * 97 + s[i-1];
/* p2c: link.pas, line 446:
 * Warning: Unrecognized character 015 in file [247] */
    i++;
/* p2c: link.pas, line 447:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 448:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 449:
 * Warning: Unrecognized character 015 in file [247] */
  return (h % max_hash);
/* p2c: link.pas, line 450:
 * Warning: Unrecognized character 015 in file [247] */
}  /* hash_sym */
/* p2c: link.pas, line 451: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 452: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 453: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 454: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 455: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 456: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static boolean find_insert(s, s_ptr, ins)
Char *s;
symbol **s_ptr;
boolean ins;
{
  boolean Result;
  boolean found = false;
/* p2c: link.pas, line 457:
 * Warning: Unrecognized character 015 in file [247] */
  long hash;

/* p2c: link.pas, line 458:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 459:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 460:
 * Warning: Unrecognized character 015 in file [247] */
  force_up(s);
/* p2c: link.pas, line 461:
 * Warning: Unrecognized character 015 in file [247] */
  hash = hash_sym(s);
/* p2c: link.pas, line 462:
 * Warning: Unrecognized character 015 in file [247] */
  *s_ptr = hash_table[hash];
/* p2c: link.pas, line 463:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 464:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 465:
 * Warning: Unrecognized character 015 in file [247] */
  while (!found && *s_ptr != NULL) {
/* p2c: link.pas, line 466:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 467:
 * Warning: Unrecognized character 015 in file [247] */
    if (!strncmp((*s_ptr)->sname, s, sizeof(sym_name))) {
/* p2c: link.pas, line 468:
 * Warning: Unrecognized character 015 in file [247] */
      found = true;
/* p2c: link.pas, line 469:
 * Warning: Unrecognized character 015 in file [247] */
    } else {
/* p2c: link.pas, line 470:
 * Warning: Unrecognized character 015 in file [247] */
      *s_ptr = (*s_ptr)->next_sym;
    }
  }
/* p2c: link.pas, line 471:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 472:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 473:
 * Warning: Unrecognized character 015 in file [247] */
  Result = found;
/* p2c: link.pas, line 474:
 * Warning: Unrecognized character 015 in file [247] */
  if (found || !ins)
    return Result;
/* p2c: link.pas, line 490:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 491:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 475:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 476:
 * Warning: Unrecognized character 015 in file [247] */
  numsymbols++;
/* p2c: link.pas, line 477:
 * Warning: Unrecognized character 015 in file [247] */
  *s_ptr = (symbol *)Malloc(sizeof(symbol));
/* p2c: link.pas, line 478:
 * Warning: Unrecognized character 015 in file [247] */
  (*s_ptr)->next_sym = hash_table[hash];
/* p2c: link.pas, line 479:
 * Warning: Unrecognized character 015 in file [247] */
  hash_table[hash] = *s_ptr;
/* p2c: link.pas, line 480:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 481:
 * Warning: Unrecognized character 015 in file [247] */
  (*s_ptr)->sdef = false;
/* p2c: link.pas, line 482:
 * Warning: Unrecognized character 015 in file [247] */
  (*s_ptr)->sused = true;
/* p2c: link.pas, line 483:
 * Warning: Unrecognized character 015 in file [247] */
  (*s_ptr)->sflagged = false;
/* p2c: link.pas, line 484:
 * Warning: Unrecognized character 015 in file [247] */
  memcpy((*s_ptr)->sname, s, sizeof(sym_name));
/* p2c: link.pas, line 485:
 * Warning: Unrecognized character 015 in file [247] */
  memcpy((*s_ptr)->mname, mod_id, sizeof(sym_name));
/* p2c: link.pas, line 486:
 * Warning: Unrecognized character 015 in file [247] */
  (*s_ptr)->comsize = -1;
/* p2c: link.pas, line 487:
 * Warning: Unrecognized character 015 in file [247] */
  (*s_ptr)->reflist = NULL;
/* p2c: link.pas, line 488:
 * Warning: Unrecognized character 015 in file [247] */
  (*s_ptr)->reslist = NULL;
/* p2c: link.pas, line 489:
 * Warning: Unrecognized character 015 in file [247] */
  return Result;
}  /* find_insert */
/* p2c: link.pas, line 492: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 493: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 494: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 495: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 496: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 497: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 498: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void disp_xref()
{
  /*--- dump cross references to file from list held per symbol */
  long i, refcount;
/* p2c: link.pas, line 499:
 * Warning: Unrecognized character 015 in file [247] */
  symbol *s_ptr;
/* p2c: link.pas, line 500:
 * Warning: Unrecognized character 015 in file [247] */
  FILE *ref_file;
/* p2c: link.pas, line 501:
 * Warning: Unrecognized character 015 in file [247] */
  reference *r;
  Char STR1[86];

/* p2c: link.pas, line 502:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 503:
 * Warning: Unrecognized character 015 in file [247] */
  sprintf(STR1, "%s.xrf", cmdroot);
/* p2c: link.pas, line 504:
 * Warning: Unrecognized character 015 in file [247] */
  open(NULL, STR1, history);
/* p2c: link.pas, line 505: Warning: Expected a ')', found a ':=' [227] */
/* p2c: link.pas, line 505: Warning: Symbol 'OPEN' is not defined [221] */
/* p2c: link.pas, line 505:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 506: Note: REWRITE does not specify a name [181] */
  ref_file = tmpfile();
  if (ref_file == NULL)
    _EscIO(FileNotFound);
/* p2c: link.pas, line 506:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 507:
 * Warning: Unrecognized character 015 in file [247] */
  for (i = 0; i <= max_hash; i++) {
/* p2c: link.pas, line 508:
 * Warning: Unrecognized character 015 in file [247] */
    if (hash_table[i] != NULL) {
/* p2c: link.pas, line 509:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 510:
 * Warning: Unrecognized character 015 in file [247] */
      if (debug)
	fprintf(ref_file, "%12ld:\n", i);
/* p2c: link.pas, line 511:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 512:
 * Warning: Unrecognized character 015 in file [247] */
      s_ptr = hash_table[i];
/* p2c: link.pas, line 513:
 * Warning: Unrecognized character 015 in file [247] */
      do {
/* p2c: link.pas, line 514:
 * Warning: Unrecognized character 015 in file [247] */
	refcount = 0;
/* p2c: link.pas, line 515:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 516:
 * Warning: Unrecognized character 015 in file [247] */
	fprintf(ref_file, "%.10s %6.6lx %.10s",
		s_ptr->sname, s_ptr->saddr + baseaddr[s_ptr->ssect + 1],
		s_ptr->mname);
/* p2c: link.pas, line 517:
 * Warning: Unrecognized character 015 in file [247] */
	if (s_ptr->comsize != -1) {
	  fprintf(ref_file, " C:%4.4lx\n", s_ptr->comsize);
/* p2c: link.pas, line 519:
 * Warning: Unrecognized character 015 in file [247] */
	}
/* p2c: link.pas, line 518:
 * Warning: Unrecognized character 015 in file [247] */
	else {
/* p2c: link.pas, line 520:
 * Warning: Unrecognized character 015 in file [247] */
	  if (!s_ptr->sdef) {
	    fprintf(ref_file, " Undef!\n");
/* p2c: link.pas, line 522:
 * Warning: Unrecognized character 015 in file [247] */
	  }
/* p2c: link.pas, line 521:
 * Warning: Unrecognized character 015 in file [247] */
	  else {
	    putc('\n', ref_file);
/* p2c: link.pas, line 523:
 * Warning: Unrecognized character 015 in file [247] */
	  }
	}
/* p2c: link.pas, line 524:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 525:
 * Warning: Unrecognized character 015 in file [247] */
	if (s_ptr->reflist != NULL) {
/* p2c: link.pas, line 526:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 527:
 * Warning: Unrecognized character 015 in file [247] */
	  r = s_ptr->reflist;
/* p2c: link.pas, line 528:
 * Warning: Unrecognized character 015 in file [247] */
	  do {
	    fprintf(ref_file, "%.10s    ", r->rname);
/* p2c: link.pas, line 530:
 * Warning: Unrecognized character 015 in file [247] */
	    refcount++;
/* p2c: link.pas, line 531:
 * Warning: Unrecognized character 015 in file [247] */
	    if (refcount % 6 == 0)
	      putc('\n', ref_file);
/* p2c: link.pas, line 532:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 533:
 * Warning: Unrecognized character 015 in file [247] */
	    r = r->next_ref;
/* p2c: link.pas, line 534:
 * Warning: Unrecognized character 015 in file [247] */
	  } while (r != NULL);
/* p2c: link.pas, line 529:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 535:
 * Warning: Unrecognized character 015 in file [247] */
	  if (refcount % 6 != 0)
	    putc('\n', ref_file);
/* p2c: link.pas, line 536:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 537:
 * Warning: Unrecognized character 015 in file [247] */
	}
/* p2c: link.pas, line 538:
 * Warning: Unrecognized character 015 in file [247] */
	else
	  fprintf(ref_file, "Not referenced ANYWHERE!\n");
/* p2c: link.pas, line 539:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 540:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 541:
 * Warning: Unrecognized character 015 in file [247] */
	fprintf(ref_file,
	  "--------------------------------------------------------------------------\n");
/* p2c: link.pas, line 542:
 * Warning: Unrecognized character 015 in file [247] */
	s_ptr = s_ptr->next_sym;
/* p2c: link.pas, line 543:
 * Warning: Unrecognized character 015 in file [247] */
      } while (s_ptr != NULL);
/* p2c: link.pas, line 544:
 * Warning: Unrecognized character 015 in file [247] */
    }
  }
/* p2c: link.pas, line 545:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 546:
 * Warning: Unrecognized character 015 in file [247] */
  fclose(ref_file);
/* p2c: link.pas, line 547:
 * Warning: Unrecognized character 015 in file [247] */
}  /* disp_xref */
/* p2c: link.pas, line 548: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 549: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 550: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 551: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 552: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 553: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 554: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void add_res(s, addr, offset)
symbol *s;
long addr, offset;
{
  /*--- add a resolved symbol reference to list held per symbol */
  resolve *res_ptr;

/* p2c: link.pas, line 555:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 556:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 557:
 * Warning: Unrecognized character 015 in file [247] */
  res_ptr = (resolve *)Malloc(sizeof(resolve));
/* p2c: link.pas, line 558:
 * Warning: Unrecognized character 015 in file [247] */
  res_ptr->next_res = s->reslist;
/* p2c: link.pas, line 559:
 * Warning: Unrecognized character 015 in file [247] */
  res_ptr->res_addr = addr;
/* p2c: link.pas, line 560:
 * Warning: Unrecognized character 015 in file [247] */
  res_ptr->res_offset = offset;
/* p2c: link.pas, line 561:
 * Warning: Unrecognized character 015 in file [247] */
  s->reslist = res_ptr;
/* p2c: link.pas, line 562:
 * Warning: Unrecognized character 015 in file [247] */
}  /* add_res */
/* p2c: link.pas, line 563: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 564: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 565: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 566: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 567: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 568: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 569: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void read_history(f)
Char *f;
{
  /*--- disp history and read_history must have match in file format */
  symbol *spt;
/* p2c: link.pas, line 570:
 * Warning: Unrecognized character 015 in file [247] */
  resolve *r;
/* p2c: link.pas, line 571:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 572:
 * Warning: Unrecognized character 015 in file [247] */
  filed_history_t history_rec;
/* p2c: link.pas, line 573:
 * Warning: Unrecognized character 015 in file [247] */
  FILE *res_file;
  long FORLIM;
  history_t *WITH;

/* p2c: link.pas, line 574:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 575:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 576:
 * Warning: Unrecognized character 015 in file [247] */
  open(NULL, f, history);
/* p2c: link.pas, line 577: Warning: Expected a ')', found a ':=' [227] */
/* p2c: link.pas, line 577: Warning: Symbol 'OPEN' is not defined [221] */
/* p2c: link.pas, line 577:
 * Warning: Unrecognized character 015 in file [247] */
  rewind(NULL);
/* p2c: link.pas, line 578:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 579:
 * Warning: Unrecognized character 015 in file [247] */
  while (!P_eof(NULL)) {
    fread(&history_rec, sizeof(filed_history_t), 1, NULL);
    FORLIM = history_rec.U1.num_recs;
/* p2c: link.pas, line 582:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 583:
 * Warning: Unrecognized character 015 in file [247] */
    for (i = 1; i <= FORLIM; i++) {
/* p2c: link.pas, line 584:
 * Warning: Unrecognized character 015 in file [247] */
      WITH = &history_rec.U1.recs[i-1];
      switch (WITH->history_type) {

/* p2c: link.pas, line 585:
 * Warning: Unrecognized character 015 in file [247] */
      case $history_obj:
/* p2c: link.pas, line 586:
 * Warning: Unrecognized character 015 in file [247] */
	basepos = WITH->UU.obj_addr;
	break;

/* p2c: link.pas, line 587:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 588:
 * Warning: Unrecognized character 015 in file [247] */
      case $history_symbol:
/* p2c: link.pas, line 589:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 590:
 * Warning: Unrecognized character 015 in file [247] */
	find_insert(WITH->UU.U1.symbol_name, &spt, true);
/* p2c: link.pas, line 591:
 * Warning: Unrecognized character 015 in file [247] */
	spt->shist = true;
/* p2c: link.pas, line 592:
 * Warning: Unrecognized character 015 in file [247] */
	memcpy(spt->mname, "patched!!!", sizeof(sym_name));
/* p2c: link.pas, line 593:
 * Warning: Unrecognized character 015 in file [247] */
	spt->ssect = -1;
/* p2c: link.pas, line 594:
 * Warning: Unrecognized character 015 in file [247] */
	spt->sdef = true;
/* p2c: link.pas, line 595:
 * Warning: Unrecognized character 015 in file [247] */
	spt->saddr = WITH->UU.U1.symbol_addr;
/* p2c: link.pas, line 596:
 * Warning: Unrecognized character 015 in file [247] */
	break;

/* p2c: link.pas, line 597:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 598:
 * Warning: Unrecognized character 015 in file [247] */
      case $history_ref:
	r = (resolve *)Malloc(sizeof(resolve));
/* p2c: link.pas, line 601:
 * Warning: Unrecognized character 015 in file [247] */
	r->next_res = spt->reslist;
/* p2c: link.pas, line 602:
 * Warning: Unrecognized character 015 in file [247] */
	r->res_addr = WITH->UU.U2.ref_addr;
/* p2c: link.pas, line 603:
 * Warning: Unrecognized character 015 in file [247] */
	r->res_offset = WITH->UU.U2.ref_offset;
/* p2c: link.pas, line 604:
 * Warning: Unrecognized character 015 in file [247] */
	spt->reslist = r;
/* p2c: link.pas, line 605:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 611:
 * Warning: Unrecognized character 015 in file [247] */
	break;
/* p2c: link.pas, line 599:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 600:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 606:
 * Warning: Unrecognized character 015 in file [247] */
      }/*WITH CASE*/
    }
/* p2c: link.pas, line 607:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 608:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 580:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 581:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 609:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 610:
 * Warning: Unrecognized character 015 in file [247] */
}  /* read_history */
/* p2c: link.pas, line 612: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 613: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 614: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 615: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 616: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 617: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 618: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 628: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 629: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 638: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 639: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 640: 
 * Warning: Unrecognized character 015 in file [247] */


/* Local variables for disp_history: */
struct LOC_disp_history {
/* p2c: link.pas, line 623:
 * Warning: Unrecognized character 015 in file [247] */
  filed_history_t filed_history_rec;
/* p2c: link.pas, line 624:
 * Warning: Unrecognized character 015 in file [247] */
  FILE *res_file;
} ;

/* p2c: link.pas, line 625:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 626:
 * Warning: Unrecognized character 015 in file [247] */
/*<<<*/
/* p2c: link.pas, line 627:
 * Warning: Unrecognized character 015 in file [247] */
Local Void send_to_file(rec, LINK)
history_t rec;
struct LOC_disp_history *LINK;
{
/* p2c: link.pas, line 630:
 * Warning: Unrecognized character 015 in file [247] */
  LINK->filed_history_rec.U1.num_recs++;
/* p2c: link.pas, line 631:
 * Warning: Unrecognized character 015 in file [247] */
  LINK->filed_history_rec.U1.recs[LINK->filed_history_rec.U1.num_recs - 1] = rec;
/* p2c: link.pas, line 632:
 * Warning: Unrecognized character 015 in file [247] */
  if (LINK->filed_history_rec.U1.num_recs == recs_per_file_rec$) {
    fwrite(&LINK->filed_history_rec, sizeof(filed_history_t), 1,
	   LINK->res_file);
/* p2c: link.pas, line 635:
 * Warning: Unrecognized character 015 in file [247] */
    LINK->filed_history_rec.U1.num_recs = 0;
/* p2c: link.pas, line 636:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 633:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 634:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 637:
 * Warning: Unrecognized character 015 in file [247] */
}


/*>>>*/
/*<<<*/
Static Void disp_history()
{
  /*--- disp history and read_history must have match in file format */
  struct LOC_disp_history V;
  long i;
/* p2c: link.pas, line 619:
 * Warning: Unrecognized character 015 in file [247] */
  symbol *s_ptr;
/* p2c: link.pas, line 620:
 * Warning: Unrecognized character 015 in file [247] */
  resolve *r;
/* p2c: link.pas, line 621:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 622:
 * Warning: Unrecognized character 015 in file [247] */
  history_t history_rec;
  Char STR1[86];

  /*>>>*/
  V.res_file = NULL;
  sprintf(STR1, "%s.his", cmdroot);
/* p2c: link.pas, line 641:
 * Warning: Unrecognized character 015 in file [247] */
  open(NULL, STR1, history);
/* p2c: link.pas, line 642: Warning: Expected a ')', found a ':=' [227] */
/* p2c: link.pas, line 642: Warning: Symbol 'OPEN' is not defined [221] */
/* p2c: link.pas, line 642:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 643: Note: REWRITE does not specify a name [181] */
  V.res_file = tmpfile();
  if (V.res_file == NULL)
    _EscIO(FileNotFound);
/* p2c: link.pas, line 643:
 * Warning: Unrecognized character 015 in file [247] */
  V.filed_history_rec.U1.num_recs = 0;
/* p2c: link.pas, line 644:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 645:
 * Warning: Unrecognized character 015 in file [247] */
  history_rec.history_type = $history_obj;
/* p2c: link.pas, line 646:
 * Warning: Unrecognized character 015 in file [247] */
  history_rec.UU.obj_addr = basepos;
/* p2c: link.pas, line 647:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 648:
 * Warning: Unrecognized character 015 in file [247] */
  /*Write (res_file, history_rec);*/
/* p2c: link.pas, line 649:
 * Warning: Unrecognized character 015 in file [247] */
  send_to_file(history_rec, &V);
/* p2c: link.pas, line 650:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 651:
 * Warning: Unrecognized character 015 in file [247] */
  for (i = 0; i <= max_hash; i++) {
    if (hash_table[i] != NULL) {
/* p2c: link.pas, line 652:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 653:
 * Warning: Unrecognized character 015 in file [247] */
      s_ptr = hash_table[i];
/* p2c: link.pas, line 654:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 655:
 * Warning: Unrecognized character 015 in file [247] */
      do {
/* p2c: link.pas, line 656:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 657:
 * Warning: Unrecognized character 015 in file [247] */
	if (s_ptr->comsize == -1) {   /* dont dump commons in history */
/* p2c: link.pas, line 658:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 659:
 * Warning: Unrecognized character 015 in file [247] */
	  history_rec.history_type = $history_symbol;
/* p2c: link.pas, line 660:
 * Warning: Unrecognized character 015 in file [247] */
	  history_rec.UU.U1.symbol_addr = s_ptr->saddr + baseaddr[s_ptr->ssect + 1];
/* p2c: link.pas, line 661:
 * Warning: Unrecognized character 015 in file [247] */
	  memcpy(history_rec.UU.U1.symbol_name, s_ptr->sname,
		 sizeof(sym_name));
/* p2c: link.pas, line 662:
 * Warning: Unrecognized character 015 in file [247] */
	  /*history_rec.mod_name := s_ptr^.mname;*/
/* p2c: link.pas, line 663:
 * Warning: Unrecognized character 015 in file [247] */
	  /*Write (res_file, history_rec);*/
/* p2c: link.pas, line 664:
 * Warning: Unrecognized character 015 in file [247] */
	  send_to_file(history_rec, &V);
/* p2c: link.pas, line 665:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 666:
 * Warning: Unrecognized character 015 in file [247] */
	  if (s_ptr->reslist != NULL) {
/* p2c: link.pas, line 667:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 668:
 * Warning: Unrecognized character 015 in file [247] */
	    r = s_ptr->reslist;
/* p2c: link.pas, line 669:
 * Warning: Unrecognized character 015 in file [247] */
	    do {
/* p2c: link.pas, line 670:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 671:
 * Warning: Unrecognized character 015 in file [247] */
	      history_rec.history_type = $history_ref;
/* p2c: link.pas, line 672:
 * Warning: Unrecognized character 015 in file [247] */
	      history_rec.UU.U2.ref_addr = r->res_addr;
/* p2c: link.pas, line 673:
 * Warning: Unrecognized character 015 in file [247] */
	      history_rec.UU.U2.ref_offset = r->res_offset;
/* p2c: link.pas, line 674:
 * Warning: Unrecognized character 015 in file [247] */
	      /*Write (res_file, history_rec);*/
/* p2c: link.pas, line 675:
 * Warning: Unrecognized character 015 in file [247] */
	      send_to_file(history_rec, &V);
/* p2c: link.pas, line 676:
 * Warning: Unrecognized character 015 in file [247] */
	      r = r->next_res;
/* p2c: link.pas, line 677:
 * Warning: Unrecognized character 015 in file [247] */
	    } while (r != NULL);
/* p2c: link.pas, line 678:
 * Warning: Unrecognized character 015 in file [247] */
	  }
/* p2c: link.pas, line 679:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 680:
 * Warning: Unrecognized character 015 in file [247] */
	}
/* p2c: link.pas, line 681:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 682:
 * Warning: Unrecognized character 015 in file [247] */
	s_ptr = s_ptr->next_sym;
/* p2c: link.pas, line 683:
 * Warning: Unrecognized character 015 in file [247] */
      } while (s_ptr != NULL);
/* p2c: link.pas, line 684:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 685:
 * Warning: Unrecognized character 015 in file [247] */
    }
  }
/* p2c: link.pas, line 686:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 687:
 * Warning: Unrecognized character 015 in file [247] */
  /* --- Send the last one. */
/* p2c: link.pas, line 688:
 * Warning: Unrecognized character 015 in file [247] */
  if (V.filed_history_rec.U1.num_recs > 0)
    fwrite(&V.filed_history_rec, sizeof(filed_history_t), 1, V.res_file);
/* p2c: link.pas, line 689:
 * Warning: Unrecognized character 015 in file [247] */
  if (V.res_file != NULL)
    fclose(V.res_file);
  V.res_file = NULL;
/* p2c: link.pas, line 690:
 * Warning: Unrecognized character 015 in file [247] */
}  /* disp_history */
/* p2c: link.pas, line 691: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 692: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 693: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 694: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 695: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 696: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void disp_hash()
{
  long i;
/* p2c: link.pas, line 697:
 * Warning: Unrecognized character 015 in file [247] */
  symbol *s_ptr;
/* p2c: link.pas, line 698:
 * Warning: Unrecognized character 015 in file [247] */
  FILE *map_file;
  Char STR1[86];

/* p2c: link.pas, line 699:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 700:
 * Warning: Unrecognized character 015 in file [247] */
  sprintf(STR1, "%s.map", cmdroot);
/* p2c: link.pas, line 701:
 * Warning: Unrecognized character 015 in file [247] */
  open(NULL, STR1, history);
/* p2c: link.pas, line 702: Warning: Expected a ')', found a ':=' [227] */
/* p2c: link.pas, line 702: Warning: Symbol 'OPEN' is not defined [221] */
/* p2c: link.pas, line 702:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 703: Note: REWRITE does not specify a name [181] */
  map_file = tmpfile();
  if (map_file == NULL)
    _EscIO(FileNotFound);
/* p2c: link.pas, line 703:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 704:
 * Warning: Unrecognized character 015 in file [247] */
  for (i = 0; i <= max_hash; i++) {
/* p2c: link.pas, line 705:
 * Warning: Unrecognized character 015 in file [247] */
    if (hash_table[i] != NULL) {
/* p2c: link.pas, line 706:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 707:
 * Warning: Unrecognized character 015 in file [247] */
      if (debug)
	fprintf(map_file, "%12ld:\n", i);
/* p2c: link.pas, line 708:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 709:
 * Warning: Unrecognized character 015 in file [247] */
      s_ptr = hash_table[i];
/* p2c: link.pas, line 710:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 711:
 * Warning: Unrecognized character 015 in file [247] */
      do {
	fprintf(map_file, "%.10s %6.6lx %.10s",
		s_ptr->sname, s_ptr->saddr + baseaddr[s_ptr->ssect + 1],
		s_ptr->mname);
/* p2c: link.pas, line 713:
 * Warning: Unrecognized character 015 in file [247] */
	if (s_ptr->comsize != -1) {
	  fprintf(map_file, " C:%4.4lx\n", s_ptr->comsize);
/* p2c: link.pas, line 715:
 * Warning: Unrecognized character 015 in file [247] */
	}
/* p2c: link.pas, line 714:
 * Warning: Unrecognized character 015 in file [247] */
	else {
/* p2c: link.pas, line 716:
 * Warning: Unrecognized character 015 in file [247] */
	  if (!s_ptr->sdef) {
	    fprintf(map_file, " Undef!\n");
/* p2c: link.pas, line 718:
 * Warning: Unrecognized character 015 in file [247] */
	  }
/* p2c: link.pas, line 717:
 * Warning: Unrecognized character 015 in file [247] */
	  else {
	    putc('\n', map_file);
/* p2c: link.pas, line 719:
 * Warning: Unrecognized character 015 in file [247] */
	  }
	}
/* p2c: link.pas, line 720:
 * Warning: Unrecognized character 015 in file [247] */
	s_ptr = s_ptr->next_sym;
/* p2c: link.pas, line 721:
 * Warning: Unrecognized character 015 in file [247] */
      } while (s_ptr != NULL);
/* p2c: link.pas, line 712:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 722:
 * Warning: Unrecognized character 015 in file [247] */
    }
  }
/* p2c: link.pas, line 723:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 724:
 * Warning: Unrecognized character 015 in file [247] */
  fclose(map_file);
/* p2c: link.pas, line 725:
 * Warning: Unrecognized character 015 in file [247] */
}  /* disp_hash */
/* p2c: link.pas, line 726: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 727: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 728: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 729: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 730: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 731: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 738: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 739: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 749: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 750: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 751: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 752: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 753: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 754: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 760: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 761: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 762: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 763: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 764: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 765: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 778: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 779: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 780: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 781: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 782: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 789: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 790: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 791: 
 * Warning: Unrecognized character 015 in file [247] */


/* Local variables for gen_sym_file: */
struct LOC_gen_sym_file {
/* p2c: link.pas, line 733:
 * Warning: Unrecognized character 015 in file [247] */
  FILE *sym_tab;
/* p2c: link.pas, line 734:
 * Warning: Unrecognized character 015 in file [247] */
  block bl;
} ;

/* p2c: link.pas, line 735:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 736:
 * Warning: Unrecognized character 015 in file [247] */
/*<<<*/
/* p2c: link.pas, line 737:
 * Warning: Unrecognized character 015 in file [247] */
Local Void pbyte(b, LINK)
byte b;
struct LOC_gen_sym_file *LINK;
{
/* p2c: link.pas, line 740:
 * Warning: Unrecognized character 015 in file [247] */
  LINK->bl[bpos] = b;
/* p2c: link.pas, line 741:
 * Warning: Unrecognized character 015 in file [247] */
  bpos++;
/* p2c: link.pas, line 742:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 743:
 * Warning: Unrecognized character 015 in file [247] */
  if (bpos > 255) {
    fwrite(LINK->bl, sizeof(block), 1, LINK->sym_tab);
/* p2c: link.pas, line 746:
 * Warning: Unrecognized character 015 in file [247] */
    bpos = 0;
/* p2c: link.pas, line 747:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 744:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 745:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 748:
 * Warning: Unrecognized character 015 in file [247] */
}  /* pbyte */

/*>>>*/
/*<<<*/
Local Void outdata(s, LINK)
Char *s;
struct LOC_gen_sym_file *LINK;
{
  long i, FORLIM;

/* p2c: link.pas, line 755:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 756:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 757:
 * Warning: Unrecognized character 015 in file [247] */
  pbyte(strlen(s), LINK);
  FORLIM = strlen(s);
/* p2c: link.pas, line 758:
 * Warning: Unrecognized character 015 in file [247] */
  for (i = 0; i < FORLIM; i++)
    pbyte(s[i], LINK);
/* p2c: link.pas, line 759:
 * Warning: Unrecognized character 015 in file [247] */
}  /* outdata */

/*>>>*/
/*<<<*/
Local Char *binint(Result, val, LINK)
Char *Result;
long val;
struct LOC_gen_sym_file *LINK;
{  /* bintval */
  string b;
/* p2c: link.pas, line 766:
 * Warning: Unrecognized character 015 in file [247] */
  long i;

/* p2c: link.pas, line 767:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 768:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 769:
 * Warning: Unrecognized character 015 in file [247] */
  b[4] = '\0';
/* p2c: link.pas, line 770:
 * Warning: Unrecognized character 015 in file [247] */
  for (i = 3; i >= 0; i--) {
/* p2c: link.pas, line 771:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 772:
 * Warning: Unrecognized character 015 in file [247] */
    b[i] = (Char)val;
/* p2c: link.pas, line 773:
 * Warning: Unrecognized character 015 in file [247] */
    val = mvr(val);
/* p2c: link.pas, line 774:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 775:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 776:
 * Warning: Unrecognized character 015 in file [247] */
  return strcpy(Result, b);
/* p2c: link.pas, line 777:
 * Warning: Unrecognized character 015 in file [247] */
}  /* bintval */

/*>>>*/
/*<<<*/
Local Void out_sym(s, LINK)
symbol *s;
struct LOC_gen_sym_file *LINK;
{
  Char STR2[46];
  string STR3;
  Char STR4[146];

  sprintf(STR2, "1%.10sVRLvvvvuuccccccccffffffffxxtttddd", s->mname);
/* p2c: link.pas, line 783:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 784:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 785:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 788:
 * Warning: Unrecognized character 015 in file [247] */
  outdata(STR2, LINK);
  sprintf(STR4, "2P%.10s%s",
	  s->sname, binint(STR3, s->saddr + baseaddr[s->ssect + 1], LINK));
/* p2c: link.pas, line 786:
 * Warning: Unrecognized character 015 in file [247] */
  outdata(STR4, LINK);
/* p2c: link.pas, line 787:
 * Warning: Unrecognized character 015 in file [247] */
}  /* out_sym */


/*>>>*/
/*<<<*/
Static Void gen_sym_file()
{
  struct LOC_gen_sym_file V;
  long i;
/* p2c: link.pas, line 732:
 * Warning: Unrecognized character 015 in file [247] */
  symbol *s_ptr;
  Char STR1[86];
  string STR2;
  Char STR3[136];

  /*>>>*/
  V.sym_tab = NULL;
/* p2c: link.pas, line 792:
 * Warning: Unrecognized character 015 in file [247] */
  bpos = 0;
  sprintf(STR1, "%s.sym", cmdroot);
/* p2c: link.pas, line 793:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 794:
 * Warning: Unrecognized character 015 in file [247] */
  open(NULL, STR1, history);
/* p2c: link.pas, line 795: Warning: Expected a ')', found a ':=' [227] */
/* p2c: link.pas, line 795: Warning: Symbol 'OPEN' is not defined [221] */
/* p2c: link.pas, line 795:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 796: Note: REWRITE does not specify a name [181] */
  V.sym_tab = tmpfile();
  if (V.sym_tab == NULL)
    _EscIO(FileNotFound);
/* p2c: link.pas, line 796:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 797:
 * Warning: Unrecognized character 015 in file [247] */
  for (i = 0; i <= max_hash; i++) {
/* p2c: link.pas, line 798:
 * Warning: Unrecognized character 015 in file [247] */
    if (hash_table[i] != NULL) {
/* p2c: link.pas, line 799:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 800:
 * Warning: Unrecognized character 015 in file [247] */
      s_ptr = hash_table[i];
/* p2c: link.pas, line 801:
 * Warning: Unrecognized character 015 in file [247] */
      do {
/* p2c: link.pas, line 802:
 * Warning: Unrecognized character 015 in file [247] */
	out_sym(s_ptr, &V);
/* p2c: link.pas, line 803:
 * Warning: Unrecognized character 015 in file [247] */
	s_ptr = s_ptr->next_sym;
/* p2c: link.pas, line 804:
 * Warning: Unrecognized character 015 in file [247] */
      } while (s_ptr != NULL);
/* p2c: link.pas, line 805:
 * Warning: Unrecognized character 015 in file [247] */
    }
  }
  sprintf(STR3, "4\021%s", binint(STR2, 0L, &V));
/* p2c: link.pas, line 806:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 807:
 * Warning: Unrecognized character 015 in file [247] */
  outdata(STR3, &V);   /*module end record*/
/* p2c: link.pas, line 808:
 * Warning: Unrecognized character 015 in file [247] */
  if (bpos > 0) {
/* p2c: link.pas, line 809:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 810:
 * Warning: Unrecognized character 015 in file [247] */
    for (i = bpos; i <= 255; i++) {
/* p2c: link.pas, line 811:
 * Warning: Unrecognized character 015 in file [247] */
      V.bl[i] = 0;
    }
/* p2c: link.pas, line 812:
 * Warning: Unrecognized character 015 in file [247] */
    fwrite(V.bl, sizeof(block), 1, V.sym_tab);
/* p2c: link.pas, line 813:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 814:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 815:
 * Warning: Unrecognized character 015 in file [247] */
  if (V.sym_tab != NULL)
    fclose(V.sym_tab);
  V.sym_tab = NULL;
/* p2c: link.pas, line 816:
 * Warning: Unrecognized character 015 in file [247] */
}  /* gen_sym_file */
/* p2c: link.pas, line 817: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 818: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 819: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 820: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 821: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 822: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void open_log_file()
{
  Char STR1[86];

  sprintf(STR1, "%s.log", cmdroot);
/* p2c: link.pas, line 823:
 * Warning: Unrecognized character 015 in file [247] */
  open(log_file, STR1, history);
/* p2c: link.pas, line 824: Warning: Expected a ')', found a ':=' [227] */
/* p2c: link.pas, line 824: Warning: Symbol 'OPEN' is not defined [221] */
/* p2c: link.pas, line 824:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 825: Note: REWRITE does not specify a name [181] */
  if (log_file != NULL)
    rewind(log_file);
  else
    log_file = tmpfile();
  if (log_file == NULL)
    _EscIO(FileNotFound);
/* p2c: link.pas, line 825:
 * Warning: Unrecognized character 015 in file [247] */
  fprintf(log_file, "Linking from %s\n", full_filename);
/* p2c: link.pas, line 826:
 * Warning: Unrecognized character 015 in file [247] */
}  /*open_log_file*/
/* p2c: link.pas, line 827: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 828: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 829: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 830: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 831: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 832: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void close_log_file()
{
  long total, i;
/* p2c: link.pas, line 833:
 * Warning: Unrecognized character 015 in file [247] */
  Char datestring[11];

/* p2c: link.pas, line 834:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 835:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 836:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 837:
 * Warning: Unrecognized character 015 in file [247] */
  if (english) {
    putc('\n', log_file);
/* p2c: link.pas, line 840:
 * Warning: Unrecognized character 015 in file [247] */
    total = 0;
/* p2c: link.pas, line 841:
 * Warning: Unrecognized character 015 in file [247] */
    if (sectbase[9] != 0) {
      fprintf(log_file, "Size of P                 (8)  = %8ld bytes\n",
	      sectbase[9]);
/* p2c: link.pas, line 844:
 * Warning: Unrecognized character 015 in file [247] */
      total += sectbase[9];
/* p2c: link.pas, line 845:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 842:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 843:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 846:
 * Warning: Unrecognized character 015 in file [247] */
    if (sectbase[10] != 0) {
      fprintf(log_file, "Size of HELP              (9)  = %8ld bytes\n",
	      sectbase[10]);
/* p2c: link.pas, line 849:
 * Warning: Unrecognized character 015 in file [247] */
      total += sectbase[10];
/* p2c: link.pas, line 850:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 847:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 848:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 851:
 * Warning: Unrecognized character 015 in file [247] */
    if (sectbase[13] != 0) {
      fprintf(log_file, "Size of error messages   (12)  = %8ld bytes\n",
	      sectbase[13]);
/* p2c: link.pas, line 854:
 * Warning: Unrecognized character 015 in file [247] */
      total += sectbase[13];
/* p2c: link.pas, line 855:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 852:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 853:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 856:
 * Warning: Unrecognized character 015 in file [247] */
    if (sectbase[14] != 0) {
      fprintf(log_file, "Size of code & constants (13)  = %8ld bytes\n",
	      sectbase[14]);
/* p2c: link.pas, line 859:
 * Warning: Unrecognized character 015 in file [247] */
      total += sectbase[14];
/* p2c: link.pas, line 860:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 857:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 858:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 861:
 * Warning: Unrecognized character 015 in file [247] */
    if (sectbase[15] != 0) {
      fprintf(log_file, "Size of diagnostic block (14)  = %8ld bytes\n",
	      sectbase[15]);
/* p2c: link.pas, line 864:
 * Warning: Unrecognized character 015 in file [247] */
      total += sectbase[15];
/* p2c: link.pas, line 865:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 862:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 863:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 866:
 * Warning: Unrecognized character 015 in file [247] */
    if (sectbase[16] != 0) {
      fprintf(log_file, "Size of global variables (15)  = %8ld bytes\n",
	      sectbase[16]);
/* p2c: link.pas, line 869:
 * Warning: Unrecognized character 015 in file [247] */
      total += sectbase[16];
/* p2c: link.pas, line 870:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 867:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 868:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 871:
 * Warning: Unrecognized character 015 in file [247] */
    fprintf(log_file, "Total size                     = %8ld bytes\n", total);
/* p2c: link.pas, line 872:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 838:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 839:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 873:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 874:
 * Warning: Unrecognized character 015 in file [247] */
  else {
    for (i = 1; i <= 16; i++) {
/* p2c: link.pas, line 875:
 * Warning: Unrecognized character 015 in file [247] */
      if (sectbase[i] != 0) {
	fprintf(log_file, "Section %2ld Start %6.6lx Length %6.6lx",
		i - 1, baseaddr[i], sectbase[i]);
/* p2c: link.pas, line 878:
 * Warning: Unrecognized character 015 in file [247] */
	fprintf(log_file, " Finish  %6.6lx\n", baseaddr[i] + sectbase[i]);
/* p2c: link.pas, line 879:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 876:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 877:
 * Warning: Unrecognized character 015 in file [247] */
    }
  }
/* p2c: link.pas, line 880:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 881:
 * Warning: Unrecognized character 015 in file [247] */
  VAXdate(datestring);
/* p2c: link.pas, line 882:
 * Warning: Unrecognized character 015 in file [247] */
  fprintf(log_file, "\nLink started %.11s %.11s\n",
	  start_link.time_of_day, datestring);
/* p2c: link.pas, line 883:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 884:
 * Warning: Unrecognized character 015 in file [247] */
  fprintf(log_file, "Link ended   %.11s %.11s\n",
	  end_link.time_of_day, datestring);
/* p2c: link.pas, line 885:
 * Warning: Unrecognized character 015 in file [247] */
  fprintf(log_file, "total CPU time:- %7.2f\n",
	  (end_link.mill_time - start_link.mill_time) / 1000.0);
/* p2c: link.pas, line 886:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 887:
 * Warning: Unrecognized character 015 in file [247] */
  if (log_file != NULL)
    fclose(log_file);
  log_file = NULL;
/* p2c: link.pas, line 888:
 * Warning: Unrecognized character 015 in file [247] */
}  /* close_log_file */
/* p2c: link.pas, line 889: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 890: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 891: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 892: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 893: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 894: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void alloc_com()
{
  symbol *s_ptr;

/* p2c: link.pas, line 895:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 896:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 897:
 * Warning: Unrecognized character 015 in file [247] */
  s_ptr = com_head;
/* p2c: link.pas, line 898:
 * Warning: Unrecognized character 015 in file [247] */
  while (s_ptr != NULL) {
/* p2c: link.pas, line 899:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 900:
 * Warning: Unrecognized character 015 in file [247] */
    s_ptr->saddr = sectbase[s_ptr->ssect + 1];
/* p2c: link.pas, line 901:
 * Warning: Unrecognized character 015 in file [247] */
    sectbase[s_ptr->ssect + 1] += s_ptr->comsize;
/* p2c: link.pas, line 902:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 903:
 * Warning: Unrecognized character 015 in file [247] */
    if (sectbase[s_ptr->ssect + 1] & 1) {
/* p2c: link.pas, line 904:
 * Warning: Unrecognized character 015 in file [247] */
      sectbase[s_ptr->ssect + 1]++;
    }
/* p2c: link.pas, line 905:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 906:
 * Warning: Unrecognized character 015 in file [247] */
    s_ptr = s_ptr->next_com;
/* p2c: link.pas, line 907:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 908:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 909:
 * Warning: Unrecognized character 015 in file [247] */
}  /* alloc_com */
/* p2c: link.pas, line 910: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 911: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 912: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 913: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 914: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 915: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 916: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 919: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 920: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 924: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 925: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 926: 
 * Warning: Unrecognized character 015 in file [247] */


/* p2c: link.pas, line 917:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 918:
 * Warning: Unrecognized character 015 in file [247] */
Local boolean clash(i, j)
long i, j;
{
/* p2c: link.pas, line 921:
 * Warning: Unrecognized character 015 in file [247] */
  return (sectbase[i+1] + baseaddr[i+1] > baseaddr[j+1] &&
	  sectbase[j+1] + baseaddr[j+1] > baseaddr[i+1]);
/* p2c: link.pas, line 922:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 923:
 * Warning: Unrecognized character 015 in file [247] */
}  /* clash */


/*>>>*/
/*<<<*/
Static Void overlap_check()
{  /* overlap check */
  long i, j;

/* p2c: link.pas, line 927:
 * Warning: Unrecognized character 015 in file [247] */
  for (i = 0; i <= 14; i++) {
/* p2c: link.pas, line 928:
 * Warning: Unrecognized character 015 in file [247] */
    for (j = i + 1; j <= 15; j++) {
/* p2c: link.pas, line 929:
 * Warning: Unrecognized character 015 in file [247] */
      if (clash(i, j)) {
/* p2c: link.pas, line 930:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 931:
 * Warning: Unrecognized character 015 in file [247] */
	return_code = ql_sctovrlap;
/* p2c: link.pas, line 932:
 * Warning: Unrecognized character 015 in file [247] */
	printf("Sections %2ld and %2ld overlap!\n", i, j);
/* p2c: link.pas, line 933:
 * Warning: Unrecognized character 015 in file [247] */
      }
    }
  }
/* p2c: link.pas, line 934:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 935:
 * Warning: Unrecognized character 015 in file [247] */
}  /* overlap check */
/* p2c: link.pas, line 936: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 937: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 938: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 939: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 940: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 941: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void check_undef()
{
  long i;
/* p2c: link.pas, line 942:
 * Warning: Unrecognized character 015 in file [247] */
  symbol *s_ptr;

/* p2c: link.pas, line 943:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 944:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 945:
 * Warning: Unrecognized character 015 in file [247] */
  return_code = ql_undefsym;
/* p2c: link.pas, line 946:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 947:
 * Warning: Unrecognized character 015 in file [247] */
  printf("Undefined symbols:-\n");
/* p2c: link.pas, line 948:
 * Warning: Unrecognized character 015 in file [247] */
  if (log_)
    fprintf(log_file, "Undefined symbols:-\n");
/* p2c: link.pas, line 949:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 950:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 951:
 * Warning: Unrecognized character 015 in file [247] */
  for (i = 0; i <= max_hash; i++) {
/* p2c: link.pas, line 952:
 * Warning: Unrecognized character 015 in file [247] */
    if (hash_table[i] != NULL) {
/* p2c: link.pas, line 953:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 954:
 * Warning: Unrecognized character 015 in file [247] */
      s_ptr = hash_table[i];
/* p2c: link.pas, line 955:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 956:
 * Warning: Unrecognized character 015 in file [247] */
      do {
/* p2c: link.pas, line 957:
 * Warning: Unrecognized character 015 in file [247] */
	if (!s_ptr->sdef) {
	  printf("'%.10s' first referenced in module '%.10s'\n",
		 s_ptr->sname, s_ptr->mname);
/* p2c: link.pas, line 960:
 * Warning: Unrecognized character 015 in file [247] */
	  if (log_)
	    fprintf(log_file, "'%.10s' first referenced in module '%.10s'\n",
		    s_ptr->sname, s_ptr->mname);
/* p2c: link.pas, line 961:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 962:
 * Warning: Unrecognized character 015 in file [247] */
	  s_ptr->ssect = -1;
/* p2c: link.pas, line 963:
 * Warning: Unrecognized character 015 in file [247] */
	  s_ptr->saddr = 0xfaffL;
/* p2c: link.pas, line 964:
 * Warning: Unrecognized character 015 in file [247] */
	}
/* p2c: link.pas, line 958:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 959:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 965:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 966:
 * Warning: Unrecognized character 015 in file [247] */
	s_ptr = s_ptr->next_sym;
/* p2c: link.pas, line 967:
 * Warning: Unrecognized character 015 in file [247] */
      } while (s_ptr != NULL);
/* p2c: link.pas, line 968:
 * Warning: Unrecognized character 015 in file [247] */
    }
  }
/* p2c: link.pas, line 969:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 970:
 * Warning: Unrecognized character 015 in file [247] */
}  /* check undef */
/* p2c: link.pas, line 971: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 972: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 973: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 974: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 975: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static byte gbyte()
{
  byte Result;

/* p2c: link.pas, line 976:
 * Warning: Unrecognized character 015 in file [247] */
  Result = o[bpos-1];
/* p2c: link.pas, line 977:
 * Warning: Unrecognized character 015 in file [247] */
  bpos++;
/* p2c: link.pas, line 978:
 * Warning: Unrecognized character 015 in file [247] */
  return Result;
}  /* gbyte */
/* p2c: link.pas, line 979: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 980: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 981: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 982: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 983: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 984: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Char *getnam(Result)
Char *Result;
{
  long i;
/* p2c: link.pas, line 985:
 * Warning: Unrecognized character 015 in file [247] */
  sym_name sn;

/* p2c: link.pas, line 986:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 987:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 988:
 * Warning: Unrecognized character 015 in file [247] */
  for (i = 0; i <= 9; i++) {
/* p2c: link.pas, line 989:
 * Warning: Unrecognized character 015 in file [247] */
    sn[i] = gbyte();
  }
/* p2c: link.pas, line 990:
 * Warning: Unrecognized character 015 in file [247] */
  return memcpy(Result, sn, sizeof(sym_name));
/* p2c: link.pas, line 991:
 * Warning: Unrecognized character 015 in file [247] */
}  /* getnam */
/* p2c: link.pas, line 992: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 993: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 994: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 995: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 996: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 997: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static long getint()
{
  long i = 0;
  long j;

/* p2c: link.pas, line 998:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 999:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1000:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1001:
 * Warning: Unrecognized character 015 in file [247] */
  for (j = 1; j <= 4; j++) {
/* p2c: link.pas, line 1002:
 * Warning: Unrecognized character 015 in file [247] */
    i = mvl(i) + gbyte();
  }
/* p2c: link.pas, line 1003:
 * Warning: Unrecognized character 015 in file [247] */
  return i;
/* p2c: link.pas, line 1004:
 * Warning: Unrecognized character 015 in file [247] */
}  /* get_int */
/* p2c: link.pas, line 1005: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1006: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1007: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1008: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1009: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void doubledef(s)
symbol *s;
{
/* p2c: link.pas, line 1010:
 * Warning: Unrecognized character 015 in file [247] */
  return_code = ql_dbldefsym;
/* p2c: link.pas, line 1011:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1012:
 * Warning: Unrecognized character 015 in file [247] */
  showmod();
/* p2c: link.pas, line 1013:
 * Warning: Unrecognized character 015 in file [247] */
  printf("Doubly defined label  '%.10s'\n", s->sname);
/* p2c: link.pas, line 1014:
 * Warning: Unrecognized character 015 in file [247] */
  printf("Previously defined in module '%.10s'\n", s->mname);
/* p2c: link.pas, line 1015:
 * Warning: Unrecognized character 015 in file [247] */
  if (log_) {
    fprintf(log_file, "Doubly defined label  '%.10s'\n", s->sname);
/* p2c: link.pas, line 1018:
 * Warning: Unrecognized character 015 in file [247] */
    fprintf(log_file, "Previously defined in module '%.10s'\n", s->mname);
/* p2c: link.pas, line 1019:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 1016:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1017:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1020:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1021:
 * Warning: Unrecognized character 015 in file [247] */
  s->sflagged = true;
/* p2c: link.pas, line 1022:
 * Warning: Unrecognized character 015 in file [247] */
}  /* doubledef */
/* p2c: link.pas, line 1023: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1024: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1025: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1026: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1027: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void binbyte(b)
byte b;
{
/* p2c: link.pas, line 1028:
 * Warning: Unrecognized character 015 in file [247] */
  oblock[opos] = b;
/* p2c: link.pas, line 1029:
 * Warning: Unrecognized character 015 in file [247] */
  opos++;
/* p2c: link.pas, line 1030:
 * Warning: Unrecognized character 015 in file [247] */
  if (opos <= 511)
    return;
/* p2c: link.pas, line 1038:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1039:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1031:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1032:
 * Warning: Unrecognized character 015 in file [247] */
  if (out)
    fwrite(oblock, sizeof(bblock), 1, bfile);
/* p2c: link.pas, line 1033:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1034:
 * Warning: Unrecognized character 015 in file [247] */
  if (download)
    fwrite(oblock, sizeof(bblock), 1, btgtfile);
/* p2c: link.pas, line 1035:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1036:
 * Warning: Unrecognized character 015 in file [247] */
  opos = 0;
/* p2c: link.pas, line 1037:
 * Warning: Unrecognized character 015 in file [247] */
}  /* binbyte */
/* p2c: link.pas, line 1040: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1041: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1042: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1043: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1044: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1045: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void sendbin(b)
byte b;
{
/* p2c: link.pas, line 1046:
 * Warning: Unrecognized character 015 in file [247] */
  if (b == esc && escape == true) {
/* p2c: link.pas, line 1047:
 * Warning: Unrecognized character 015 in file [247] */
    binbyte(b);
  }
/* p2c: link.pas, line 1048:
 * Warning: Unrecognized character 015 in file [247] */
  binbyte(b);
/* p2c: link.pas, line 1049:
 * Warning: Unrecognized character 015 in file [247] */
}  /* sendbin */
/* p2c: link.pas, line 1050: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1051: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1052: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1053: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1054: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void sendsfnewline()
{
/* p2c: link.pas, line 1055:
 * Warning: Unrecognized character 015 in file [247] */
  if (download)
    putc('\n', tgtfile);
/* p2c: link.pas, line 1056:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1057:
 * Warning: Unrecognized character 015 in file [247] */
  if (out)
    putc('\n', sfile);
/* p2c: link.pas, line 1058:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1059:
 * Warning: Unrecognized character 015 in file [247] */
}  /* senddfnewline */
/* p2c: link.pas, line 1060: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1061: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1062: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1063: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1064: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void sendsform(s)
Char *s;
{
/* p2c: link.pas, line 1065:
 * Warning: Unrecognized character 015 in file [247] */
  if (out)
    fputs(s, sfile);
/* p2c: link.pas, line 1066:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1067:
 * Warning: Unrecognized character 015 in file [247] */
  if (download)
    fputs(s, tgtfile);
/* p2c: link.pas, line 1068:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1069:
 * Warning: Unrecognized character 015 in file [247] */
}  /* sendsform */
/* p2c: link.pas, line 1070: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1071: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1072: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1073: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1074: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1075: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void wbyte(b)
byte b;
{
  string s;

/* p2c: link.pas, line 1076:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1077:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1078:
 * Warning: Unrecognized character 015 in file [247] */
  if (bin) {
/* p2c: link.pas, line 1079:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1080:
 * Warning: Unrecognized character 015 in file [247] */
    sendbin(b);
/* p2c: link.pas, line 1081:
 * Warning: Unrecognized character 015 in file [247] */
    checksum = ixor(checksum, (long)b);
/* p2c: link.pas, line 1082:
 * Warning: Unrecognized character 015 in file [247] */
    return;
  }
/* p2c: link.pas, line 1083:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1084:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1085:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1086:
 * Warning: Unrecognized character 015 in file [247] */
  sprintf(s, "%2.2x", b);
/* p2c: link.pas, line 1087:
 * Warning: Unrecognized character 015 in file [247] */
  sendsform(s);
/* p2c: link.pas, line 1088:
 * Warning: Unrecognized character 015 in file [247] */
  checksum += b;
/* p2c: link.pas, line 1089:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1090:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1091:
 * Warning: Unrecognized character 015 in file [247] */
}  /* wbyte */
/* p2c: link.pas, line 1092: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1093: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1094: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1095: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1096: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1097: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void endpacket()
{
  string s;

/* p2c: link.pas, line 1098:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1099:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1100:
 * Warning: Unrecognized character 015 in file [247] */
  if (bin) {
/* p2c: link.pas, line 1101:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1102:
 * Warning: Unrecognized character 015 in file [247] */
    sendbin((int)checksum);
    return;
  }
/* p2c: link.pas, line 1103:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1104:
 * Warning: Unrecognized character 015 in file [247] */
  sprintf(s, "%2.2lx", 255 - (checksum & 255));
/* p2c: link.pas, line 1105:
 * Warning: Unrecognized character 015 in file [247] */
  sendsform(s);
/* p2c: link.pas, line 1106:
 * Warning: Unrecognized character 015 in file [247] */
  sendsfnewline();
/* p2c: link.pas, line 1107:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1108:
 * Warning: Unrecognized character 015 in file [247] */
}  /* endpacket */
/* p2c: link.pas, line 1109: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1110: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1111: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1112: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1113: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1114: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1115: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void procid()
{
  /*same on both passes*/
  union {
/* p2c: link.pas, line 1116:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1117:
 * Warning: Unrecognized character 015 in file [247] */
    objrec ob;
/* p2c: link.pas, line 1118:
 * Warning: Unrecognized character 015 in file [247] */
    idrec id;
  } coerce;
/* p2c: link.pas, line 1120:
 * Warning: Unrecognized character 015 in file [247] */
  long sect;

/* p2c: link.pas, line 1121:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1122:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1123:
 * Warning: Unrecognized character 015 in file [247] */
  topesd = 17;
/* p2c: link.pas, line 1124:
 * Warning: Unrecognized character 015 in file [247] */
  esdarr[0] = 0;   /*unused esd value*/
/* p2c: link.pas, line 1125:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1126:
 * Warning: Unrecognized character 015 in file [247] */
  strcpy(coerce.ob, o);
/* p2c: link.pas, line 1127:
 * Warning: Unrecognized character 015 in file [247] */
  memcpy(mod_id, coerce.id.modname, sizeof(sym_name));
/* p2c: link.pas, line 1128:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1129:
 * Warning: Unrecognized character 015 in file [247] */
  /*--- we need to init these esd values, in case of zero length sections*/
/* p2c: link.pas, line 1130:
 * Warning: Unrecognized character 015 in file [247] */
  if (pass != 2) {
/* p2c: link.pas, line 1155:
 * Warning: Unrecognized character 015 in file [247] */
    if (chat || debug) {
      printf("Pass 1 of %.10s:\n", mod_id);
/* p2c: link.pas, line 1157:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1158:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 1156:
 * Warning: Unrecognized character 015 in file [247] */
    return;
  }
/* p2c: link.pas, line 1153:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1154:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1131:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1132:
 * Warning: Unrecognized character 015 in file [247] */
  if (chat || debug)
    printf("Pass 2 of %.10s:\n", mod_id);
/* p2c: link.pas, line 1133:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1134:
 * Warning: Unrecognized character 015 in file [247] */
  if (modules) {
    fprintf(mod_file, "%.10s:", mod_id);
/* p2c: link.pas, line 1137:
 * Warning: Unrecognized character 015 in file [247] */
    if (files) {
/* p2c: link.pas, line 1138:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1139:
 * Warning: Unrecognized character 015 in file [247] */
      if (strlen(file_id) < 50) {
	fprintf(mod_file, "%50s:", "");
/* p2c: link.pas, line 1141:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 1140:
 * Warning: Unrecognized character 015 in file [247] */
      else
	fprintf(mod_file, "%s:", file_id);
    }
/* p2c: link.pas, line 1144:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 1135:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1136:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1142:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1143:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1145:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1146:
 * Warning: Unrecognized character 015 in file [247] */
  for (sect = 1; sect <= 16; sect++) {
/* p2c: link.pas, line 1147:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1148:
 * Warning: Unrecognized character 015 in file [247] */
    esdarr[sect] = baseaddr[sect] + sbase[sect];
/* p2c: link.pas, line 1149:
 * Warning: Unrecognized character 015 in file [247] */
    esdsymarr[topesd] = NULL;
/* p2c: link.pas, line 1150:
 * Warning: Unrecognized character 015 in file [247] */
    outaddr[sect] = esdarr[sect];
/* p2c: link.pas, line 1151:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 1152:
 * Warning: Unrecognized character 015 in file [247] */
}  /* procid */
/* p2c: link.pas, line 1159: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1160: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1161: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1162: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1163: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1164: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1165: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1166: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1167: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1168: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1169: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1170: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1178: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1179: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1180: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1181: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1182: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1183: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1326: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1327: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1328: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1332: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1333: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1334: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1335: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1336: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1338: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1339: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1340: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1341: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1342: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1344: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1345: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1346: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1347: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1348: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1349: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1362: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1363: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1364: 
 * Warning: Unrecognized character 015 in file [247] */


Local Void add_ref(s, mod_name)
symbol *s;
Char *mod_name;
{
  reference *r_ptr;

/* p2c: link.pas, line 1171:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1172:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1173:
 * Warning: Unrecognized character 015 in file [247] */
  r_ptr = (reference *)Malloc(sizeof(reference));
/* p2c: link.pas, line 1174:
 * Warning: Unrecognized character 015 in file [247] */
  r_ptr->next_ref = s->reflist;
/* p2c: link.pas, line 1175:
 * Warning: Unrecognized character 015 in file [247] */
  memcpy(r_ptr->rname, mod_name, sizeof(sym_name));
/* p2c: link.pas, line 1176:
 * Warning: Unrecognized character 015 in file [247] */
  s->reflist = r_ptr;
/* p2c: link.pas, line 1177:
 * Warning: Unrecognized character 015 in file [247] */
}  /* add_ref */

/*>>>*/
/*<<<*/
Local Void doesd()
{
  byte ty;
/* p2c: link.pas, line 1184:
 * Warning: Unrecognized character 015 in file [247] */
  long sect;
/* p2c: link.pas, line 1185:
 * Warning: Unrecognized character 015 in file [247] */
  sym_name s;
/* p2c: link.pas, line 1186:
 * Warning: Unrecognized character 015 in file [247] */
  boolean b;
/* p2c: link.pas, line 1187:
 * Warning: Unrecognized character 015 in file [247] */
  long i;
/* p2c: link.pas, line 1188:
 * Warning: Unrecognized character 015 in file [247] */
  symbol *spt;

/* p2c: link.pas, line 1189:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1190:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1191:
 * Warning: Unrecognized character 015 in file [247] */
  ty = gbyte();
/* p2c: link.pas, line 1192:
 * Warning: Unrecognized character 015 in file [247] */
  sect = ty & 15;
/* p2c: link.pas, line 1193:
 * Warning: Unrecognized character 015 in file [247] */
  ty /= 16;
/* p2c: link.pas, line 1194:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1195:
 * Warning: Unrecognized character 015 in file [247] */
  switch (ty) {

/* p2c: link.pas, line 1196:
 * Warning: Unrecognized character 015 in file [247] */
  case 0:
    bpos += 8;
    break;

/* p2c: link.pas, line 1197:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1198:
 * Warning: Unrecognized character 015 in file [247] */
  case 1:  /* common area symbol */
/* p2c: link.pas, line 1199:
 * Warning: Unrecognized character 015 in file [247] */
    getnam(s);
/* p2c: link.pas, line 1200:
 * Warning: Unrecognized character 015 in file [247] */
    i = getint();
/* p2c: link.pas, line 1201:
 * Warning: Unrecognized character 015 in file [247] */
    b = find_insert(s, &spt, true);
/* p2c: link.pas, line 1202:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1203:
 * Warning: Unrecognized character 015 in file [247] */
    if (debug)
      printf("Common data - section %2ld %.10s length = %6.6lx\n", sect, s, i);
/* p2c: link.pas, line 1204:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1205:
 * Warning: Unrecognized character 015 in file [247] */
    if (xref)
      add_ref(spt, mod_id);
/* p2c: link.pas, line 1206:
 * Warning: Unrecognized character 015 in file [247] */
    if (!spt->sdef) {
/* p2c: link.pas, line 1207:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1208:
 * Warning: Unrecognized character 015 in file [247] */
      if (b)
	undefsym--;
/* p2c: link.pas, line 1209:
 * Warning: Unrecognized character 015 in file [247] */
      memcpy(spt->mname, mod_id, sizeof(sym_name));
/* p2c: link.pas, line 1210:
 * Warning: Unrecognized character 015 in file [247] */
      spt->ssect = sect;
/* p2c: link.pas, line 1211:
 * Warning: Unrecognized character 015 in file [247] */
      spt->sdef = true;
/* p2c: link.pas, line 1212:
 * Warning: Unrecognized character 015 in file [247] */
      spt->comsize = i;
/* p2c: link.pas, line 1213:
 * Warning: Unrecognized character 015 in file [247] */
      if (prev_com != NULL) {
/* p2c: link.pas, line 1214:
 * Warning: Unrecognized character 015 in file [247] */
	prev_com->next_com = spt;
/* p2c: link.pas, line 1215:
 * Warning: Unrecognized character 015 in file [247] */
      } else {
/* p2c: link.pas, line 1216:
 * Warning: Unrecognized character 015 in file [247] */
	com_head = spt;
      }
/* p2c: link.pas, line 1217:
 * Warning: Unrecognized character 015 in file [247] */
      spt->next_com = NULL;
/* p2c: link.pas, line 1218:
 * Warning: Unrecognized character 015 in file [247] */
      prev_com = spt;
/* p2c: link.pas, line 1219:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 1220:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1221:
 * Warning: Unrecognized character 015 in file [247] */
    else {
/* p2c: link.pas, line 1222:
 * Warning: Unrecognized character 015 in file [247] */
      if (i != spt->comsize) {
/* p2c: link.pas, line 1223:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1224:
 * Warning: Unrecognized character 015 in file [247] */
	if (!spt->sflagged && spt->comsize == -1) {
/* p2c: link.pas, line 1225:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1226:
 * Warning: Unrecognized character 015 in file [247] */
	  return_code = ql_dbldefsym;
/* p2c: link.pas, line 1227:
 * Warning: Unrecognized character 015 in file [247] */
	  showmod();
/* p2c: link.pas, line 1228:
 * Warning: Unrecognized character 015 in file [247] */
	  printf("Label '%.10s' is used double defined - \n", s);
/* p2c: link.pas, line 1229:
 * Warning: Unrecognized character 015 in file [247] */
	  printf("as a common in module '%.10s'\n", mod_id);
/* p2c: link.pas, line 1230:
 * Warning: Unrecognized character 015 in file [247] */
	  printf(" and as an XDEF in module '%.10s'\n", spt->mname);
/* p2c: link.pas, line 1231:
 * Warning: Unrecognized character 015 in file [247] */
	  spt->sflagged = true;
/* p2c: link.pas, line 1232:
 * Warning: Unrecognized character 015 in file [247] */
	}
/* p2c: link.pas, line 1233:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1234:
 * Warning: Unrecognized character 015 in file [247] */
	else if (check && !spt->sflagged) {
/* p2c: link.pas, line 1235:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1236:
 * Warning: Unrecognized character 015 in file [247] */
	  return_code = ql_sizeclash;
/* p2c: link.pas, line 1237:
 * Warning: Unrecognized character 015 in file [247] */
	  showmod();
/* p2c: link.pas, line 1238:
 * Warning: Unrecognized character 015 in file [247] */
	  printf("Common area size clash - common '%.10s'\n", s);
/* p2c: link.pas, line 1239:
 * Warning: Unrecognized character 015 in file [247] */
	  printf("size in this module is %6.6lx bytes\n", i);
/* p2c: link.pas, line 1240:
 * Warning: Unrecognized character 015 in file [247] */
	  printf("size in '%.10s' is %6.6lx bytes\n",
		 spt->mname, spt->comsize);
/* p2c: link.pas, line 1241:
 * Warning: Unrecognized character 015 in file [247] */
	  spt->sflagged = true;
/* p2c: link.pas, line 1242:
 * Warning: Unrecognized character 015 in file [247] */
	}
/* p2c: link.pas, line 1243:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1244:
 * Warning: Unrecognized character 015 in file [247] */
	if (i > spt->comsize && spt->comsize != -1) {
/* p2c: link.pas, line 1245:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1246:
 * Warning: Unrecognized character 015 in file [247] */
	  memcpy(spt->mname, mod_id, sizeof(sym_name));
/* p2c: link.pas, line 1247:
 * Warning: Unrecognized character 015 in file [247] */
	  spt->comsize = i;
/* p2c: link.pas, line 1248:
 * Warning: Unrecognized character 015 in file [247] */
	}
/* p2c: link.pas, line 1249:
 * Warning: Unrecognized character 015 in file [247] */
      }
    }
    break;

/* p2c: link.pas, line 1250:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1251:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1252:
 * Warning: Unrecognized character 015 in file [247] */
  case 2:
  case 3:  /* section definition and allocation */
/* p2c: link.pas, line 1253:
 * Warning: Unrecognized character 015 in file [247] */
    i = getint();
/* p2c: link.pas, line 1254:
 * Warning: Unrecognized character 015 in file [247] */
    if (debug)
      printf("Section - %2ld  length = %6.6lx\n", sect, i);
/* p2c: link.pas, line 1255:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1256:
 * Warning: Unrecognized character 015 in file [247] */
    sectbase[sect+1] += i;
/* p2c: link.pas, line 1257:
 * Warning: Unrecognized character 015 in file [247] */
    if (sectbase[sect+1] & 1) {
/* p2c: link.pas, line 1258:
 * Warning: Unrecognized character 015 in file [247] */
      sectbase[sect+1]++;
    }
/* p2c: link.pas, line 1259:
 * Warning: Unrecognized character 015 in file [247] */
    break;

/* p2c: link.pas, line 1260:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1261:
 * Warning: Unrecognized character 015 in file [247] */
  case 4:
  case 5:  /* symbol defintion */
/* p2c: link.pas, line 1262:
 * Warning: Unrecognized character 015 in file [247] */
    if (ty == 5) {
/* p2c: link.pas, line 1263:
 * Warning: Unrecognized character 015 in file [247] */
      sect = -1;
    }
/* p2c: link.pas, line 1264:
 * Warning: Unrecognized character 015 in file [247] */
    getnam(s);
/* p2c: link.pas, line 1265:
 * Warning: Unrecognized character 015 in file [247] */
    b = find_insert(s, &spt, true);
/* p2c: link.pas, line 1266:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1267:
 * Warning: Unrecognized character 015 in file [247] */
    /*--- this isnt right yet, should fix it */
/* p2c: link.pas, line 1268:
 * Warning: Unrecognized character 015 in file [247] */
    if (spt->sdef && !spt->sflagged) {
/* p2c: link.pas, line 1269:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1270:
 * Warning: Unrecognized character 015 in file [247] */
      if (spt->shist) {   /* previously defined by history file */
/* p2c: link.pas, line 1271:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1272:
 * Warning: Unrecognized character 015 in file [247] */
	if (chat)
	  printf("redefining %.10s\n", s);
/* p2c: link.pas, line 1273:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1274:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 1275:
 * Warning: Unrecognized character 015 in file [247] */
      else {
/* p2c: link.pas, line 1276:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1277:
 * Warning: Unrecognized character 015 in file [247] */
	doubledef(spt);
      }
    }
/* p2c: link.pas, line 1278:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1279:
 * Warning: Unrecognized character 015 in file [247] */
    else {
/* p2c: link.pas, line 1280:
 * Warning: Unrecognized character 015 in file [247] */
      if (b) {
/* p2c: link.pas, line 1281:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1282:
 * Warning: Unrecognized character 015 in file [247] */
	if (spt->shist) {   /* previously defined by history file */
/* p2c: link.pas, line 1283:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1284:
 * Warning: Unrecognized character 015 in file [247] */
	  if (chat)
	    printf("redefining %.10s\n", s);
/* p2c: link.pas, line 1285:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1286:
 * Warning: Unrecognized character 015 in file [247] */
	}
/* p2c: link.pas, line 1287:
 * Warning: Unrecognized character 015 in file [247] */
	else {
/* p2c: link.pas, line 1288:
 * Warning: Unrecognized character 015 in file [247] */
	  undefsym--;
/* p2c: link.pas, line 1289:
 * Warning: Unrecognized character 015 in file [247] */
	}
      }
    }
/* p2c: link.pas, line 1290:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1291:
 * Warning: Unrecognized character 015 in file [247] */
    memcpy(spt->mname, mod_id, sizeof(sym_name));
/* p2c: link.pas, line 1292:
 * Warning: Unrecognized character 015 in file [247] */
    spt->ssect = sect;
/* p2c: link.pas, line 1293:
 * Warning: Unrecognized character 015 in file [247] */
    spt->sdef = true;
/* p2c: link.pas, line 1294:
 * Warning: Unrecognized character 015 in file [247] */
    spt->saddr = getint() + sectbase[sect+1];
/* p2c: link.pas, line 1295:
 * Warning: Unrecognized character 015 in file [247] */
    break;

/* p2c: link.pas, line 1296:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1297:
 * Warning: Unrecognized character 015 in file [247] */
  case 6:
  case 7:  /* symbol reference */
/* p2c: link.pas, line 1298:
 * Warning: Unrecognized character 015 in file [247] */
    if (ty == 6) {
/* p2c: link.pas, line 1299:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1300:
 * Warning: Unrecognized character 015 in file [247] */
      showmod();
/* p2c: link.pas, line 1301:
 * Warning: Unrecognized character 015 in file [247] */
      printf("xref %12ld\n", sect);
/* p2c: link.pas, line 1302:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 1303:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1304:
 * Warning: Unrecognized character 015 in file [247] */
    getnam(s);
/* p2c: link.pas, line 1305:
 * Warning: Unrecognized character 015 in file [247] */
    b = find_insert(s, &spt, true);
/* p2c: link.pas, line 1306:
 * Warning: Unrecognized character 015 in file [247] */
    if (xref) {
/* p2c: link.pas, line 1307:
 * Warning: Unrecognized character 015 in file [247] */
      add_ref(spt, mod_id);
    }
/* p2c: link.pas, line 1308:
 * Warning: Unrecognized character 015 in file [247] */
    if (!b) {
/* p2c: link.pas, line 1309:
 * Warning: Unrecognized character 015 in file [247] */
      undefsym++;
    }
/* p2c: link.pas, line 1310:
 * Warning: Unrecognized character 015 in file [247] */
    break;

/* p2c: link.pas, line 1311:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1312:
 * Warning: Unrecognized character 015 in file [247] */
  case 8:
  case 9:
/* p2c: link.pas, line 1313:
 * Warning: Unrecognized character 015 in file [247] */
    showmod();
/* p2c: link.pas, line 1314:
 * Warning: Unrecognized character 015 in file [247] */
    printf("cl address\n");
/* p2c: link.pas, line 1315:
 * Warning: Unrecognized character 015 in file [247] */
    bpos += 5;
/* p2c: link.pas, line 1316:
 * Warning: Unrecognized character 015 in file [247] */
    break;

/* p2c: link.pas, line 1317:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1318:
 * Warning: Unrecognized character 015 in file [247] */
  case 10:
/* p2c: link.pas, line 1319:
 * Warning: Unrecognized character 015 in file [247] */
    showmod();
/* p2c: link.pas, line 1320:
 * Warning: Unrecognized character 015 in file [247] */
    printf("cl addr common\n");
/* p2c: link.pas, line 1321:
 * Warning: Unrecognized character 015 in file [247] */
    bpos += 15;
/* p2c: link.pas, line 1322:
 * Warning: Unrecognized character 015 in file [247] */
    break;
/* p2c: link.pas, line 1323:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 1324:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1325:
 * Warning: Unrecognized character 015 in file [247] */
}  /* doesd */

Local Void procesd()
{
  /*<<<*/
  /*>>>*/
/* p2c: link.pas, line 1329:
 * Warning: Unrecognized character 015 in file [247] */
  bpos = 2;
/* p2c: link.pas, line 1330:
 * Warning: Unrecognized character 015 in file [247] */
  while (bpos < strlen(o))
    doesd();
/* p2c: link.pas, line 1331:
 * Warning: Unrecognized character 015 in file [247] */
}  /* procesd */

/*>>>*/
/*<<<*/
Local Void proctxt()
{
/* p2c: link.pas, line 1337:
 * Warning: Unrecognized character 015 in file [247] */
}

/*>>>*/
/*<<<*/
Local Void proceom()
{
/* p2c: link.pas, line 1343:
 * Warning: Unrecognized character 015 in file [247] */
}

/*>>>*/
/*<<<*/
Local Char *gnam(Result)
Char *Result;
{
  sym_name s;
/* p2c: link.pas, line 1350:
 * Warning: Unrecognized character 015 in file [247] */
  long i = 1;

/* p2c: link.pas, line 1351:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1352:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1353:
 * Warning: Unrecognized character 015 in file [247] */
  memcpy(s, "          ", sizeof(sym_name));
/* p2c: link.pas, line 1354:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1355:
 * Warning: Unrecognized character 015 in file [247] */
  do {
/* p2c: link.pas, line 1356:
 * Warning: Unrecognized character 015 in file [247] */
    s[i-1] = gbyte();
/* p2c: link.pas, line 1357:
 * Warning: Unrecognized character 015 in file [247] */
    i++;
/* p2c: link.pas, line 1358:
 * Warning: Unrecognized character 015 in file [247] */
  } while (i <= 10 && bpos <= strlen(o));
/* p2c: link.pas, line 1359:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1360:
 * Warning: Unrecognized character 015 in file [247] */
  return memcpy(Result, s, sizeof(sym_name));
/* p2c: link.pas, line 1361:
 * Warning: Unrecognized character 015 in file [247] */
}


/*>>>*/
/*<<<*/
Static Void processrec()
{
  /* first pass object record processor */
  /*<<<*/
  /*>>>*/
/* p2c: link.pas, line 1365:
 * Warning: Unrecognized character 015 in file [247] */
  switch (o[0]) {

/* p2c: link.pas, line 1366:
 * Warning: Unrecognized character 015 in file [247] */
  case '1':
    procid();
    break;

/* p2c: link.pas, line 1367:
 * Warning: Unrecognized character 015 in file [247] */
  case '2':
    procesd();
    break;

/* p2c: link.pas, line 1368:
 * Warning: Unrecognized character 015 in file [247] */
  case '3':
    proctxt();
    break;

/* p2c: link.pas, line 1369:
 * Warning: Unrecognized character 015 in file [247] */
  case '4':
    proceom();
    break;
/* p2c: link.pas, line 1370:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 1371:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1372:
 * Warning: Unrecognized character 015 in file [247] */
}  /* processrec */
/* p2c: link.pas, line 1373: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1374: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1375: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1376: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1377: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1378: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1379: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1380: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1381: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1385: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1386: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1387: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1391: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1392: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1393: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1423: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1424: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1425: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1492: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1493: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1494: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1506: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1507: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1508: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1509: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1510: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1511: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1512: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1513: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1514: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1620: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1621: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1622: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1626: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1627: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1628: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1629: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1630: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1631: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1635: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1636: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1637: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1644: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1645: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1650: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1651: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1652: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1747: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1748: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1749: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1763: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1764: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1765: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1766: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1767: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1771: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1772: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1773: 
 * Warning: Unrecognized character 015 in file [247] */


/* Local variables for sformat: */
struct LOC_sformat {
  long pos, len, cstart;
} ;

/* p2c: link.pas, line 1388:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1389:
 * Warning: Unrecognized character 015 in file [247] */
/*<<<*/
/* p2c: link.pas, line 1390:
 * Warning: Unrecognized character 015 in file [247] */
Local Void startpacket(LINK)
struct LOC_sformat *LINK;
{
  string pktstart;
/* p2c: link.pas, line 1394:
 * Warning: Unrecognized character 015 in file [247] */
  long plen;

/* p2c: link.pas, line 1395:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1396:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1397:
 * Warning: Unrecognized character 015 in file [247] */
  LINK->cstart = codestart + LINK->pos * 2;
/* p2c: link.pas, line 1398:
 * Warning: Unrecognized character 015 in file [247] */
  plen = LINK->len * 2 + 4;   /*this happens to be right for both*/
/* p2c: link.pas, line 1399:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1400:
 * Warning: Unrecognized character 015 in file [247] */
  if (bin) {
/* p2c: link.pas, line 1401:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1402:
 * Warning: Unrecognized character 015 in file [247] */
    binbyte(esc);
/* p2c: link.pas, line 1403:
 * Warning: Unrecognized character 015 in file [247] */
    binbyte(0);
/* p2c: link.pas, line 1404:
 * Warning: Unrecognized character 015 in file [247] */
    wbyte(1);
/* p2c: link.pas, line 1405:
 * Warning: Unrecognized character 015 in file [247] */
    wbyte((int)mvr(plen));
/* p2c: link.pas, line 1406:
 * Warning: Unrecognized character 015 in file [247] */
    wbyte((int)(plen & 255));
/* p2c: link.pas, line 1407:
 * Warning: Unrecognized character 015 in file [247] */
    wbyte((int)mvr(mvr(mvr(LINK->cstart))));
/* p2c: link.pas, line 1408:
 * Warning: Unrecognized character 015 in file [247] */
    wbyte((int)mvr(mvr(LINK->cstart)));
/* p2c: link.pas, line 1409:
 * Warning: Unrecognized character 015 in file [247] */
    wbyte((int)mvr(LINK->cstart));
/* p2c: link.pas, line 1410:
 * Warning: Unrecognized character 015 in file [247] */
    wbyte((int)(LINK->cstart & 255));
/* p2c: link.pas, line 1411:
 * Warning: Unrecognized character 015 in file [247] */
    return;
  }
/* p2c: link.pas, line 1412:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1413:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1414:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1415:
 * Warning: Unrecognized character 015 in file [247] */
  strcpy(pktstart, "S2");
/* p2c: link.pas, line 1416:
 * Warning: Unrecognized character 015 in file [247] */
  sendsform(pktstart);
/* p2c: link.pas, line 1417:
 * Warning: Unrecognized character 015 in file [247] */
  wbyte((int)plen);
/* p2c: link.pas, line 1418:
 * Warning: Unrecognized character 015 in file [247] */
  wbyte((int)mvr(mvr(LINK->cstart)));
/* p2c: link.pas, line 1419:
 * Warning: Unrecognized character 015 in file [247] */
  wbyte((int)mvr(LINK->cstart));
/* p2c: link.pas, line 1420:
 * Warning: Unrecognized character 015 in file [247] */
  wbyte((int)(LINK->cstart & 255));
/* p2c: link.pas, line 1421:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1422:
 * Warning: Unrecognized character 015 in file [247] */
}  /* start packet */

/* p2c: link.pas, line 1382:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1383:
 * Warning: Unrecognized character 015 in file [247] */
/*<<<*/
/* p2c: link.pas, line 1384:
 * Warning: Unrecognized character 015 in file [247] */
Local Void sformat(pos_, len_)
long pos_, len_;
{  /* startformat */
  struct LOC_sformat V;
  long b, i, FORLIM;

  /*>>>*/
  V.pos = pos_;
  V.len = len_;
/* p2c: link.pas, line 1426:
 * Warning: Unrecognized character 015 in file [247] */
  checksum = 0;
/* p2c: link.pas, line 1427:
 * Warning: Unrecognized character 015 in file [247] */
  startpacket(&V);
/* p2c: link.pas, line 1428:
 * Warning: Unrecognized character 015 in file [247] */
  if (bin) {
    FORLIM = V.len;
/* p2c: link.pas, line 1429:
 * Warning: Unrecognized character 015 in file [247] */
    for (i = 0; i < FORLIM; i++) {
/* p2c: link.pas, line 1430:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1431:
 * Warning: Unrecognized character 015 in file [247] */
      b = (0xffffL & ((unsigned long)codearr[i + V.pos])) / 256;
/* p2c: link.pas, line 1432:
 * Warning: Unrecognized character 015 in file [247] */
      if (b == esc && escape == true) {
/* p2c: link.pas, line 1433:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1434:
 * Warning: Unrecognized character 015 in file [247] */
	oblock[opos] = b;
/* p2c: link.pas, line 1435:
 * Warning: Unrecognized character 015 in file [247] */
	opos++;
/* p2c: link.pas, line 1436:
 * Warning: Unrecognized character 015 in file [247] */
	if (opos > 511) {
/* p2c: link.pas, line 1437:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1438:
 * Warning: Unrecognized character 015 in file [247] */
	  if (out)
	    fwrite(oblock, sizeof(bblock), 1, bfile);
/* p2c: link.pas, line 1439:
 * Warning: Unrecognized character 015 in file [247] */
	  if (download)
	    fwrite(oblock, sizeof(bblock), 1, btgtfile);
/* p2c: link.pas, line 1440:
 * Warning: Unrecognized character 015 in file [247] */
	  opos = 0;
/* p2c: link.pas, line 1441:
 * Warning: Unrecognized character 015 in file [247] */
	}
/* p2c: link.pas, line 1442:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 1443:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1444:
 * Warning: Unrecognized character 015 in file [247] */
      oblock[opos] = b;
/* p2c: link.pas, line 1445:
 * Warning: Unrecognized character 015 in file [247] */
      opos++;
/* p2c: link.pas, line 1446:
 * Warning: Unrecognized character 015 in file [247] */
      if (opos > 511) {
/* p2c: link.pas, line 1447:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1448:
 * Warning: Unrecognized character 015 in file [247] */
	if (out)
	  fwrite(oblock, sizeof(bblock), 1, bfile);
/* p2c: link.pas, line 1449:
 * Warning: Unrecognized character 015 in file [247] */
	if (download)
	  fwrite(oblock, sizeof(bblock), 1, btgtfile);
/* p2c: link.pas, line 1450:
 * Warning: Unrecognized character 015 in file [247] */
	opos = 0;
/* p2c: link.pas, line 1451:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 1452:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1453:
 * Warning: Unrecognized character 015 in file [247] */
      checksum = ((unsigned long)b) ^ ((unsigned long)checksum);
/* p2c: link.pas, line 1454:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1455:
 * Warning: Unrecognized character 015 in file [247] */
      b = codearr[i + V.pos] & 255;
/* p2c: link.pas, line 1456:
 * Warning: Unrecognized character 015 in file [247] */
      if (b == esc && escape == true) {
/* p2c: link.pas, line 1457:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1458:
 * Warning: Unrecognized character 015 in file [247] */
	oblock[opos] = b;
/* p2c: link.pas, line 1459:
 * Warning: Unrecognized character 015 in file [247] */
	opos++;
/* p2c: link.pas, line 1460:
 * Warning: Unrecognized character 015 in file [247] */
	if (opos > 511) {
/* p2c: link.pas, line 1461:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1462:
 * Warning: Unrecognized character 015 in file [247] */
	  if (out)
	    fwrite(oblock, sizeof(bblock), 1, bfile);
/* p2c: link.pas, line 1463:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1464:
 * Warning: Unrecognized character 015 in file [247] */
	  if (download)
	    fwrite(oblock, sizeof(bblock), 1, btgtfile);
/* p2c: link.pas, line 1465:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1466:
 * Warning: Unrecognized character 015 in file [247] */
	  opos = 0;
/* p2c: link.pas, line 1467:
 * Warning: Unrecognized character 015 in file [247] */
	}
/* p2c: link.pas, line 1468:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 1469:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1470:
 * Warning: Unrecognized character 015 in file [247] */
      oblock[opos] = b;
/* p2c: link.pas, line 1471:
 * Warning: Unrecognized character 015 in file [247] */
      opos++;
/* p2c: link.pas, line 1472:
 * Warning: Unrecognized character 015 in file [247] */
      if (opos > 511) {
/* p2c: link.pas, line 1473:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1474:
 * Warning: Unrecognized character 015 in file [247] */
	if (out)
	  fwrite(oblock, sizeof(bblock), 1, bfile);
/* p2c: link.pas, line 1475:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1476:
 * Warning: Unrecognized character 015 in file [247] */
	if (download)
	  fwrite(oblock, sizeof(bblock), 1, btgtfile);
/* p2c: link.pas, line 1477:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1478:
 * Warning: Unrecognized character 015 in file [247] */
	opos = 0;
/* p2c: link.pas, line 1479:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 1480:
 * Warning: Unrecognized character 015 in file [247] */
      checksum = ((unsigned long)b) ^ ((unsigned long)checksum);
/* p2c: link.pas, line 1481:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 1482:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1483:
 * Warning: Unrecognized character 015 in file [247] */
  } else {
    FORLIM = V.len;
/* p2c: link.pas, line 1484:
 * Warning: Unrecognized character 015 in file [247] */
    for (i = 0; i < FORLIM; i++) {
/* p2c: link.pas, line 1485:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1486:
 * Warning: Unrecognized character 015 in file [247] */
      wbyte((int)mvr(codearr[i + V.pos]));
/* p2c: link.pas, line 1487:
 * Warning: Unrecognized character 015 in file [247] */
      wbyte((int)(codearr[i + V.pos] & 255));
/* p2c: link.pas, line 1488:
 * Warning: Unrecognized character 015 in file [247] */
    }
  }
/* p2c: link.pas, line 1489:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1490:
 * Warning: Unrecognized character 015 in file [247] */
  endpacket();
/* p2c: link.pas, line 1491:
 * Warning: Unrecognized character 015 in file [247] */
}  /* startformat */

Local Void output_data()
{
  long c;
  long pos = 0;

  /*>>>*/
/* p2c: link.pas, line 1495:
 * Warning: Unrecognized character 015 in file [247] */
  c = codelen;
/* p2c: link.pas, line 1496:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1497:
 * Warning: Unrecognized character 015 in file [247] */
  while (c > smax) {
/* p2c: link.pas, line 1498:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1499:
 * Warning: Unrecognized character 015 in file [247] */
    sformat(pos, smax);
/* p2c: link.pas, line 1500:
 * Warning: Unrecognized character 015 in file [247] */
    pos += smax;
/* p2c: link.pas, line 1501:
 * Warning: Unrecognized character 015 in file [247] */
    c -= smax;
/* p2c: link.pas, line 1502:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 1503:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1504:
 * Warning: Unrecognized character 015 in file [247] */
  if (c > 0)
    sformat(pos, c);
/* p2c: link.pas, line 1505:
 * Warning: Unrecognized character 015 in file [247] */
}  /* output_data */

Local Void doesd_()
{
  byte sect, ty;
/* p2c: link.pas, line 1515:
 * Warning: Unrecognized character 015 in file [247] */
  sym_name s;
/* p2c: link.pas, line 1516:
 * Warning: Unrecognized character 015 in file [247] */
  boolean b;
/* p2c: link.pas, line 1517:
 * Warning: Unrecognized character 015 in file [247] */
  long patch, i;
/* p2c: link.pas, line 1518:
 * Warning: Unrecognized character 015 in file [247] */
  symbol *spt;
/* p2c: link.pas, line 1519:
 * Warning: Unrecognized character 015 in file [247] */
  resolve *r;

/* p2c: link.pas, line 1520:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1521:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1522:
 * Warning: Unrecognized character 015 in file [247] */
  ty = gbyte();
/* p2c: link.pas, line 1523:
 * Warning: Unrecognized character 015 in file [247] */
  sect = ty & 15;
/* p2c: link.pas, line 1524:
 * Warning: Unrecognized character 015 in file [247] */
  ty /= 16;
/* p2c: link.pas, line 1525:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1526:
 * Warning: Unrecognized character 015 in file [247] */
  switch (ty) {

/* p2c: link.pas, line 1527:
 * Warning: Unrecognized character 015 in file [247] */
  case 0:  /* no idea !! */
/* p2c: link.pas, line 1528:
 * Warning: Unrecognized character 015 in file [247] */
    bpos += 4;
/* p2c: link.pas, line 1529:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1530:
 * Warning: Unrecognized character 015 in file [247] */
    i = getint();
/* p2c: link.pas, line 1531:
 * Warning: Unrecognized character 015 in file [247] */
    esdarr[topesd] = i;
/* p2c: link.pas, line 1532:
 * Warning: Unrecognized character 015 in file [247] */
    esdsymarr[topesd] = NULL;
/* p2c: link.pas, line 1533:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1534:
 * Warning: Unrecognized character 015 in file [247] */
    outaddr[topesd] = esdarr[topesd];
/* p2c: link.pas, line 1535:
 * Warning: Unrecognized character 015 in file [247] */
    topesd++;
/* p2c: link.pas, line 1536:
 * Warning: Unrecognized character 015 in file [247] */
    break;

/* p2c: link.pas, line 1537:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1538:
 * Warning: Unrecognized character 015 in file [247] */
  case 1:  /* common area symbol */
/* p2c: link.pas, line 1539:
 * Warning: Unrecognized character 015 in file [247] */
    getnam(s);
/* p2c: link.pas, line 1540:
 * Warning: Unrecognized character 015 in file [247] */
    bpos += 4;   /*skip int*/
/* p2c: link.pas, line 1541:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1542:
 * Warning: Unrecognized character 015 in file [247] */
    b = find_insert(s, &spt, false);
/* p2c: link.pas, line 1543:
 * Warning: Unrecognized character 015 in file [247] */
    if (!b) {
/* p2c: link.pas, line 1544:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1545:
 * Warning: Unrecognized character 015 in file [247] */
      showmod();
/* p2c: link.pas, line 1546:
 * Warning: Unrecognized character 015 in file [247] */
      printf("internal consistency check failure - lost symbol\n");
/* p2c: link.pas, line 1547:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 1548:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1549:
 * Warning: Unrecognized character 015 in file [247] */
    esdarr[topesd] = spt->saddr + baseaddr[spt->ssect + 1];
/* p2c: link.pas, line 1550:
 * Warning: Unrecognized character 015 in file [247] */
    esdsymarr[topesd] = spt;
/* p2c: link.pas, line 1551:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1552:
 * Warning: Unrecognized character 015 in file [247] */
    outaddr[topesd] = esdarr[topesd];
/* p2c: link.pas, line 1553:
 * Warning: Unrecognized character 015 in file [247] */
    topesd++;
/* p2c: link.pas, line 1554:
 * Warning: Unrecognized character 015 in file [247] */
    break;

/* p2c: link.pas, line 1555:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1556:
 * Warning: Unrecognized character 015 in file [247] */
  case 2:
  case 3:  /* section symbol */
/* p2c: link.pas, line 1557:
 * Warning: Unrecognized character 015 in file [247] */
    i = getint();
/* p2c: link.pas, line 1558:
 * Warning: Unrecognized character 015 in file [247] */
    esdarr[sect+1] = baseaddr[sect+1] + sbase[sect+1];
/* p2c: link.pas, line 1559:
 * Warning: Unrecognized character 015 in file [247] */
    esdsymarr[topesd] = NULL;
/* p2c: link.pas, line 1560:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1561:
 * Warning: Unrecognized character 015 in file [247] */
    outaddr[sect+1] = esdarr[sect+1];
/* p2c: link.pas, line 1562:
 * Warning: Unrecognized character 015 in file [247] */
    if (modules)
      fprintf(mod_file, " %2d:%6.6lx+%6.6lx", sect, esdarr[sect+1], i);
/* p2c: link.pas, line 1563:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1564:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1565:
 * Warning: Unrecognized character 015 in file [247] */
    sbase[sect+1] += i;
/* p2c: link.pas, line 1566:
 * Warning: Unrecognized character 015 in file [247] */
    if (sbase[sect+1] & 1)
      sbase[sect+1]++;
/* p2c: link.pas, line 1567:
 * Warning: Unrecognized character 015 in file [247] */
    break;

/* p2c: link.pas, line 1568:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1569:
 * Warning: Unrecognized character 015 in file [247] */
  case 4:
  case 5:   /* skip past offset into module */
    if (use_history)
    {  /* symbol defintion, use to make patches on second pass */
/* p2c: link.pas, line 1571:
 * Warning: Unrecognized character 015 in file [247] */
      getnam(s);
/* p2c: link.pas, line 1572:
 * Warning: Unrecognized character 015 in file [247] */
      find_insert(s, &spt, false);   /* find it */
/* p2c: link.pas: Note: Eliminated unused assignment statement [338] */
/* p2c: link.pas, line 1573:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1574:
 * Warning: Unrecognized character 015 in file [247] */
      if (spt->reslist != NULL) {
/* p2c: link.pas, line 1575:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1576:
 * Warning: Unrecognized character 015 in file [247] */
	r = spt->reslist;
/* p2c: link.pas, line 1577:
 * Warning: Unrecognized character 015 in file [247] */
	do {
/* p2c: link.pas, line 1578:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1579:
 * Warning: Unrecognized character 015 in file [247] */
	  patch = spt->saddr + baseaddr[spt->ssect + 1] + r->res_offset;
/* p2c: link.pas, line 1580:
 * Warning: Unrecognized character 015 in file [247] */
	  if (debug)
	    printf("patching %6.6lx with %6.6lx + %6.6lx\n",
		   r->res_addr, patch - r->res_offset, r->res_offset);
/* p2c: link.pas, line 1581:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1582:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1583:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1584:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1585:
 * Warning: Unrecognized character 015 in file [247] */
	  codestart = r->res_addr;
/* p2c: link.pas, line 1586:
 * Warning: Unrecognized character 015 in file [247] */
	  codearr[0] = mvr(mvr(patch));
/* p2c: link.pas, line 1587:
 * Warning: Unrecognized character 015 in file [247] */
	  codearr[1] = patch;
/* p2c: link.pas, line 1588:
 * Warning: Unrecognized character 015 in file [247] */
	  codelen = 2;
/* p2c: link.pas, line 1589:
 * Warning: Unrecognized character 015 in file [247] */
	  output_data();
/* p2c: link.pas, line 1590:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1591:
 * Warning: Unrecognized character 015 in file [247] */
	  r = r->next_res;
/* p2c: link.pas, line 1592:
 * Warning: Unrecognized character 015 in file [247] */
	} while (r != NULL);
/* p2c: link.pas, line 1593:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 1594:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1595:
 * Warning: Unrecognized character 015 in file [247] */
      bpos += 4;   /* skip past offset into module */
/* p2c: link.pas, line 1596:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 1570:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1597:
 * Warning: Unrecognized character 015 in file [247] */
    else {
/* p2c: link.pas, line 1598:
 * Warning: Unrecognized character 015 in file [247] */
      bpos += 14;
    }
    break;

/* p2c: link.pas, line 1599:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1600:
 * Warning: Unrecognized character 015 in file [247] */
  case 6:
  case 7:  /* symbol reference */
/* p2c: link.pas, line 1601:
 * Warning: Unrecognized character 015 in file [247] */
    getnam(s);
/* p2c: link.pas, line 1602:
 * Warning: Unrecognized character 015 in file [247] */
    b = find_insert(s, &spt, false);
/* p2c: link.pas, line 1603:
 * Warning: Unrecognized character 015 in file [247] */
    if (!b) {
/* p2c: link.pas, line 1604:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1605:
 * Warning: Unrecognized character 015 in file [247] */
      showmod();
/* p2c: link.pas, line 1606:
 * Warning: Unrecognized character 015 in file [247] */
      printf("internal check failure - lost symbol\n");
/* p2c: link.pas, line 1607:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 1608:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1609:
 * Warning: Unrecognized character 015 in file [247] */
    esdarr[topesd] = spt->saddr + baseaddr[spt->ssect + 1];
/* p2c: link.pas, line 1610:
 * Warning: Unrecognized character 015 in file [247] */
    esdsymarr[topesd] = spt;
/* p2c: link.pas, line 1611:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1612:
 * Warning: Unrecognized character 015 in file [247] */
    outaddr[topesd] = esdarr[topesd];
/* p2c: link.pas, line 1613:
 * Warning: Unrecognized character 015 in file [247] */
    topesd++;
/* p2c: link.pas, line 1614:
 * Warning: Unrecognized character 015 in file [247] */
    break;

/* p2c: link.pas, line 1615:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1616:
 * Warning: Unrecognized character 015 in file [247] */
  case 8:
  case 9:
    bpos += 5;
    break;

/* p2c: link.pas, line 1617:
 * Warning: Unrecognized character 015 in file [247] */
  case 10:
    bpos += 15;
    break;
/* p2c: link.pas, line 1618:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 1619:
 * Warning: Unrecognized character 015 in file [247] */
}  /* pof PROCEDURE doesd */

/*>>>*/
/*<<<*/
Local Void procesd_()
{
  /*<<<*/
  /*>>>*/
/* p2c: link.pas, line 1623:
 * Warning: Unrecognized character 015 in file [247] */
  bpos = 2;
/* p2c: link.pas, line 1624:
 * Warning: Unrecognized character 015 in file [247] */
  while (bpos < strlen(o))
    doesd_();
/* p2c: link.pas, line 1625:
 * Warning: Unrecognized character 015 in file [247] */
}  /* procesd */

/* Local variables for proctxt_: */
struct LOC_proctxt_ {
  long bitmap, curresd;
} ;

/* p2c: link.pas, line 1641:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1642:
 * Warning: Unrecognized character 015 in file [247] */
/*<<<*/
/* p2c: link.pas, line 1643:
 * Warning: Unrecognized character 015 in file [247] */
Local Void adddata(w)
long w;
{
/* p2c: link.pas, line 1646:
 * Warning: Unrecognized character 015 in file [247] */
  duffer = (w == 0x4eba);
/* p2c: link.pas, line 1647:
 * Warning: Unrecognized character 015 in file [247] */
  codelen++;
/* p2c: link.pas, line 1648:
 * Warning: Unrecognized character 015 in file [247] */
  codearr[codelen-1] = w;
/* p2c: link.pas, line 1649:
 * Warning: Unrecognized character 015 in file [247] */
}  /* adddata */

/* p2c: link.pas, line 1632:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1633:
 * Warning: Unrecognized character 015 in file [247] */
/*<<<*/
/* p2c: link.pas, line 1634:
 * Warning: Unrecognized character 015 in file [247] */
Local Void procbyte(LINK)
struct LOC_proctxt_ *LINK;
{
  boolean longwd;
/* p2c: link.pas, line 1638:
 * Warning: Unrecognized character 015 in file [247] */
  long offset, add, i, numesds, offsize;
/* p2c: link.pas, line 1639:
 * Warning: Unrecognized character 015 in file [247] */
  long thisesd;
/* p2c: link.pas, line 1640:
 * Warning: Unrecognized character 015 in file [247] */
  byte flag;

  /*>>>*/
/* p2c: link.pas, line 1653:
 * Warning: Unrecognized character 015 in file [247] */
  if (LINK->bitmap >= 0) {
/* p2c: link.pas, line 1654:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1655:
 * Warning: Unrecognized character 015 in file [247] */
    adddata(mvl((long)o[bpos-1]) + o[bpos]);
/* p2c: link.pas, line 1656:
 * Warning: Unrecognized character 015 in file [247] */
    bpos += 2;
/* p2c: link.pas, line 1657:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 1658:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1659:
 * Warning: Unrecognized character 015 in file [247] */
  else {
/* p2c: link.pas, line 1660:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1661:
 * Warning: Unrecognized character 015 in file [247] */
    if (duffer) {
/* p2c: link.pas, line 1662:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1663:
 * Warning: Unrecognized character 015 in file [247] */
      showmod();
/* p2c: link.pas, line 1664:
 * Warning: Unrecognized character 015 in file [247] */
      printf("Warning - possible assembler foul-up\n");
/* p2c: link.pas, line 1665:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 1666:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1667:
 * Warning: Unrecognized character 015 in file [247] */
    flag = gbyte();
/* p2c: link.pas, line 1668:
 * Warning: Unrecognized character 015 in file [247] */
    numesds = flag / 32;
/* p2c: link.pas, line 1669:
 * Warning: Unrecognized character 015 in file [247] */
    offsize = flag & 7;
/* p2c: link.pas, line 1670:
 * Warning: Unrecognized character 015 in file [247] */
    /*    writeln('num esds, ',numesds,'  offset size ',offsize);*/
/* p2c: link.pas, line 1671:
 * Warning: Unrecognized character 015 in file [247] */
    longwd = (((flag / 8) & 1) == 1);
/* p2c: link.pas, line 1672:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1673:
 * Warning: Unrecognized character 015 in file [247] */
    add = 0;
/* p2c: link.pas, line 1674:
 * Warning: Unrecognized character 015 in file [247] */
    for (i = 1; i <= numesds; i++) {
/* p2c: link.pas, line 1675:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1676:
 * Warning: Unrecognized character 015 in file [247] */
      thisesd = gbyte();
/* p2c: link.pas, line 1677:
 * Warning: Unrecognized character 015 in file [247] */
      if (thisesd > topesd) {
/* p2c: link.pas, line 1678:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1679:
 * Warning: Unrecognized character 015 in file [247] */
	showmod();
/* p2c: link.pas, line 1680:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1681:
 * Warning: Unrecognized character 015 in file [247] */
	printf(" assembler foul-up.. trying to use an undefined ESD : %12ld\n",
	       thisesd);
/* p2c: link.pas, line 1682:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 1683:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1684:
 * Warning: Unrecognized character 015 in file [247] */
      if (i & 1) {
/* p2c: link.pas, line 1685:
 * Warning: Unrecognized character 015 in file [247] */
	add += esdarr[thisesd];
/* p2c: link.pas, line 1686:
 * Warning: Unrecognized character 015 in file [247] */
      } else {
/* p2c: link.pas, line 1687:
 * Warning: Unrecognized character 015 in file [247] */
	add -= esdarr[thisesd];
      }
    }
/* p2c: link.pas, line 1688:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1689:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1690:
 * Warning: Unrecognized character 015 in file [247] */
    offset = 0;
/* p2c: link.pas, line 1691:
 * Warning: Unrecognized character 015 in file [247] */
    for (i = 1; i <= offsize; i++)
      offset = mvl(offset) + gbyte();
/* p2c: link.pas, line 1692:
 * Warning: Unrecognized character 015 in file [247] */
    switch (offsize) {

/* p2c: link.pas, line 1693:
 * Warning: Unrecognized character 015 in file [247] */
    case 0:
    case 4:
      break;

/* p2c: link.pas, line 1694:
 * Warning: Unrecognized character 015 in file [247] */
    case 1:
      if (offset > 127)
	offset = ((unsigned long)offset) | 0xffffff00L;
      break;

/* p2c: link.pas, line 1695:
 * Warning: Unrecognized character 015 in file [247] */
    case 2:
      if (offset > 32767)
	offset = ((unsigned long)offset) | 0xffff0000L;
      break;
/* p2c: link.pas, line 1696:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 1697:
 * Warning: Unrecognized character 015 in file [247] */
    /*    writeln('OFFSET ',hex(add,6,6),'+',hex(offset,6,6),'=',hex(add+offset,6,6));

    */
/* p2c: link.pas, line 1699:
 * Warning: Unrecognized character 015 in file [247] */
    add += offset;
/* p2c: link.pas, line 1700:
 * Warning: Unrecognized character 015 in file [247] */
    if (numesds == 0) {
/* p2c: link.pas, line 1701:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1702:
 * Warning: Unrecognized character 015 in file [247] */
      if (offset & 1) {
/* p2c: link.pas, line 1703:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1704:
 * Warning: Unrecognized character 015 in file [247] */
	showmod();
/* p2c: link.pas, line 1705:
 * Warning: Unrecognized character 015 in file [247] */
	printf("odd fix-up offset - assembler error .%12ld%12ld\n",
	       offset, LINK->curresd);
/* p2c: link.pas, line 1706:
 * Warning: Unrecognized character 015 in file [247] */
	printf(">>%6.6lx\n", codestart);
/* p2c: link.pas, line 1707:
 * Warning: Unrecognized character 015 in file [247] */
	offset++;
/* p2c: link.pas, line 1708:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 1709:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1710:
 * Warning: Unrecognized character 015 in file [247] */
      if (codelen > 0)
	output_data();
/* p2c: link.pas, line 1711:
 * Warning: Unrecognized character 015 in file [247] */
      outaddr[LINK->curresd] += codelen * 2 + offset;
/* p2c: link.pas, line 1712:
 * Warning: Unrecognized character 015 in file [247] */
      codelen = 0;
/* p2c: link.pas, line 1713:
 * Warning: Unrecognized character 015 in file [247] */
      codestart = outaddr[LINK->curresd];
/* p2c: link.pas, line 1714:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 1715:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1716:
 * Warning: Unrecognized character 015 in file [247] */
    else {
/* p2c: link.pas, line 1717:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1718:
 * Warning: Unrecognized character 015 in file [247] */
      if (!longwd) {
/* p2c: link.pas, line 1719:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1720:
 * Warning: Unrecognized character 015 in file [247] */
	if (add > 32767 || add < -32768L) {
/* p2c: link.pas, line 1721:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1722:
 * Warning: Unrecognized character 015 in file [247] */
	  showmod();
/* p2c: link.pas, line 1723:
 * Warning: Unrecognized character 015 in file [247] */
	  printf("Long address generated into word location :%8.8lx\n", add);
/* p2c: link.pas, line 1724:
 * Warning: Unrecognized character 015 in file [247] */
	}
/* p2c: link.pas, line 1725:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 1726:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1727:
 * Warning: Unrecognized character 015 in file [247] */
      if (esdsymarr[thisesd] != NULL) {   /* only need named symbols */
/* p2c: link.pas, line 1728:
 * Warning: Unrecognized character 015 in file [247] */
	if (strncmp(mod_id, esdsymarr[thisesd]->mname, sizeof(sym_name)))
	{   /* outside module */
/* p2c: link.pas, line 1729:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1730:
 * Warning: Unrecognized character 015 in file [247] */
	  if (history)
	  {   /*--- address to be resolved LONGWORD only at present*/
/* p2c: link.pas, line 1731:
 * Warning: Unrecognized character 015 in file [247] */
	    add_res(esdsymarr[thisesd], codestart + codelen * 2, offset);
	  }
/* p2c: link.pas, line 1732:
 * Warning: Unrecognized character 015 in file [247] */
	  if (debug)
	    printf("sym %s %2ld %.10s %8.8lx = %9.8lx + %4.4lx;%lx at %8.8lx\n",
		   longwd ? " TRUE" : "FALSE", thisesd,
		   esdsymarr[thisesd]->sname, add, esdarr[thisesd], offset,
		   offsize, codestart + codelen * 2);
/* p2c: link.pas, line 1733:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1734:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1735:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1736:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1737:
 * Warning: Unrecognized character 015 in file [247] */
	}
      }
/* p2c: link.pas, line 1738:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1739:
 * Warning: Unrecognized character 015 in file [247] */
      /*--- generate resolved address */
/* p2c: link.pas, line 1740:
 * Warning: Unrecognized character 015 in file [247] */
      if (longwd)
	adddata(mvr(mvr(add)));
/* p2c: link.pas, line 1741:
 * Warning: Unrecognized character 015 in file [247] */
      adddata(add);
      /* numesd <> 0 */
/* p2c: link.pas, line 1742:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1743:
 * Warning: Unrecognized character 015 in file [247] */
    }
  }
/* p2c: link.pas, line 1744:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1745:
 * Warning: Unrecognized character 015 in file [247] */
  LINK->bitmap *= 2;
/* p2c: link.pas, line 1746:
 * Warning: Unrecognized character 015 in file [247] */
}  /* PROCDURE procbyte */

/*>>>*/
/*<<<*/
Local Void proctxt_()
{
  struct LOC_proctxt_ V;

  /*>>>*/
/* p2c: link.pas, line 1750:
 * Warning: Unrecognized character 015 in file [247] */
  bpos = 2;
/* p2c: link.pas, line 1751:
 * Warning: Unrecognized character 015 in file [247] */
  V.bitmap = getint();
/* p2c: link.pas, line 1752:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1753:
 * Warning: Unrecognized character 015 in file [247] */
  codelen = 0;
/* p2c: link.pas, line 1754:
 * Warning: Unrecognized character 015 in file [247] */
  V.curresd = gbyte();
/* p2c: link.pas, line 1755:
 * Warning: Unrecognized character 015 in file [247] */
  codestart = outaddr[V.curresd];
/* p2c: link.pas, line 1756:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1757:
 * Warning: Unrecognized character 015 in file [247] */
  while (bpos < strlen(o))
    procbyte(&V);
/* p2c: link.pas, line 1758:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1759:
 * Warning: Unrecognized character 015 in file [247] */
  output_data();
/* p2c: link.pas, line 1760:
 * Warning: Unrecognized character 015 in file [247] */
  /*--- dont forget convert to bytes*/
/* p2c: link.pas, line 1761:
 * Warning: Unrecognized character 015 in file [247] */
  outaddr[V.curresd] += codelen * 2;
/* p2c: link.pas, line 1762:
 * Warning: Unrecognized character 015 in file [247] */
}  /* proctxt */

/*>>>*/
/*<<<*/
Local Void proceom_()
{
/* p2c: link.pas, line 1768:
 * Warning: Unrecognized character 015 in file [247] */
  if (modules)
    putc('\n', mod_file);
/* p2c: link.pas, line 1769:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1770:
 * Warning: Unrecognized character 015 in file [247] */
}  /* proceom */


/*>>>*/
/*<<<*/
Static Void procrec2()
{
  /* second pass object record processor */
  /*<<<*/
  /*>>>*/
/* p2c: link.pas, line 1774:
 * Warning: Unrecognized character 015 in file [247] */
  switch (o[0]) {

/* p2c: link.pas, line 1775:
 * Warning: Unrecognized character 015 in file [247] */
  case '1':
    procid();
    break;

/* p2c: link.pas, line 1776:
 * Warning: Unrecognized character 015 in file [247] */
  case '2':
    procesd_();
    break;

/* p2c: link.pas, line 1777:
 * Warning: Unrecognized character 015 in file [247] */
  case '3':
    proctxt_();
    break;

/* p2c: link.pas, line 1778:
 * Warning: Unrecognized character 015 in file [247] */
  case '4':
    proceom_();
    break;
/* p2c: link.pas, line 1779:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 1780:
 * Warning: Unrecognized character 015 in file [247] */
}  /* procrec2 */
/* p2c: link.pas, line 1781: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1782: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1783: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1784: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1785: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1786: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void openoutput()
{
  string STR2;
  Char STR3[86];
  Char STR4[84];

/* p2c: link.pas, line 1787:
 * Warning: Unrecognized character 015 in file [247] */
  opos = 0;
/* p2c: link.pas, line 1788:
 * Warning: Unrecognized character 015 in file [247] */
  inpacket = false;
/* p2c: link.pas, line 1789:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1790:
 * Warning: Unrecognized character 015 in file [247] */
  if (bin) {
/* p2c: link.pas, line 1791:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1792:
 * Warning: Unrecognized character 015 in file [247] */
    if (download) {
/* p2c: link.pas, line 1793:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1794:
 * Warning: Unrecognized character 015 in file [247] */
      open(btgtfile, "sys$target", history);
/* p2c: link.pas, line 1795: Warning: Expected a ')', found a ':=' [227] */
/* p2c: link.pas, line 1795: Warning: Symbol 'OPEN' is not defined [221] */
/* p2c: link.pas, line 1795:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1796:
 * Warning: Type mismatch in VAR parameter F [295] */
      printf("Downloading binary file %s\n",
	     get_nam(STR2, PAS$FAB(&btgtfile)));
/* p2c: link.pas, line 1796:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1797: Note: REWRITE does not specify a name [181] */
      if (btgtfile != NULL)
	rewind(btgtfile);
      else
	btgtfile = tmpfile();
      if (btgtfile == NULL) {
/* p2c: link.pas, line 1827:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1828:
 * Warning: Unrecognized character 015 in file [247] */
	_EscIO(FileNotFound);
      }
    }
/* p2c: link.pas, line 1797:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1798:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1799:
 * Warning: Unrecognized character 015 in file [247] */
    if (!out)
      return;
/* p2c: link.pas, line 1808:
 * Warning: Unrecognized character 015 in file [247] */
    sprintf(STR3, "%s.BIN", cmdroot);
/* p2c: link.pas, line 1800:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1801:
 * Warning: Unrecognized character 015 in file [247] */
    open(bfile, STR3, history);
/* p2c: link.pas, line 1802: Warning: Expected a ')', found a ':=' [227] */
/* p2c: link.pas, line 1802: Warning: Symbol 'OPEN' is not defined [221] */
/* p2c: link.pas, line 1802:
 * Warning: Unrecognized character 015 in file [247] */
    if (chat || debug || !quiet)
      printf("Making binary file %s\n", get_nam(STR2, PAS$FAB(&bfile)));
/* p2c: link.pas, line 1803:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1804:
 * Warning: Type mismatch in VAR parameter F [295] */
/* p2c: link.pas, line 1804:
 * Warning: Unrecognized character 015 in file [247] */
    if (log_)
      fprintf(log_file, "Making binary file %s\n",
	      get_nam(STR2, PAS$FAB(&bfile)));
/* p2c: link.pas, line 1805:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1806:
 * Warning: Type mismatch in VAR parameter F [295] */
/* p2c: link.pas, line 1806:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1807: Note: REWRITE does not specify a name [181] */
    if (bfile != NULL)
      rewind(bfile);
    else
      bfile = tmpfile();
    if (bfile == NULL)
      _EscIO(FileNotFound);
    return;
  }
/* p2c: link.pas, line 1809:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1810:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1807:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1811:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1812:
 * Warning: Unrecognized character 015 in file [247] */
  if (download) {
/* p2c: link.pas, line 1813:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1814:
 * Warning: Unrecognized character 015 in file [247] */
    open(tgtfile, "sys$target", history);
/* p2c: link.pas, line 1815: Warning: Expected a ')', found a ':=' [227] */
/* p2c: link.pas, line 1815: Warning: Symbol 'OPEN' is not defined [221] */
/* p2c: link.pas, line 1815:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1816:
 * Warning: Type mismatch in VAR parameter F [295] */
    printf("Downloading SR file %s\n", get_nam(STR2, PAS$FAB(&tgtfile)));
/* p2c: link.pas, line 1816:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1817: Note: REWRITE does not specify a name [181] */
    if (tgtfile != NULL)
      rewind(tgtfile);
    else
      tgtfile = tmpfile();
    if (tgtfile == NULL)
      _EscIO(FileNotFound);
  }
/* p2c: link.pas, line 1817:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1818:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1819:
 * Warning: Unrecognized character 015 in file [247] */
  if (!out)
    return;
/* p2c: link.pas, line 1825:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1826:
 * Warning: Unrecognized character 015 in file [247] */
  sprintf(STR4, "%s.SR", cmdroot);
/* p2c: link.pas, line 1820:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1821:
 * Warning: Unrecognized character 015 in file [247] */
  open(sfile, STR4, history);
/* p2c: link.pas, line 1822: Warning: Expected a ')', found a ':=' [227] */
/* p2c: link.pas, line 1822: Warning: Symbol 'OPEN' is not defined [221] */
/* p2c: link.pas, line 1822:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1823:
 * Warning: Type mismatch in VAR parameter F [295] */
  printf("Making SR file %s\n", get_nam(STR2, PAS$FAB(&sfile)));
/* p2c: link.pas, line 1823:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1824: Note: REWRITE does not specify a name [181] */
  if (sfile != NULL)
    rewind(sfile);
  else {
/* p2c: link.pas, line 1824:
 * Warning: Unrecognized character 015 in file [247] */
    sfile = tmpfile();
  }
  if (sfile == NULL)
    _EscIO(FileNotFound);
}  /* openoutput */
/* p2c: link.pas, line 1829: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1830: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1831: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1832: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1833: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1834: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void sendstop()
{
  string endstr;
/* p2c: link.pas, line 1835:
 * Warning: Unrecognized character 015 in file [247] */
  long I;

/* p2c: link.pas, line 1836:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1837:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1838:
 * Warning: Unrecognized character 015 in file [247] */
  if (bin) {
/* p2c: link.pas, line 1839:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1840:
 * Warning: Unrecognized character 015 in file [247] */
    checksum = 0;
/* p2c: link.pas, line 1841:
 * Warning: Unrecognized character 015 in file [247] */
    binbyte(esc);
/* p2c: link.pas, line 1842:
 * Warning: Unrecognized character 015 in file [247] */
    binbyte(0);
/* p2c: link.pas, line 1843:
 * Warning: Unrecognized character 015 in file [247] */
    wbyte(2);
/* p2c: link.pas, line 1844:
 * Warning: Unrecognized character 015 in file [247] */
    wbyte(0);
/* p2c: link.pas, line 1845:
 * Warning: Unrecognized character 015 in file [247] */
    wbyte(4);
/* p2c: link.pas, line 1846:
 * Warning: Unrecognized character 015 in file [247] */
    for (I = 1; I <= 4; I++) {
/* p2c: link.pas, line 1847:
 * Warning: Unrecognized character 015 in file [247] */
      wbyte(0);
    }
/* p2c: link.pas, line 1848:
 * Warning: Unrecognized character 015 in file [247] */
    endpacket();
/* p2c: link.pas, line 1849:
 * Warning: Unrecognized character 015 in file [247] */
    for (I = 0; I <= 511; I++) {
/* p2c: link.pas, line 1850:
 * Warning: Unrecognized character 015 in file [247] */
      binbyte(0);
    }
/* p2c: link.pas, line 1851:
 * Warning: Unrecognized character 015 in file [247] */
    return;
  }
/* p2c: link.pas, line 1852:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1853:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1854:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1855:
 * Warning: Unrecognized character 015 in file [247] */
  strcpy(endstr, "S9030000FC");
/* p2c: link.pas, line 1856:
 * Warning: Unrecognized character 015 in file [247] */
  sendsform(endstr);
/* p2c: link.pas, line 1857:
 * Warning: Unrecognized character 015 in file [247] */
  sendsfnewline();
/* p2c: link.pas, line 1858:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1859:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1860:
 * Warning: Unrecognized character 015 in file [247] */
}  /* sendstop */
/* p2c: link.pas, line 1861: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1862: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1863: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1864: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1865: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void closeoutput()
{
/* p2c: link.pas, line 1866:
 * Warning: Unrecognized character 015 in file [247] */
  if (inpacket) {
/* p2c: link.pas, line 1867:
 * Warning: Unrecognized character 015 in file [247] */
    endpacket();
  }
/* p2c: link.pas, line 1868:
 * Warning: Unrecognized character 015 in file [247] */
  sendstop();
/* p2c: link.pas, line 1869:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1870:
 * Warning: Unrecognized character 015 in file [247] */
  if (bin) {
/* p2c: link.pas, line 1871:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1872:
 * Warning: Unrecognized character 015 in file [247] */
    if (download) {
      if (btgtfile != NULL)
	fclose(btgtfile);
      btgtfile = NULL;
    }
/* p2c: link.pas, line 1873:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1874:
 * Warning: Unrecognized character 015 in file [247] */
    if (!out)
      return;
/* p2c: link.pas, line 1875:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1876:
 * Warning: Unrecognized character 015 in file [247] */
    if (bfile != NULL)
      fclose(bfile);
    bfile = NULL;
    return;
  }
/* p2c: link.pas, line 1877:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1878:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1879:
 * Warning: Unrecognized character 015 in file [247] */
  if (download) {
    if (tgtfile != NULL)
      fclose(tgtfile);
    tgtfile = NULL;
  }
/* p2c: link.pas, line 1880:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1881:
 * Warning: Unrecognized character 015 in file [247] */
  if (!out)
    return;
/* p2c: link.pas, line 1882:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1883:
 * Warning: Unrecognized character 015 in file [247] */
  if (sfile != NULL)
    fclose(sfile);
  sfile = NULL;
/* p2c: link.pas, line 1884:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1885:
 * Warning: Unrecognized character 015 in file [247] */
}
/* p2c: link.pas, line 1886: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1887: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1888: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1889: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1890: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1891: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1892: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1893: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1900: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1901: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1904: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1905: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1906: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1907: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1908: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1912: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1913: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1914: 
 * Warning: Unrecognized character 015 in file [247] */


/* Local variables for do_switch: */
struct LOC_do_switch {
  long sw_len;
  boolean noflag;
  long swpos;
} ;

/* p2c: link.pas, line 1897:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1898:
 * Warning: Unrecognized character 015 in file [247] */
/*<<<*/
/* p2c: link.pas, line 1899:
 * Warning: Unrecognized character 015 in file [247] */
Local Void setsw(b, LINK)
boolean *b;
struct LOC_do_switch *LINK;
{
/* p2c: link.pas, line 1902:
 * Warning: Unrecognized character 015 in file [247] */
  *b = !LINK->noflag;
/* p2c: link.pas, line 1903:
 * Warning: Unrecognized character 015 in file [247] */
}  /* setsw */

/*>>>*/
/*<<<*/
Local Char gnext(LINK)
struct LOC_do_switch *LINK;
{
  Char Result;

/* p2c: link.pas, line 1909:
 * Warning: Unrecognized character 015 in file [247] */
  Result = line_buff[LINK->swpos-1];
/* p2c: link.pas, line 1910:
 * Warning: Unrecognized character 015 in file [247] */
  if (LINK->swpos < LINK->sw_len)
    LINK->swpos++;
/* p2c: link.pas, line 1911:
 * Warning: Unrecognized character 015 in file [247] */
  return Result;
}  /* gnext */


/*>>>*/
/*<<<*/
Static Void do_switch(start, sw_len_)
long start, sw_len_;
{
  /*--- processes a switch setting directive*/
  struct LOC_do_switch V;
/* p2c: link.pas, line 1894:
 * Warning: Unrecognized character 015 in file [247] */
  Char sw[3];
/* p2c: link.pas, line 1895:
 * Warning: Unrecognized character 015 in file [247] */
  long endpos, sw_end, sect, i;
/* p2c: link.pas, line 1896:
 * Warning: Unrecognized character 015 in file [247] */
  Char c;
  long FORLIM;

  /*>>>*/
/* p2c: link.pas, line 1995:
 * Warning: Unrecognized character 015 in file [247] */
  V.sw_len = sw_len_;
  FORLIM = V.sw_len;
/* p2c: link.pas, line 1915:
 * Warning: Unrecognized character 015 in file [247] */
  /*--- Convert to lower case only*/
/* p2c: link.pas, line 1916:
 * Warning: Unrecognized character 015 in file [247] */
  for (i = 0; i < FORLIM; i++) {
/* p2c: link.pas, line 1917:
 * Warning: Unrecognized character 015 in file [247] */
    if (isupper(line_buff[i])) {
/* p2c: link.pas, line 1918:
 * Warning: Unrecognized character 015 in file [247] */
      line_buff[i] = _tolower(line_buff[i]);
    }
  }
/* p2c: link.pas, line 1919:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1920:
 * Warning: Unrecognized character 015 in file [247] */
  V.swpos = start;
/* p2c: link.pas, line 1921:
 * Warning: Unrecognized character 015 in file [247] */
  do {
/* p2c: link.pas, line 1922:
 * Warning: Unrecognized character 015 in file [247] */
    V.noflag = false;
/* p2c: link.pas, line 1923:
 * Warning: Unrecognized character 015 in file [247] */
    sw[0] = gnext(&V);
/* p2c: link.pas, line 1924:
 * Warning: Unrecognized character 015 in file [247] */
    sw[1] = gnext(&V);
/* p2c: link.pas, line 1925:
 * Warning: Unrecognized character 015 in file [247] */
    sw[2] = '.';
/* p2c: link.pas, line 1926:
 * Warning: Unrecognized character 015 in file [247] */
    if (!strncmp(sw, "no.", 3)) {
/* p2c: link.pas, line 1927:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1928:
 * Warning: Unrecognized character 015 in file [247] */
      V.noflag = true;
/* p2c: link.pas, line 1929:
 * Warning: Unrecognized character 015 in file [247] */
      sw[0] = gnext(&V);
/* p2c: link.pas, line 1930:
 * Warning: Unrecognized character 015 in file [247] */
      sw[1] = gnext(&V);
/* p2c: link.pas, line 1931:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 1932:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1933:
 * Warning: Unrecognized character 015 in file [247] */
    sw[2] = gnext(&V);
/* p2c: link.pas, line 1934:
 * Warning: Unrecognized character 015 in file [247] */
    sw_end = V.swpos;
/* p2c: link.pas, line 1935:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1936:
 * Warning: Unrecognized character 015 in file [247] */
    do {
/* p2c: link.pas, line 1937:
 * Warning: Unrecognized character 015 in file [247] */
      c = gnext(&V);
/* p2c: link.pas, line 1938:
 * Warning: Unrecognized character 015 in file [247] */
    } while (!(c == '/' || null_(c) || V.swpos >= V.sw_len));
	/*skip to next switch*/
/* p2c: link.pas, line 1939:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1940:
 * Warning: Unrecognized character 015 in file [247] */
    if (sw[0] == 'o' && isdigit(sw[1])) {
/* p2c: link.pas, line 1941:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1942:
 * Warning: Unrecognized character 015 in file [247] */
      /*we're processing a section start address record*/
/* p2c: link.pas, line 1943:
 * Warning: Unrecognized character 015 in file [247] */
      if (sw[2] == ':') {
/* p2c: link.pas, line 1944:
 * Warning: Unrecognized character 015 in file [247] */
	sect = sw[1] - '0';
/* p2c: link.pas, line 1945:
 * Warning: Unrecognized character 015 in file [247] */
      } else {
/* p2c: link.pas, line 1946:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1947:
 * Warning: Unrecognized character 015 in file [247] */
	sect = (sw[1] - '0') * 10 + sw[2] - '0';
/* p2c: link.pas, line 1948:
 * Warning: Unrecognized character 015 in file [247] */
	sw_end++;
/* p2c: link.pas, line 1949:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 1950:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1951:
 * Warning: Unrecognized character 015 in file [247] */
      if (V.swpos != V.sw_len) {
/* p2c: link.pas, line 1952:
 * Warning: Unrecognized character 015 in file [247] */
	endpos = V.swpos - 2;
/* p2c: link.pas, line 1953:
 * Warning: Unrecognized character 015 in file [247] */
      } else {
/* p2c: link.pas, line 1954:
 * Warning: Unrecognized character 015 in file [247] */
	endpos = V.swpos;
      }
/* p2c: link.pas, line 1955:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1956:
 * Warning: Unrecognized character 015 in file [247] */
      if ((unsigned long)sect <= 15) {
/* p2c: link.pas, line 1957:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1958:
 * Warning: Unrecognized character 015 in file [247] */
	userbase[sect+1] = 0;
/* p2c: link.pas, line 1959:
 * Warning: Unrecognized character 015 in file [247] */
	for (i = sw_end - 1; i < endpos; i++) {
/* p2c: link.pas, line 1960:
 * Warning: Unrecognized character 015 in file [247] */
	  userbase[sect+1] = userbase[sect+1] * 16 + hexchr(line_buff[i]);
	}
/* p2c: link.pas, line 1961:
 * Warning: Unrecognized character 015 in file [247] */
	if (debug)
	  printf("%6.6lx %12ld\n", userbase[sect+1], sect);
/* p2c: link.pas, line 1962:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 1963:
 * Warning: Unrecognized character 015 in file [247] */
      else
	printf(" Illegal section number in switch '%.3s'\n", sw);
    }
/* p2c: link.pas, line 1967:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1968:
 * Warning: Unrecognized character 015 in file [247] */
    else {
/* p2c: link.pas, line 1964:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1965:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1966:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1969:
 * Warning: Unrecognized character 015 in file [247] */
      if (!strncmp(sw, "xre", 3) || !strncmp(sw, "xrf", 3))
      {   /*generate xref file*/
/* p2c: link.pas, line 1970:
 * Warning: Unrecognized character 015 in file [247] */
	setsw(&xref, &V);
      } else if (!strncmp(sw, "map", 3)) {   /*generate map file*/
/* p2c: link.pas, line 1971:
 * Warning: Unrecognized character 015 in file [247] */
	setsw(&map, &V);
      } else if (!strncmp(sw, "sym", 3)) {   /*generate symbol file*/
/* p2c: link.pas, line 1972:
 * Warning: Unrecognized character 015 in file [247] */
	setsw(&symout, &V);
      } else if (!strncmp(sw, "bin", 3)) {   /*binary output*/
/* p2c: link.pas, line 1973:
 * Warning: Unrecognized character 015 in file [247] */
	setsw(&bin, &V);
      } else if (!strncmp(sw, "mod", 3)) {   /*module list*/
/* p2c: link.pas, line 1974:
 * Warning: Unrecognized character 015 in file [247] */
	setsw(&modules, &V);
      } else if (!strncmp(sw, "deb", 3)) {   /*debug mode*/
/* p2c: link.pas, line 1975:
 * Warning: Unrecognized character 015 in file [247] */
	setsw(&debug, &V);
      } else if (!strncmp(sw, "dld", 3) || !strncmp(sw, "dow", 3))
      {   /*download to target*/
/* p2c: link.pas, line 1976:
 * Warning: Unrecognized character 015 in file [247] */
	setsw(&download, &V);
      } else if (!strncmp(sw, "out", 3)) {   /*generate any output at all!*/
/* p2c: link.pas, line 1977:
 * Warning: Unrecognized character 015 in file [247] */
	setsw(&out, &V);
      } else if (!strncmp(sw, "cha", 3)) {   /*generate loads of output*/
/* p2c: link.pas, line 1978:
 * Warning: Unrecognized character 015 in file [247] */
	setsw(&chat, &V);
      } else if (!strncmp(sw, "qui", 3)) {   /*generate minimum output*/
/* p2c: link.pas, line 1979:
 * Warning: Unrecognized character 015 in file [247] */
	setsw(&quiet, &V);
      } else if (!strncmp(sw, "eng", 3)) {   /*say understandable things*/
/* p2c: link.pas, line 1980:
 * Warning: Unrecognized character 015 in file [247] */
	setsw(&english, &V);
      } else if (!strncmp(sw, "log", 3)) {   /*put sizes etc in .log file*/
/* p2c: link.pas, line 1981:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1982:
 * Warning: Unrecognized character 015 in file [247] */
	setsw(&log_, &V);
/* p2c: link.pas, line 1983:
 * Warning: Unrecognized character 015 in file [247] */
	open_log_file();
/* p2c: link.pas, line 1984:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 1985:
 * Warning: Unrecognized character 015 in file [247] */
      else if (!strncmp(sw, "fil", 3)) {
	    /*generate put filenames in mod file*/
/* p2c: link.pas, line 1986:
 * Warning: Unrecognized character 015 in file [247] */
	      setsw(&files, &V);
      } else if (!strncmp(sw, "his", 3)) {   /*generate history file*/
/* p2c: link.pas, line 1987:
 * Warning: Unrecognized character 015 in file [247] */
	setsw(&history, &V);
      } else if (!strncmp(sw, "bel", 3)) {
/* p2c: link.pas, line 1988:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1989:
 * Warning: Unrecognized character 015 in file [247] */
	setsw(&bell, &V);   /*generate bells at end of link*/
/* p2c: link.pas, line 1990:
 * Warning: Unrecognized character 015 in file [247] */
	if (V.noflag)
	  printf("What do you want, a prize or something??\n");
/* p2c: link.pas, line 1991:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 1992:
 * Warning: Unrecognized character 015 in file [247] */
      else if (!strncmp(sw, "che", 3)) {   /*check all possible grubbies*/
/* p2c: link.pas, line 1993:
 * Warning: Unrecognized character 015 in file [247] */
	setsw(&check, &V);
      } else if (!strncmp(sw, "esc", 3))
      {   /*replace all 1B's in code with 1B1B*/
/* p2c: link.pas, line 1994:
 * Warning: Unrecognized character 015 in file [247] */
	setsw(&escape, &V);
      } else
	printf("Unknown switch :'%.3s'\n", sw);
    }
  } while (!(V.swpos >= V.sw_len || null_(c)));
/* p2c: link.pas, line 1996:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1997:
 * Warning: Unrecognized character 015 in file [247] */
}  /* do_switch */
/* p2c: link.pas, line 1998: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 1999: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2000: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2001: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2002: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2003: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void switchprocess(s)
Char *s;
{
  long i = 1;
  long j, l;
/* p2c: link.pas, line 2004:
 * Warning: Unrecognized character 015 in file [247] */
  boolean slashfound = false;
  Char STR1[256];

/* p2c: link.pas, line 2005:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2006:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2007:
 * Warning: Unrecognized character 015 in file [247] */
  l = strlen(s);
/* p2c: link.pas, line 2008:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2009:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2010:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2011:
 * Warning: Unrecognized character 015 in file [247] */
  while (i < l && !slashfound) {
/* p2c: link.pas, line 2012:
 * Warning: Unrecognized character 015 in file [247] */
    if (s[i-1] == '/') {
/* p2c: link.pas, line 2013:
 * Warning: Unrecognized character 015 in file [247] */
      slashfound = true;
/* p2c: link.pas, line 2014:
 * Warning: Unrecognized character 015 in file [247] */
    } else {
/* p2c: link.pas, line 2015:
 * Warning: Unrecognized character 015 in file [247] */
      i++;
    }
  }
/* p2c: link.pas, line 2016:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2017:
 * Warning: Unrecognized character 015 in file [247] */
  if (!slashfound)
    return;
/* p2c: link.pas, line 2028:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2029:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2018:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2019:
 * Warning: Unrecognized character 015 in file [247] */
  for (j = i; j < l; j++) {   /*pick up everything after the slash */
/* p2c: link.pas, line 2020:
 * Warning: Unrecognized character 015 in file [247] */
    line_buff[j - i] = s[j];
  }
/* p2c: link.pas, line 2021:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2022:
 * Warning: Unrecognized character 015 in file [247] */
  do_switch(1L, l - i);
/* p2c: link.pas, line 2023:
 * Warning: Unrecognized character 015 in file [247] */
  if (i == 1) {
/* p2c: link.pas, line 2024:
 * Warning: Unrecognized character 015 in file [247] */
    *s = '\0';
/* p2c: link.pas, line 2025:
 * Warning: Unrecognized character 015 in file [247] */
  } else {
/* p2c: link.pas, line 2026:
 * Warning: Unrecognized character 015 in file [247] */
    sprintf(s, "%.*s", (int)(i - 1), strcpy(STR1, s));
/* p2c: link.pas, line 2027:
 * Warning: Unrecognized character 015 in file [247] */
  }
}  /* switchprocess */
/* p2c: link.pas, line 2030: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2031: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2032: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2033: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2034: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2035: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2036: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Char *getfile(Result, terminator)
Char *Result;
Char *terminator;
{
  filename f;
/* p2c: link.pas, line 2037:
 * Warning: Unrecognized character 015 in file [247] */
  Char c;
/* p2c: link.pas, line 2038:
 * Warning: Unrecognized character 015 in file [247] */
  string s;
/* p2c: link.pas, line 2039:
 * Warning: Unrecognized character 015 in file [247] */
  text_rec_t *tempfile;
  Char *TEMP;
  Char STR1[134];
  string STR3;

/* p2c: link.pas, line 2040:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2041:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2042:
 * Warning: Unrecognized character 015 in file [247] */
  *f = '\0';
/* p2c: link.pas, line 2043:
 * Warning: Unrecognized character 015 in file [247] */
  do {
/* p2c: link.pas, line 2044:
 * Warning: Unrecognized character 015 in file [247] */
    /* --- Get the next char that is part of a filename. */
/* p2c: link.pas, line 2045:
 * Warning: Unrecognized character 015 in file [247] */
    do {
      c = getc(cmdfile->f);
      if (c == '\n')
	c = ' ';
/* p2c: link.pas, line 2048:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2049:
 * Warning: Unrecognized character 015 in file [247] */
      /* --- If it's at the start of a line, handle switches and comments. */
/* p2c: link.pas, line 2050:
 * Warning: Unrecognized character 015 in file [247] */
      if (newline) {
/* p2c: link.pas, line 2051:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2052:
 * Warning: Unrecognized character 015 in file [247] */
	newline = false;
/* p2c: link.pas, line 2053:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2054:
 * Warning: Unrecognized character 015 in file [247] */
	/* --- Read sequence of comment/control lines. */
/* p2c: link.pas, line 2055:
 * Warning: Unrecognized character 015 in file [247] */
	while ((c == '!' || c == '/' || c == '@') && !P_eof(cmdfile->f))
	{   /*its a comment/control line*/
	  fgets(s, max_len + 1, cmdfile->f);
	  TEMP = strchr(s, '\n');
	  if (TEMP != NULL)
	    *TEMP = 0;
/* p2c: link.pas, line 2059:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2060:
 * Warning: Unrecognized character 015 in file [247] */
	  if (c == '@') {
/* p2c: link.pas, line 2061:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2062:
 * Warning: Unrecognized character 015 in file [247] */
	    /*writeln( 'Line read is ', s );*/
/* p2c: link.pas, line 2063:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2064:
 * Warning: Unrecognized character 015 in file [247] */
	    while (!(s[strlen(s) - 1] == '_' || s[strlen(s) - 1] == '-' ||
		     isalnum(s[strlen(s) - 1]))) {
/* p2c: link.pas, line 2065:
 * Warning: Unrecognized character 015 in file [247] */
	      s[strlen(s) - 1] = '\0';
	    }
/* p2c: link.pas, line 2066:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2067:
 * Warning: Unrecognized character 015 in file [247] */
	    printf("File read is %s\n", s);
/* p2c: link.pas, line 2068:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2069:
 * Warning: Unrecognized character 015 in file [247] */
	    tempfile = (text_rec_t *)Malloc(sizeof(text_rec_t));
	    tempfile->f = NULL;
/* p2c: link.pas, line 2070:
 * Warning: Unrecognized character 015 in file [247] */
	    tempfile->next_text = cmdfile;
/* p2c: link.pas, line 2071:
 * Warning: Unrecognized character 015 in file [247] */
	    cmdfile = tempfile;
/* p2c: link.pas, line 2072:
 * Warning: Unrecognized character 015 in file [247] */
	    open(cmdfile->f, s, history);
/* p2c: link.pas, line 2073: Warning: Expected a ')', found a ':=' [227] */
/* p2c: link.pas, line 2073: Warning: Symbol 'OPEN' is not defined [221] */
/* p2c: link.pas, line 2073:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2074:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2075:
 * Warning: Type mismatch in VAR parameter F [295] */
	    printf("File opened is %s\n", get_nam(STR3, PAS$FAB(&cmdfile->f)));
/* p2c: link.pas, line 2075:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2076:
 * Warning: Unrecognized character 015 in file [247] */
	    rewind(cmdfile->f);
	  }
/* p2c: link.pas, line 2079:
 * Warning: Unrecognized character 015 in file [247] */
	  else if (c == '/' && pass == 1) {
/* p2c: link.pas, line 2077:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2078:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2080:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2081:
 * Warning: Unrecognized character 015 in file [247] */
	    sprintf(s, "/%s", strcpy(STR1, s));
/* p2c: link.pas, line 2082:
 * Warning: Unrecognized character 015 in file [247] */
	    switchprocess(s);
/* p2c: link.pas, line 2083:
 * Warning: Unrecognized character 015 in file [247] */
	  }
/* p2c: link.pas, line 2084:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2085:
 * Warning: Unrecognized character 015 in file [247] */
	  if (P_eof(cmdfile->f))
	    break;
/* p2c: link.pas, line 2086:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2087:
 * Warning: Unrecognized character 015 in file [247] */
	  c = getc(cmdfile->f);
	  if (c == '\n')
	    c = ' ';
	}
/* p2c: link.pas, line 2056:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2057:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2058:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2088:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2089:
 * Warning: Unrecognized character 015 in file [247] */
	if (P_eof(cmdfile->f)) {
/* p2c: link.pas, line 2090:
 * Warning: Unrecognized character 015 in file [247] */
	  if (cmdfile->next_text != NULL) {
	    if (cmdfile->f != NULL)
	      fclose(cmdfile->f);
	    cmdfile->f = NULL;
/* p2c: link.pas, line 2093:
 * Warning: Unrecognized character 015 in file [247] */
	    cmdfile = cmdfile->next_text;
/* p2c: link.pas, line 2094:
 * Warning: Unrecognized character 015 in file [247] */
	  }
/* p2c: link.pas, line 2091:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2092:
 * Warning: Unrecognized character 015 in file [247] */
	}
/* p2c: link.pas, line 2095:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2096:
 * Warning: Unrecognized character 015 in file [247] */
      }  /*IF newline*/
/* p2c: link.pas, line 2097:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2098:
 * Warning: Unrecognized character 015 in file [247] */
      /* --- If we're at the end of the line, absorb empty lines. */
/* p2c: link.pas, line 2099:
 * Warning: Unrecognized character 015 in file [247] */
      if (P_eoln(cmdfile->f)) {
	fscanf(cmdfile->f, "%*[^\n]");
	getc(cmdfile->f);
/* p2c: link.pas, line 2102:
 * Warning: Unrecognized character 015 in file [247] */
	while (P_eoln(cmdfile->f) && !P_eof(cmdfile->f)) {
	  fscanf(cmdfile->f, "%*[^\n]");
	  getc(cmdfile->f);
	}
/* p2c: link.pas, line 2103:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2104:
 * Warning: Unrecognized character 015 in file [247] */
	newline = true;
/* p2c: link.pas, line 2105:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 2100:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2101:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2106:
 * Warning: Unrecognized character 015 in file [247] */
    } while (null_(c) && !P_eof(cmdfile->f));
/* p2c: link.pas, line 2046:
 * Warning: Unrecognized character 015 in file [247] */
    /* --- Read the next char. */
/* p2c: link.pas, line 2047:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2107:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2108:
 * Warning: Unrecognized character 015 in file [247] */
    if (P_eof(cmdfile->f)) {
/* p2c: link.pas, line 2109:
 * Warning: Unrecognized character 015 in file [247] */
      if (cmdfile->next_text != NULL) {
	if (cmdfile->f != NULL)
	  fclose(cmdfile->f);
	cmdfile->f = NULL;
/* p2c: link.pas, line 2112:
 * Warning: Unrecognized character 015 in file [247] */
	cmdfile = cmdfile->next_text;
/* p2c: link.pas, line 2113:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 2110:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2111:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 2114:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2115:
 * Warning: Unrecognized character 015 in file [247] */
    if (c != '=' && c != ',' && c != '!' && !null_(c)) {
/* p2c: link.pas, line 2116:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2117:
 * Warning: Unrecognized character 015 in file [247] */
      strcat(f, " ");
/* p2c: link.pas, line 2118:
 * Warning: Unrecognized character 015 in file [247] */
      f[strlen(f) - 1] = c;
/* p2c: link.pas, line 2119:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 2120:
 * Warning: Unrecognized character 015 in file [247] */
  } while (!(c == ',' || c == '=' || P_eof(cmdfile->f)));
/* p2c: link.pas, line 2121:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2122:
 * Warning: Unrecognized character 015 in file [247] */
  if (P_eof(cmdfile->f)) {
/* p2c: link.pas, line 2123:
 * Warning: Unrecognized character 015 in file [247] */
    if (cmdfile->next_text != NULL) {
      if (cmdfile->f != NULL)
	fclose(cmdfile->f);
      cmdfile->f = NULL;
/* p2c: link.pas, line 2126:
 * Warning: Unrecognized character 015 in file [247] */
      cmdfile = cmdfile->next_text;
/* p2c: link.pas, line 2127:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 2124:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2125:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 2128:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2129:
 * Warning: Unrecognized character 015 in file [247] */
  strcpy(Result, f);
/* p2c: link.pas, line 2130:
 * Warning: Unrecognized character 015 in file [247] */
  *terminator = c;
/* p2c: link.pas, line 2131:
 * Warning: Unrecognized character 015 in file [247] */
  /*writeln( 'getfile returning <', f, '>, terminator <', c, '>' );*/
/* p2c: link.pas, line 2132:
 * Warning: Unrecognized character 015 in file [247] */
  return Result;
}  /* getfile */
/* p2c: link.pas, line 2133: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2134: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2135: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2136: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2137: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2138: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Char *getext(Result, f, dext)
Char *Result, *f, *dext;
{
  long i;

/* p2c: link.pas, line 2139:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2140:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2141:
 * Warning: Unrecognized character 015 in file [247] */
  i = strlen(f);
/* p2c: link.pas, line 2142:
 * Warning: Unrecognized character 015 in file [247] */
  /*search backwards, to see if first non-alpha char is a '.' (i.e. extension)*/
/* p2c: link.pas, line 2143:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2144:
 * Warning: Unrecognized character 015 in file [247] */
  while (i > 1 && alphanum(f[i-1])) {
/* p2c: link.pas, line 2145:
 * Warning: Unrecognized character 015 in file [247] */
    i--;
  }
/* p2c: link.pas, line 2146:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2147:
 * Warning: Unrecognized character 015 in file [247] */
  if (f[i-1] == '.') {
    sprintf(Result, "%.*s", (int)(strlen(f) - i + 1), f + i - 1);
/* p2c: link.pas, line 2148:
 * Warning: Unrecognized character 015 in file [247] */
    return Result;
/* p2c: link.pas, line 2149:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 2150:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2151:
 * Warning: Unrecognized character 015 in file [247] */
  strcpy(Result, dext);
/* p2c: link.pas, line 2152:
 * Warning: Unrecognized character 015 in file [247] */
  strcat(f, dext);
/* p2c: link.pas, line 2153:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2154:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2155:
 * Warning: Unrecognized character 015 in file [247] */
  return Result;
}  /* getext */
/* p2c: link.pas, line 2156: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2157: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2158: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2159: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2160: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2161: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2162: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2166: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2167: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2168: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2175: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2176: 
 * Warning: Unrecognized character 015 in file [247] */


/* Local variables for current_time: */
struct LOC_current_time {
  milestone ms;
} ;

/* p2c: link.pas, line 2164:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2165:
 * Warning: Unrecognized character 015 in file [247] */
Local long get_num(startch, LINK)
long startch;
struct LOC_current_time *LINK;
{
  long temp1, temp2;

/* p2c: link.pas, line 2169:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2170:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2171:
 * Warning: Unrecognized character 015 in file [247] */
  temp1 = LINK->ms.time_of_day[startch-1] - '0';
/* p2c: link.pas, line 2172:
 * Warning: Unrecognized character 015 in file [247] */
  temp2 = LINK->ms.time_of_day[startch] - '0';
/* p2c: link.pas, line 2173:
 * Warning: Unrecognized character 015 in file [247] */
  return (temp1 * 10 + temp2);
/* p2c: link.pas, line 2174:
 * Warning: Unrecognized character 015 in file [247] */
}


/*>>>*/
/*<<<*/
Static milestone current_time()
{
  struct LOC_current_time V;
/* p2c: link.pas, line 2163:
 * Warning: Unrecognized character 015 in file [247] */
  long temp;

/* p2c: link.pas, line 2177:
 * Warning: Unrecognized character 015 in file [247] */
  V.ms.mill_time = clock;
/* p2c: link.pas, line 2178: Warning: Symbol 'CLOCK' is not defined [221] */
/* p2c: link.pas, line 2178:
 * Warning: Unrecognized character 015 in file [247] */
  VAXtime(V.ms.time_of_day);
/* p2c: link.pas, line 2179:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2180:
 * Warning: Unrecognized character 015 in file [247] */
  /* ms.time_of_day is hh:mm:ss.cc */
/* p2c: link.pas, line 2181:
 * Warning: Unrecognized character 015 in file [247] */
  /*                   12 45 78 AB */
/* p2c: link.pas, line 2182:
 * Warning: Unrecognized character 015 in file [247] */
  V.ms.int_time = 0;
/* p2c: link.pas, line 2183:
 * Warning: Unrecognized character 015 in file [247] */
  temp = get_num(1L, &V);   /*hh*/
/* p2c: link.pas, line 2184:
 * Warning: Unrecognized character 015 in file [247] */
  V.ms.int_time = temp;
/* p2c: link.pas, line 2185:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2186:
 * Warning: Unrecognized character 015 in file [247] */
  temp = get_num(4L, &V);   /*mm*/
/* p2c: link.pas, line 2187:
 * Warning: Unrecognized character 015 in file [247] */
  V.ms.int_time = V.ms.int_time * 60 + temp;
/* p2c: link.pas, line 2188:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2189:
 * Warning: Unrecognized character 015 in file [247] */
  temp = get_num(7L, &V);   /*ss*/
/* p2c: link.pas, line 2190:
 * Warning: Unrecognized character 015 in file [247] */
  V.ms.int_time = V.ms.int_time * 60 + temp;
/* p2c: link.pas, line 2191:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2192:
 * Warning: Unrecognized character 015 in file [247] */
  temp = get_num(10L, &V);   /*cc*/
/* p2c: link.pas, line 2193:
 * Warning: Unrecognized character 015 in file [247] */
  V.ms.int_time = V.ms.int_time * 100 + temp;
/* p2c: link.pas, line 2194:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2195:
 * Warning: Unrecognized character 015 in file [247] */
  return V.ms;
/* p2c: link.pas, line 2196:
 * Warning: Unrecognized character 015 in file [247] */
}  /* current_time */
/* p2c: link.pas, line 2197: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2198: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2199: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2200: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2201: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2202: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void show_milestone(s, ms1, ms2)
Char *s;
milestone ms1, ms2;
{
  long temp, cc, ss, mm, hh;
/* p2c: link.pas, line 2203:
 * Warning: Unrecognized character 015 in file [247] */
  string time_str;
  long FORLIM;

/* p2c: link.pas, line 2204:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2205:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2206:
 * Warning: Unrecognized character 015 in file [247] */
  temp = ms1.int_time - ms2.int_time;
/* p2c: link.pas, line 2207:
 * Warning: Unrecognized character 015 in file [247] */
  cc = temp % 100;
/* p2c: link.pas, line 2208:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2209:
 * Warning: Unrecognized character 015 in file [247] */
  temp /= 100;
/* p2c: link.pas, line 2210:
 * Warning: Unrecognized character 015 in file [247] */
  ss = temp % 60;
/* p2c: link.pas, line 2211:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2212:
 * Warning: Unrecognized character 015 in file [247] */
  temp /= 60;
/* p2c: link.pas, line 2213:
 * Warning: Unrecognized character 015 in file [247] */
  mm = temp % 60;
/* p2c: link.pas, line 2214:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2215:
 * Warning: Unrecognized character 015 in file [247] */
  temp /= 60;
/* p2c: link.pas, line 2216:
 * Warning: Unrecognized character 015 in file [247] */
  hh = temp % 60;
/* p2c: link.pas, line 2217:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2218:
 * Warning: Unrecognized character 015 in file [247] */
  fputs(s, stdout);
/* p2c: link.pas, line 2219:
 * Warning: Unrecognized character 015 in file [247] */
  printf("%.11s %7.2f",
	 ms1.time_of_day, (ms1.mill_time - ms2.mill_time) / 1000.0);
/* p2c: link.pas, line 2220:
 * Warning: Unrecognized character 015 in file [247] */
  sprintf(time_str, "%2ld:%2ld:%2ld.%2ld", hh, mm, ss, cc);
  FORLIM = strlen(time_str);
/* p2c: link.pas, line 2221:
 * Warning: Unrecognized character 015 in file [247] */
  for (temp = 0; temp < FORLIM; temp++) {
/* p2c: link.pas, line 2222:
 * Warning: Unrecognized character 015 in file [247] */
    if (time_str[temp] == ' ')
      time_str[temp] = '0';
  }
/* p2c: link.pas, line 2223:
 * Warning: Unrecognized character 015 in file [247] */
  printf(" %s", time_str);
/* p2c: link.pas, line 2224:
 * Warning: Unrecognized character 015 in file [247] */
  printf("  %7.2f%%\n", (ms1.mill_time - ms2.mill_time) * 100.0 /
			(end_link.mill_time - start_link.mill_time));
/* p2c: link.pas, line 2225:
 * Warning: Unrecognized character 015 in file [247] */
}
/* p2c: link.pas, line 2226: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2227: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2228: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2229: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2230: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2231: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
Static Void hash_usage()
{
  long depth, i;
  long hash_used = 0;
/* p2c: link.pas, line 2232:
 * Warning: Unrecognized character 015 in file [247] */
  long depth_used[11];
/* p2c: link.pas, line 2233:
 * Warning: Unrecognized character 015 in file [247] */
  symbol *s_ptr;

/* p2c: link.pas, line 2234:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2235:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2236:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2237:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2238:
 * Warning: Unrecognized character 015 in file [247] */
  for (depth = 0; depth <= 10; depth++) {
/* p2c: link.pas, line 2239:
 * Warning: Unrecognized character 015 in file [247] */
    depth_used[depth] = 0;
  }
/* p2c: link.pas, line 2240:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2241:
 * Warning: Unrecognized character 015 in file [247] */
  for (i = 0; i <= max_hash; i++) {
    if (hash_table[i] != NULL) {
/* p2c: link.pas, line 2242:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2243:
 * Warning: Unrecognized character 015 in file [247] */
      hash_used++;
/* p2c: link.pas, line 2244:
 * Warning: Unrecognized character 015 in file [247] */
      depth = 0;
/* p2c: link.pas, line 2245:
 * Warning: Unrecognized character 015 in file [247] */
      s_ptr = hash_table[i];
/* p2c: link.pas, line 2246:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2247:
 * Warning: Unrecognized character 015 in file [247] */
      do {
/* p2c: link.pas, line 2248:
 * Warning: Unrecognized character 015 in file [247] */
	depth++;
/* p2c: link.pas, line 2249:
 * Warning: Unrecognized character 015 in file [247] */
	s_ptr = s_ptr->next_sym;
/* p2c: link.pas, line 2250:
 * Warning: Unrecognized character 015 in file [247] */
      } while (s_ptr != NULL);
/* p2c: link.pas, line 2251:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2252:
 * Warning: Unrecognized character 015 in file [247] */
      if (depth > 10) {
	printf("Depth %ld too deep, rounding to 10.\n", depth);
/* p2c: link.pas, line 2255:
 * Warning: Unrecognized character 015 in file [247] */
	depth = 10;
/* p2c: link.pas, line 2256:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 2253:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2254:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2257:
 * Warning: Unrecognized character 015 in file [247] */
      depth_used[depth]++;
/* p2c: link.pas, line 2258:
 * Warning: Unrecognized character 015 in file [247] */
    }
  }
/* p2c: link.pas, line 2259:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2260:
 * Warning: Unrecognized character 015 in file [247] */
  if (!(chat || debug)) {
    return;
  }  /*chatting*/
/* p2c: link.pas, line 2261:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2262:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2268:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2269:
 * Warning: Unrecognized character 015 in file [247] */
  printf("%ld out of %ld hash table entries used.\n",
	 hash_used, (long)max_hash);
/* p2c: link.pas, line 2263:
 * Warning: Unrecognized character 015 in file [247] */
  for (depth = 0; depth <= 10; depth++) {
/* p2c: link.pas, line 2264:
 * Warning: Unrecognized character 015 in file [247] */
    if (depth_used[depth] != 0)
      printf("%ld @ %ld,", depth_used[depth], depth);
/* p2c: link.pas, line 2265:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 2266:
 * Warning: Unrecognized character 015 in file [247] */
  putchar('\n');
/* p2c: link.pas, line 2267:
 * Warning: Unrecognized character 015 in file [247] */
}
/* p2c: link.pas, line 2270: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2271: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2272: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2273: 
 * Warning: Unrecognized character 015 in file [247] */


/*>>>*/
/*<<<*/
main(argc, argv)
int argc;
Char *argv[];
{  /* main */
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
/* p2c: link.pas, line 2274:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2275:
 * Warning: Unrecognized character 015 in file [247] */
  ql_dbldefsym = 0x8008004L;
/* p2c: link.pas, line 2276:
 * Warning: Unrecognized character 015 in file [247] */
  ql_undefsym = 0x800800cL;
/* p2c: link.pas, line 2277:
 * Warning: Unrecognized character 015 in file [247] */
  ql_fatalerr = 0x8008014L;
/* p2c: link.pas, line 2278:
 * Warning: Unrecognized character 015 in file [247] */
  ql_sizeclash = 0x800801aL;
/* p2c: link.pas, line 2279:
 * Warning: Unrecognized character 015 in file [247] */
  ql_sctovrlap = 0;
/* p2c: link.pas, line 2280:
 * Warning: Unrecognized character 015 in file [247] */
  return_code = 0;
/* p2c: link.pas, line 2281:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2282:
 * Warning: Unrecognized character 015 in file [247] */
  /*--- set up default switch settings*/
/* p2c: link.pas, line 2283:
 * Warning: Unrecognized character 015 in file [247] */
  xref = false;
/* p2c: link.pas, line 2284:
 * Warning: Unrecognized character 015 in file [247] */
  symout = false;
/* p2c: link.pas, line 2285:
 * Warning: Unrecognized character 015 in file [247] */
  bin = false;
/* p2c: link.pas, line 2286:
 * Warning: Unrecognized character 015 in file [247] */
  check = false;
/* p2c: link.pas, line 2287:
 * Warning: Unrecognized character 015 in file [247] */
  bell = false;
/* p2c: link.pas, line 2288:
 * Warning: Unrecognized character 015 in file [247] */
  out = true;
/* p2c: link.pas, line 2289:
 * Warning: Unrecognized character 015 in file [247] */
  map = true;
/* p2c: link.pas, line 2290:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2291:
 * Warning: Unrecognized character 015 in file [247] */
  history = false;
/* p2c: link.pas, line 2292:
 * Warning: Unrecognized character 015 in file [247] */
  chat = false;
/* p2c: link.pas, line 2293:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2294:
 * Warning: Unrecognized character 015 in file [247] */
  use_history = false;
/* p2c: link.pas, line 2295:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2296:
 * Warning: Unrecognized character 015 in file [247] */
  modules = false;
/* p2c: link.pas, line 2297:
 * Warning: Unrecognized character 015 in file [247] */
  files = false;
/* p2c: link.pas, line 2298:
 * Warning: Unrecognized character 015 in file [247] */
  strcpy(file_id, "no file open.");
/* p2c: link.pas, line 2299:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2300:
 * Warning: Unrecognized character 015 in file [247] */
  quiet = false;
/* p2c: link.pas, line 2301:
 * Warning: Unrecognized character 015 in file [247] */
  english = false;
/* p2c: link.pas, line 2302:
 * Warning: Unrecognized character 015 in file [247] */
  log_ = false;
/* p2c: link.pas, line 2303:
 * Warning: Unrecognized character 015 in file [247] */
  newline = true;
/* p2c: link.pas, line 2304:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2305:
 * Warning: Unrecognized character 015 in file [247] */
  escape = true;
/* p2c: link.pas, line 2306:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2307:
 * Warning: Unrecognized character 015 in file [247] */
  /*--- set up pointers for common area list*/
/* p2c: link.pas, line 2308:
 * Warning: Unrecognized character 015 in file [247] */
  com_head = NULL;
/* p2c: link.pas, line 2309:
 * Warning: Unrecognized character 015 in file [247] */
  prev_com = NULL;
/* p2c: link.pas, line 2310:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2311:
 * Warning: Unrecognized character 015 in file [247] */
  strcpy(defext, ".ro");
/* p2c: link.pas, line 2312:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2313:
 * Warning: Unrecognized character 015 in file [247] */
  total = 0;
/* p2c: link.pas, line 2314:
 * Warning: Unrecognized character 015 in file [247] */
  undefsym = 0;
/* p2c: link.pas, line 2315:
 * Warning: Unrecognized character 015 in file [247] */
  init_hash();
/* p2c: link.pas, line 2316:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2317:
 * Warning: Unrecognized character 015 in file [247] */
  for (i = -1; i <= 15; i++) {
/* p2c: link.pas, line 2318:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2319:
 * Warning: Unrecognized character 015 in file [247] */
    sectbase[i+1] = 0;
/* p2c: link.pas, line 2320:
 * Warning: Unrecognized character 015 in file [247] */
    userbase[i+1] = -1;   /*set up user bases as not needed*/
/* p2c: link.pas, line 2321:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 2322:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2323:
 * Warning: Unrecognized character 015 in file [247] */
  sprintf(prompt, "quicklink %s", vermsg);
/* p2c: link.pas, line 2324:
 * Warning: Unrecognized character 015 in file [247] */
  if (chat || debug)
    puts(prompt);
/* p2c: link.pas, line 2325:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2326:
 * Warning: Unrecognized character 015 in file [247] */
  strcat(prompt, " >");
/* p2c: link.pas, line 2327:
 * Warning: Unrecognized character 015 in file [247] */
  fil_len = -1;
/* p2c: link.pas, line 2328:
 * Warning: Unrecognized character 015 in file [247] */
  pflag = 0;
/* p2c: link.pas, line 2329:
 * Warning: Unrecognized character 015 in file [247] */
  result = lib$get_foreign(fil, prompt, &fil_len, &pflag);
/* p2c: link.pas, line 2330:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2331:
 * Warning: Unrecognized character 015 in file [247] */
  switchprocess(fil);
/* p2c: link.pas, line 2332:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2333:
 * Warning: Unrecognized character 015 in file [247] */
  while (*fil == '\0') {
    fputs(prompt, stdout);
/* p2c: link.pas, line 2336:
 * Warning: Unrecognized character 015 in file [247] */
    fgets(fil, max_len + 1, stdin);
    TEMP = strchr(fil, '\n');
    if (TEMP != NULL)
      *TEMP = 0;
/* p2c: link.pas, line 2337:
 * Warning: Unrecognized character 015 in file [247] */
    switchprocess(fil);
/* p2c: link.pas, line 2338:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 2334:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2335:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2339:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2340:
 * Warning: Unrecognized character 015 in file [247] */
  strcpy(cmdname, fil);
/* p2c: link.pas, line 2341:
 * Warning: Unrecognized character 015 in file [247] */
  getext(ext, cmdname, ".cmd");
/* p2c: link.pas, line 2342:
 * Warning: Unrecognized character 015 in file [247] */
  strcpy(cmdroot, cmdname);
/* p2c: link.pas, line 2343:
 * Warning: Unrecognized character 015 in file [247] */
  cmdroot[strlen(cmdname) - strlen(ext)] = '\0';
/* p2c: link.pas, line 2344:
 * Note: Modification of string length may translate incorrectly [146] */
/* p2c: link.pas, line 2344:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2345:
 * Warning: Unrecognized character 015 in file [247] */
  colonpos = strpos2(":", cmdroot, 1);
/* p2c: link.pas, line 2346:
 * Warning: Unrecognized character 015 in file [247] */
  dirend = strpos2("]", cmdroot, 1);
/* p2c: link.pas, line 2347:
 * Warning: Unrecognized character 015 in file [247] */
  if (colonpos > dirend)
    dirend = colonpos;
/* p2c: link.pas, line 2348:
 * Warning: Unrecognized character 015 in file [247] */
  if (dirend != 0) {
    sprintf(STR2, "%.*s", (int)(strlen(cmdroot) - dirend), cmdroot + dirend);
/* p2c: link.pas, line 2349:
 * Warning: Unrecognized character 015 in file [247] */
    strcpy(cmdroot, STR2);
  }
/* p2c: link.pas, line 2350:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2351:
 * Warning: Unrecognized character 015 in file [247] */
  start_link = current_time();
/* p2c: link.pas, line 2352:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2353:
 * Warning: Unrecognized character 015 in file [247] */
  start_read_his = current_time();
/* p2c: link.pas, line 2354:
 * Warning: Unrecognized character 015 in file [247] */
  end_read_his = start_read_his;
/* p2c: link.pas, line 2355:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2356:
 * Warning: Unrecognized character 015 in file [247] */
  cmdfile = (text_rec_t *)Malloc(sizeof(text_rec_t));
  cmdfile->f = NULL;
/* p2c: link.pas, line 2357:
 * Warning: Unrecognized character 015 in file [247] */
  cmdfile->next_text = NULL;
/* p2c: link.pas, line 2358:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2359:
 * Warning: Unrecognized character 015 in file [247] */
  if (chat || debug)
    printf("File given is %s\n", cmdname);
/* p2c: link.pas, line 2360:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2361:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2362:
 * Warning: Unrecognized character 015 in file [247] */
  open(cmdfile->f, cmdname, history);
/* p2c: link.pas, line 2363: Warning: Expected a ')', found a ':=' [227] */
/* p2c: link.pas, line 2363: Warning: Symbol 'OPEN' is not defined [221] */
/* p2c: link.pas, line 2363:
 * Warning: Unrecognized character 015 in file [247] */
  rewind(cmdfile->f);
/* p2c: link.pas, line 2364:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2365:
 * Warning: Unrecognized character 015 in file [247] */
  get_nam(full_filename, PAS$FAB(&cmdfile->f));
/* p2c: link.pas, line 2366:
 * Warning: Type mismatch in VAR parameter F [295] */
/* p2c: link.pas, line 2366:
 * Warning: Unrecognized character 015 in file [247] */
  printf("Linking from %s\n", full_filename);
/* p2c: link.pas, line 2367:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2368:
 * Warning: Unrecognized character 015 in file [247] */
  pass = 1;
/* p2c: link.pas, line 2369:
 * Warning: Unrecognized character 015 in file [247] */
  firstfile = true;
/* p2c: link.pas, line 2370:
 * Warning: Unrecognized character 015 in file [247] */
  basepos = startbase;
/* p2c: link.pas, line 2371:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2372:
 * Warning: Unrecognized character 015 in file [247] */
  do {
/* p2c: link.pas, line 2373:
 * Warning: Unrecognized character 015 in file [247] */
    getfile(f, &termchar);
/* p2c: link.pas, line 2374:
 * Warning: Unrecognized character 015 in file [247] */
    if (termchar == '=') {
/* p2c: link.pas, line 2375:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2376:
 * Warning: Unrecognized character 015 in file [247] */
      if (firstfile) {
/* p2c: link.pas, line 2377:
 * Warning: Unrecognized character 015 in file [247] */
	strcpy(cmdroot, f);
/* p2c: link.pas, line 2378:
 * Warning: Unrecognized character 015 in file [247] */
      } else
	printf("You can't put an '=' THERE!\n");
    }
/* p2c: link.pas, line 2381:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2382:
 * Warning: Unrecognized character 015 in file [247] */
    else {   /* history file of previous link */
/* p2c: link.pas, line 2379:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2380:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2383:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2384:
 * Warning: Unrecognized character 015 in file [247] */
      getext(ext, f, defext);
/* p2c: link.pas, line 2385:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2386:
 * Warning: Unrecognized character 015 in file [247] */
      if (!strcmp(ext, ".his")) {
/* p2c: link.pas, line 2387:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2388:
 * Warning: Unrecognized character 015 in file [247] */
	if (use_history) {
	  printf("Can only use one history file, subsequent ones ignored\n");
/* p2c: link.pas, line 2390:
 * Warning: Unrecognized character 015 in file [247] */
	}
/* p2c: link.pas, line 2389:
 * Warning: Unrecognized character 015 in file [247] */
	else {
/* p2c: link.pas, line 2391:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2392:
 * Warning: Unrecognized character 015 in file [247] */
	  start_read_his = current_time();
/* p2c: link.pas, line 2393:
 * Warning: Unrecognized character 015 in file [247] */
	  read_history(f);
/* p2c: link.pas, line 2394:
 * Warning: Unrecognized character 015 in file [247] */
	  end_read_his = current_time();
/* p2c: link.pas, line 2395:
 * Warning: Unrecognized character 015 in file [247] */
	}
/* p2c: link.pas, line 2396:
 * Warning: Unrecognized character 015 in file [247] */
	use_history = true;
/* p2c: link.pas, line 2397:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 2398:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2399:
 * Warning: Unrecognized character 015 in file [247] */
      else if (!strcmp(ext, ".rx")) {   /* text format .rx file */
/* p2c: link.pas, line 2400:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2401:
 * Warning: Unrecognized character 015 in file [247] */
	opentextin(f);
/* p2c: link.pas, line 2402:
 * Warning: Unrecognized character 015 in file [247] */
	do {
/* p2c: link.pas, line 2403:
 * Warning: Unrecognized character 015 in file [247] */
	  gettextrec(o);
/* p2c: link.pas, line 2404:
 * Warning: Unrecognized character 015 in file [247] */
	  if (*o != '\0') {
/* p2c: link.pas, line 2405:
 * Warning: Unrecognized character 015 in file [247] */
	    processrec();
	  }
/* p2c: link.pas, line 2406:
 * Warning: Unrecognized character 015 in file [247] */
	} while (!P_eof(tobjfile));
/* p2c: link.pas, line 2407:
 * Warning: Unrecognized character 015 in file [247] */
	if (tobjfile != NULL)
	  fclose(tobjfile);
	tobjfile = NULL;
/* p2c: link.pas, line 2408:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 2409:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2410:
 * Warning: Unrecognized character 015 in file [247] */
      else {
/* p2c: link.pas, line 2411:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2412:
 * Warning: Unrecognized character 015 in file [247] */
	openin(f);
/* p2c: link.pas, line 2413:
 * Warning: Unrecognized character 015 in file [247] */
	do {
/* p2c: link.pas, line 2414:
 * Warning: Unrecognized character 015 in file [247] */
	  getrec(o);
/* p2c: link.pas, line 2415:
 * Warning: Unrecognized character 015 in file [247] */
	  if (*o != '\0') {
/* p2c: link.pas, line 2416:
 * Warning: Unrecognized character 015 in file [247] */
	    processrec();
	  }
/* p2c: link.pas, line 2417:
 * Warning: Unrecognized character 015 in file [247] */
	} while (!empty);
/* p2c: link.pas, line 2418:
 * Warning: Unrecognized character 015 in file [247] */
	if (objfile != NULL)
	  fclose(objfile);
	objfile = NULL;
	/* normal .ro file */
/* p2c: link.pas, line 2419:
 * Warning: Unrecognized character 015 in file [247] */
      }
    }
    /*process the file*/
/* p2c: link.pas, line 2420:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2421:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2422:
 * Warning: Unrecognized character 015 in file [247] */
    firstfile = false;
/* p2c: link.pas, line 2423:
 * Warning: Unrecognized character 015 in file [247] */
  } while (!P_eof(cmdfile->f));
/* p2c: link.pas, line 2424:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2425:
 * Warning: Unrecognized character 015 in file [247] */
  end_pass_1 = current_time();
/* p2c: link.pas, line 2426:
 * Warning: Unrecognized character 015 in file [247] */
  alloc_com();
/* p2c: link.pas, line 2427:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2428:
 * Warning: Unrecognized character 015 in file [247] */
  hash_usage();
/* p2c: link.pas, line 2429:
 * Warning: Unrecognized character 015 in file [247] */
  if (chat || debug || !quiet) {
    printf("%5ld in symbol table\n", numsymbols);
/* p2c: link.pas, line 2432:
 * Warning: Unrecognized character 015 in file [247] */
    if (log_)
      fprintf(log_file, "%5ld in symbol table\n", numsymbols);
/* p2c: link.pas, line 2433:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2434:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 2430:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2431:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2435:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2436:
 * Warning: Unrecognized character 015 in file [247] */
  baseaddr[0] = 0;   /*set up base of absolute section*/
/* p2c: link.pas, line 2437:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2438:
 * Warning: Unrecognized character 015 in file [247] */
  for (i = 0; i <= 15; i++) {
/* p2c: link.pas, line 2439:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2440:
 * Warning: Unrecognized character 015 in file [247] */
    if (userbase[i+1] != -1) {   /*--- put this section somewhere special*/
/* p2c: link.pas, line 2441:
 * Warning: Unrecognized character 015 in file [247] */
      basepos = userbase[i+1];
    }
/* p2c: link.pas, line 2442:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2443:
 * Warning: Unrecognized character 015 in file [247] */
    if (sectbase[i+1] != 0) {
/* p2c: link.pas, line 2444:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2445:
 * Warning: Unrecognized character 015 in file [247] */
      if (!english)
	printf("Section %2ld Start %6.6lx Length %6.6lx",
	       i, basepos, sectbase[i+1]);
/* p2c: link.pas, line 2446:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2447:
 * Warning: Unrecognized character 015 in file [247] */
      baseaddr[i+1] = basepos;
/* p2c: link.pas, line 2448:
 * Warning: Unrecognized character 015 in file [247] */
      basepos += sectbase[i+1];
/* p2c: link.pas, line 2449:
 * Warning: Unrecognized character 015 in file [247] */
      if (!english)
	printf(" Finish  %6.6lx\n", basepos);
/* p2c: link.pas, line 2450:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2451:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 2452:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 2453:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2454:
 * Warning: Unrecognized character 015 in file [247] */
  if (english) {
    putchar('\n');
/* p2c: link.pas, line 2457:
 * Warning: Unrecognized character 015 in file [247] */
    if (sectbase[9] != 0) {
      printf("Size of P                 (8)  = %8ld bytes\n", sectbase[9]);
/* p2c: link.pas, line 2460:
 * Warning: Unrecognized character 015 in file [247] */
      total += sectbase[9];
/* p2c: link.pas, line 2461:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 2458:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2459:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2462:
 * Warning: Unrecognized character 015 in file [247] */
    if (sectbase[10] != 0) {
      printf("Size of HELP              (9)  = %8ld bytes\n", sectbase[10]);
/* p2c: link.pas, line 2465:
 * Warning: Unrecognized character 015 in file [247] */
      total += sectbase[10];
/* p2c: link.pas, line 2466:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 2463:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2464:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2467:
 * Warning: Unrecognized character 015 in file [247] */
    if (sectbase[13] != 0) {
      printf("Size of error messages   (12)  = %8ld bytes\n", sectbase[13]);
/* p2c: link.pas, line 2470:
 * Warning: Unrecognized character 015 in file [247] */
      total += sectbase[13];
/* p2c: link.pas, line 2471:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 2468:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2469:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2472:
 * Warning: Unrecognized character 015 in file [247] */
    if (sectbase[14] != 0) {
      printf("Size of code & constants (13)  = %8ld bytes\n", sectbase[14]);
/* p2c: link.pas, line 2475:
 * Warning: Unrecognized character 015 in file [247] */
      total += sectbase[14];
/* p2c: link.pas, line 2476:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 2473:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2474:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2477:
 * Warning: Unrecognized character 015 in file [247] */
    if (sectbase[15] != 0) {
      printf("Size of diagnostic block (14)  = %8ld bytes\n", sectbase[15]);
/* p2c: link.pas, line 2480:
 * Warning: Unrecognized character 015 in file [247] */
      total += sectbase[15];
/* p2c: link.pas, line 2481:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 2478:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2479:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2482:
 * Warning: Unrecognized character 015 in file [247] */
    if (sectbase[16] != 0) {
      printf("Size of global variables (15)  = %8ld bytes\n", sectbase[16]);
/* p2c: link.pas, line 2485:
 * Warning: Unrecognized character 015 in file [247] */
      total += sectbase[16];
/* p2c: link.pas, line 2486:
 * Warning: Unrecognized character 015 in file [247] */
    }
/* p2c: link.pas, line 2483:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2484:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2487:
 * Warning: Unrecognized character 015 in file [247] */
    printf("Total size                     = %8ld bytes\n", total);
/* p2c: link.pas, line 2488:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 2455:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2456:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2489:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2490:
 * Warning: Unrecognized character 015 in file [247] */
  overlap_check();
/* p2c: link.pas, line 2491:
 * Warning: Unrecognized character 015 in file [247] */
  end_space_alloc = current_time();
/* p2c: link.pas, line 2492:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2493:
 * Warning: Unrecognized character 015 in file [247] */
  if (undefsym != 0) {
    printf("Number of undefined symbols:- %12ld\n", undefsym);
/* p2c: link.pas, line 2496:
 * Warning: Unrecognized character 015 in file [247] */
    if (log_)
      fprintf(log_file, "Number of undefined symbols:- %12ld\n", undefsym);
/* p2c: link.pas, line 2497:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2498:
 * Warning: Unrecognized character 015 in file [247] */
    check_undef();
/* p2c: link.pas, line 2499:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 2494:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2495:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2500:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2501:
 * Warning: Unrecognized character 015 in file [247] */
  if (bin) {
/* p2c: link.pas, line 2502:
 * Warning: Unrecognized character 015 in file [247] */
    smax = 512;   /*randomly large number!*/
/* p2c: link.pas, line 2503:
 * Warning: Unrecognized character 015 in file [247] */
  } else {
/* p2c: link.pas, line 2504:
 * Warning: Unrecognized character 015 in file [247] */
    smax = 16;
  }
  /*s-format max line size*/
/* p2c: link.pas, line 2505:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2506:
 * Warning: Unrecognized character 015 in file [247] */
  if (modules || out || download) {
/* p2c: link.pas, line 2507:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2508:
 * Warning: Unrecognized character 015 in file [247] */
    pass = 2;
/* p2c: link.pas, line 2509:
 * Warning: Unrecognized character 015 in file [247] */
    openoutput();
/* p2c: link.pas, line 2510:
 * Warning: Unrecognized character 015 in file [247] */
    rewind(cmdfile->f);
/* p2c: link.pas, line 2511:
 * Warning: Unrecognized character 015 in file [247] */
    newline = true;
/* p2c: link.pas, line 2512:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2513:
 * Warning: Unrecognized character 015 in file [247] */
    if (modules) {
      sprintf(STR1, "%s.MOD", cmdroot);
/* p2c: link.pas, line 2514:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2515:
 * Warning: Unrecognized character 015 in file [247] */
      open(mod_file, STR1, history);
/* p2c: link.pas, line 2516: Warning: Expected a ')', found a ':=' [227] */
/* p2c: link.pas, line 2516: Warning: Symbol 'OPEN' is not defined [221] */
/* p2c: link.pas, line 2516:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2517: Note: REWRITE does not specify a name [181] */
      if (mod_file != NULL)
	rewind(mod_file);
      else
	mod_file = tmpfile();
      if (mod_file == NULL)
	_EscIO(FileNotFound);
    }
/* p2c: link.pas, line 2517:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2518:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2519:
 * Warning: Unrecognized character 015 in file [247] */
    for (i = 0; i <= 15; i++)
      sbase[i+1] = 0;
/* p2c: link.pas, line 2520:
 * Warning: Unrecognized character 015 in file [247] */
    do {
/* p2c: link.pas, line 2521:
 * Warning: Unrecognized character 015 in file [247] */
      getfile(f, &termchar);
/* p2c: link.pas, line 2522:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2523:
 * Warning: Unrecognized character 015 in file [247] */
      if (termchar != '=') {
/* p2c: link.pas, line 2524:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2525:
 * Warning: Unrecognized character 015 in file [247] */
	getext(ext, f, defext);
/* p2c: link.pas, line 2526:
 * Warning: Unrecognized character 015 in file [247] */
	if (strcmp(ext, ".his")) {
	  if (!strcmp(ext, ".rx")) {   /* text format .rx file */
/* p2c: link.pas, line 2532:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2533:
 * Warning: Unrecognized character 015 in file [247] */
	    opentextin(f);
/* p2c: link.pas, line 2534:
 * Warning: Unrecognized character 015 in file [247] */
	    do {
/* p2c: link.pas, line 2535:
 * Warning: Unrecognized character 015 in file [247] */
	      gettextrec(o);
/* p2c: link.pas, line 2536:
 * Warning: Unrecognized character 015 in file [247] */
	      if (*o != '\0') {
/* p2c: link.pas, line 2537:
 * Warning: Unrecognized character 015 in file [247] */
		procrec2();
	      }
/* p2c: link.pas, line 2538:
 * Warning: Unrecognized character 015 in file [247] */
	    } while (!P_eof(tobjfile));
/* p2c: link.pas, line 2539:
 * Warning: Unrecognized character 015 in file [247] */
	    if (tobjfile != NULL)
	      fclose(tobjfile);
	    tobjfile = NULL;
/* p2c: link.pas, line 2540:
 * Warning: Unrecognized character 015 in file [247] */
	  }
/* p2c: link.pas, line 2541:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2542:
 * Warning: Unrecognized character 015 in file [247] */
	  else {
/* p2c: link.pas, line 2543:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2544:
 * Warning: Unrecognized character 015 in file [247] */
	    openin(f);
/* p2c: link.pas, line 2545:
 * Warning: Unrecognized character 015 in file [247] */
	    do {
/* p2c: link.pas, line 2546:
 * Warning: Unrecognized character 015 in file [247] */
	      getrec(o);
/* p2c: link.pas, line 2547:
 * Warning: Unrecognized character 015 in file [247] */
	      if (*o != '\0') {
/* p2c: link.pas, line 2548:
 * Warning: Unrecognized character 015 in file [247] */
		procrec2();
	      }
/* p2c: link.pas, line 2549:
 * Warning: Unrecognized character 015 in file [247] */
	    } while (!empty);
/* p2c: link.pas, line 2550:
 * Warning: Unrecognized character 015 in file [247] */
	    if (objfile != NULL)
	      fclose(objfile);
	    objfile = NULL;
	    /*normal .ro file*/
/* p2c: link.pas, line 2551:
 * Warning: Unrecognized character 015 in file [247] */
	  }
	}
/* p2c: link.pas, line 2527:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2528:
 * Warning: Unrecognized character 015 in file [247] */
	/* do not reread history file */
/* p2c: link.pas, line 2529:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2530:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2531:
 * Warning: Unrecognized character 015 in file [247] */
      }
/* p2c: link.pas, line 2554:
 * Warning: Unrecognized character 015 in file [247] */
    } while (!P_eof(cmdfile->f));
/* p2c: link.pas, line 2552:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2553:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2555:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2556:
 * Warning: Unrecognized character 015 in file [247] */
    if (modules) {
      if (mod_file != NULL)
	fclose(mod_file);
      mod_file = NULL;
    }
/* p2c: link.pas, line 2557:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2558:
 * Warning: Unrecognized character 015 in file [247] */
    closeoutput();
/* p2c: link.pas, line 2559:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 2560:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2561:
 * Warning: Unrecognized character 015 in file [247] */
  end_pass_2 = current_time();
/* p2c: link.pas, line 2562:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2563:
 * Warning: Unrecognized character 015 in file [247] */
  if (history) {
/* p2c: link.pas, line 2564:
 * Warning: Unrecognized character 015 in file [247] */
    disp_history();
  }
/* p2c: link.pas, line 2565:
 * Warning: Unrecognized character 015 in file [247] */
  end_his_gen = current_time();
/* p2c: link.pas, line 2566:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2567:
 * Warning: Unrecognized character 015 in file [247] */
  if (symout) {
/* p2c: link.pas, line 2568:
 * Warning: Unrecognized character 015 in file [247] */
    gen_sym_file();
  }
/* p2c: link.pas, line 2569:
 * Warning: Unrecognized character 015 in file [247] */
  end_sym_gen = current_time();
/* p2c: link.pas, line 2570:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2571:
 * Warning: Unrecognized character 015 in file [247] */
  if (map) {
/* p2c: link.pas, line 2572:
 * Warning: Unrecognized character 015 in file [247] */
    disp_hash();
  }
/* p2c: link.pas, line 2573:
 * Warning: Unrecognized character 015 in file [247] */
  end_map_gen = current_time();
/* p2c: link.pas, line 2574:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2575:
 * Warning: Unrecognized character 015 in file [247] */
  if (xref) {
/* p2c: link.pas, line 2576:
 * Warning: Unrecognized character 015 in file [247] */
    disp_xref();
  }
/* p2c: link.pas, line 2577:
 * Warning: Unrecognized character 015 in file [247] */
  end_xref_gen = current_time();
/* p2c: link.pas, line 2578:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2579:
 * Warning: Unrecognized character 015 in file [247] */
  if (bell) {
    for (i = 1; i <= 10; i++)
      putchar('\007');
/* p2c: link.pas, line 2580:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 2581:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2582:
 * Warning: Unrecognized character 015 in file [247] */
  putchar('\n');
/* p2c: link.pas, line 2583:
 * Warning: Unrecognized character 015 in file [247] */
  end_link = current_time();
/* p2c: link.pas, line 2584:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2585:
 * Warning: Unrecognized character 015 in file [247] */
  if (chat || debug || !quiet) {
    printf("Link started           %.11s\n", start_link.time_of_day);
/* p2c: link.pas, line 2588:
 * Warning: Unrecognized character 015 in file [247] */
    show_milestone("Pass 1                 ", end_pass_1, start_link);
/* p2c: link.pas, line 2589:
 * Warning: Unrecognized character 015 in file [247] */
    if (start_read_his.mill_time != end_read_his.mill_time) {
/* p2c: link.pas, line 2590:
 * Warning: Unrecognized character 015 in file [247] */
      show_milestone("Reading history file   ", end_read_his, start_read_his);
    }
/* p2c: link.pas, line 2591:
 * Warning: Unrecognized character 015 in file [247] */
    show_milestone("Space allocation       ", end_space_alloc, end_pass_1);
/* p2c: link.pas, line 2592:
 * Warning: Unrecognized character 015 in file [247] */
    show_milestone("Pass 2                 ", end_pass_2, end_space_alloc);
/* p2c: link.pas, line 2593:
 * Warning: Unrecognized character 015 in file [247] */
    if (history) {
/* p2c: link.pas, line 2594:
 * Warning: Unrecognized character 015 in file [247] */
      show_milestone(".HIS generation        ", end_his_gen, end_pass_2);
    }
/* p2c: link.pas, line 2595:
 * Warning: Unrecognized character 015 in file [247] */
    if (symout) {
/* p2c: link.pas, line 2596:
 * Warning: Unrecognized character 015 in file [247] */
      show_milestone(".SYM generation        ", end_sym_gen, end_his_gen);
    }
/* p2c: link.pas, line 2597:
 * Warning: Unrecognized character 015 in file [247] */
    if (map) {
/* p2c: link.pas, line 2598:
 * Warning: Unrecognized character 015 in file [247] */
      show_milestone(".MAP generation        ", end_map_gen, end_sym_gen);
    }
/* p2c: link.pas, line 2599:
 * Warning: Unrecognized character 015 in file [247] */
    if (xref) {
/* p2c: link.pas, line 2600:
 * Warning: Unrecognized character 015 in file [247] */
      show_milestone(".XRF generation        ", end_xref_gen, end_map_gen);
    }
/* p2c: link.pas, line 2601:
 * Warning: Unrecognized character 015 in file [247] */
    show_milestone("Link ended             ", end_link, start_link);
/* p2c: link.pas, line 2602:
 * Warning: Unrecognized character 015 in file [247] */
    printf("\ntotal CPU time:- %7.2f\n",
	   (end_link.mill_time - start_link.mill_time) / 1000.0);
/* p2c: link.pas, line 2603:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 2586:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2587:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2604:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2605:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2606:
 * Warning: Unrecognized character 015 in file [247] */
  if (english) {
    VAXdate(datestring);
/* p2c: link.pas, line 2609:
 * Warning: Unrecognized character 015 in file [247] */
    printf("\nLink started %.11s %.11s\n", start_link.time_of_day, datestring);
/* p2c: link.pas, line 2610:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2611:
 * Warning: Unrecognized character 015 in file [247] */
    printf("Link ended   %.11s %.11s\n", end_link.time_of_day, datestring);
/* p2c: link.pas, line 2612:
 * Warning: Unrecognized character 015 in file [247] */
  }
/* p2c: link.pas, line 2607:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2608:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2613:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2614:
 * Warning: Unrecognized character 015 in file [247] */
  if (log_) {
/* p2c: link.pas, line 2615:
 * Warning: Unrecognized character 015 in file [247] */
    close_log_file();
  }
/* p2c: link.pas, line 2616:
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2617:
 * Warning: Unrecognized character 015 in file [247] */
  if (return_code != 0) {
/* p2c: link.pas, line 2618:
 * Warning: Unrecognized character 015 in file [247] */
    $EXIT(return_code);
/* p2c: link.pas, line 2619: Warning: Symbol '$EXIT' is not defined [221] */
  }
/* p2c: link.pas, line 2619:
 * Warning: Unrecognized character 015 in file [247] */
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
}  /* main */
/* p2c: link.pas, line 2620: 
 * Warning: Unrecognized character 015 in file [247] */
/* p2c: link.pas, line 2621: 
 * Warning: Unrecognized character 015 in file [247] */
/*>>>*/



/* End. */
