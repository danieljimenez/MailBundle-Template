#import "MVMailBundle-___PROJECTNAME___.h"

#define MVMailBundle NSClassFromString(@"MVMailBundle")


@implementation MVMailBundle___PROJECTNAME___

+ (void) initialize {
	class_setSuperclass([self class], MVMailBundle);
	[super initialize];
	[self registerBundle];
}

- (id) init {
	NSLog(@"Loading ___PROJECTNAME___");
	return self;
}

@end
