/***   MANDELTY.H
 ***
 ***   Parallel Mandelbrots
 ***
 ***   These are the formats of the packets used to communicate between
 ***   the master task and the computation tasks.
 ***
 ***   Rev 000   6-Dec-87  JF    Created
 ***
 ***/
 
typedef struct command_structure {
   float  x_coord, y_coord, gap;
   int    tlx, tly, brx, bry;
} COMMAND;
   
typedef struct results_structure {
   int    tlx, tly, brx, bry;
   char   counts[1008];
} RESULTS;
