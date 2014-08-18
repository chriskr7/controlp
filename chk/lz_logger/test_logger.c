#include <stdio.h>
#include "lz_util.h"

int main(void)
{
	lz_log(".", "testlog", __FILE__, __LINE__, "wassup there %d", 727);
	return 0;
}
