/*
 * CHAN.H
 */

#ifndef CHAN_H
#define CHAN_H 1
/*
** A channel contains a pointer to a process
*/
typedef char *CHAN;

#ifdef _IMST2
/*
** This is the value of a channel word when
** it is not actively communicating
*/
#define NotProcess_P ((char *)0x8000)

#define Link0Output  ((CHAN *)0x8000)
#define Link1Output  ((CHAN *)0x8002)
#define Link2Output  ((CHAN *)0x8004)
#define Link3Output  ((CHAN *)0x8006)
#define Link0Input   ((CHAN *)0x8008)
#define Link1Input   ((CHAN *)0x800A)
#define Link2Input   ((CHAN *)0x800C)
#define Link3Input   ((CHAN *)0x800E)
#define EventReq     ((CHAN *)0x8010)
#else
/*
** This is the value of a channel word when
** it is not actively communicating
*/
#define NotProcess_P ((char *)0x80000000)

#define Link0Output  ((CHAN *)0x80000000)
#define Link1Output  ((CHAN *)0x80000004)
#define Link2Output  ((CHAN *)0x80000008)
#define Link3Output  ((CHAN *)0x8000000C)
#define Link0Input   ((CHAN *)0x80000010)
#define Link1Input   ((CHAN *)0x80000014)
#define Link2Input   ((CHAN *)0x80000018)
#define Link3Input   ((CHAN *)0x8000001C)
#define EventReq     ((CHAN *)0x80000020)
#endif
#endif

void chan_in_byte(char *, CHAN *);
#pragma __3L inline chan_in_byte 30
int  chan_in_byte_t(char *, CHAN *, int);
void chan_init(CHAN *);
#pragma __3L inline chan_init 23
void chan_in_message(int, void *, CHAN *);
#pragma __3L inline chan_in_message 24
int  chan_in_message_t(int, void *, CHAN *, int);
void chan_in_word(int *, CHAN *);
#pragma __3L inline chan_in_word 25
int  chan_in_word_t(int *, CHAN *, int);
void chan_out_byte(char, CHAN *);
#pragma __3L inline chan_out_byte 26
int  chan_out_byte_t(char, CHAN *, int);
void chan_out_message(int, void *, CHAN *);
#pragma __3L inline chan_out_message 27
int  chan_out_message_t(int, void *, CHAN *, int);
void chan_out_word(int, CHAN *);
#pragma __3L inline chan_out_word 28
int  chan_out_word_t(int, CHAN *, int);
char *chan_reset(CHAN *);
#pragma __3L inline chan_reset 29
