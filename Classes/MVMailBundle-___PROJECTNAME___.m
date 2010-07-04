#import "MVMailBundle-___PROJECTNAME___.h"
#import "MessageViewer-___PROJECTNAME___.h"
#import "Swizzler.h"

#define MVMailBundle NSClassFromString(@"MVMailBundle")
#define MessageViewer NSClassFromString(@"MessageViewer")


@implementation MVMailBundle___PROJECTNAME___

+ (void) initialize {
    class_setSuperclass([self class], MVMailBundle);
	[super initialize];
	[self registerBundle];
}

- (id) init {
	NSLog(@"Loading ___PROJECTNAME___");
	[self swizzle];
	return self;
}

- (void) swizzle {
	[Swizzler extendClass:MessageViewer
				withClass:[MessageViewer___PROJECTNAME___ class]];
	[Swizzler exchangeSelectors:MessageViewer
						   aSel:@selector(transferSelectedMessagesToMailbox:deleteOriginals:)
						   bSel:@selector(transferSelectedMessagesToMailbox_:deleteOriginals:)];
}

@end
