/* automatically generated by ./repl_modules.sh heap lru
 * do not edit
 */
#include "squid.h"
#include "Store.h"

extern REMOVALPOLICYCREATE createRemovalPolicy_heap;
extern REMOVALPOLICYCREATE createRemovalPolicy_lru;
void storeReplSetup(void)
{
	storeReplAdd("heap", createRemovalPolicy_heap);
	storeReplAdd("lru", createRemovalPolicy_lru);
}
