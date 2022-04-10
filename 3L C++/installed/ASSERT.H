/*
 * ASSERT.H
 */

void _assert(const char *, int); 

#ifdef NDEBUG
#   define assert(ignore)  ((void)0)
#else
#   define assert(bool)  \
((bool) ? (void)0: _assert(__FILE__, __LINE__))
#endif
