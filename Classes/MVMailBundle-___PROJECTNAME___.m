#import "MVMailBundle.h"

@implementation XYZ_MVMailBundle

+ (void) initialize {
    class_setSuperclass([self class], NSClassFromString(@"MVMailBundle"));
	[super initialize];
	[self registerBundle];
}

- (id) init {
	NSLog(@"Loading ___PROJECTNAME___");
	return self;
}

@end
