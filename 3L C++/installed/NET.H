/*
 * NET.H
 */
 
#define NET_MAX_PACKET_LENGTH 1024

int net_receive(void *, int *);
int net_send(int, void *, int);
int net_broadcast(int, void *);
