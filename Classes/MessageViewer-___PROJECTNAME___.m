#import "MessageViewer-___PROJECTNAME___.h"


@implementation MessageViewer___PROJECTNAME___

- (BOOL) transferSelectedMessagesToMailbox_: (MailboxUid*) arg1 deleteOriginals: (BOOL) arg2 {
	NSLog(@"Swizzled!");
	return [self transferSelectedMessagesToMailbox_: arg1 deleteOriginals: arg2];
}

@end
