
#ifdef DEBUG
#define ANSI_COLOR_RED "\x1b[35m"	//Magenta
//#define ANSI_COLOR_RED "\x1b[31m"	//Red
#define ANSI_COLOR_RESET "\x1b[0m"
#define DEBUG_PREFIX ANSI_COLOR_RED " << DEGMSG >> "
#define DEGMSG(msg,...) fprintf(stderr, DEBUG_PREFIX "[%s %s %d] : " msg ANSI_COLOR_RESET, \
		                                __FILE__, __func__, __LINE__, ##__VA_ARGS__)
#endif

//Using
DEGMSG("....");
