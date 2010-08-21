#import "MVMailBundle.h"
#import "Swizzler.h"


@implementation XYZ_MVMailBundle

+ (void) initialize {
    [XYZ_Swizzler setSuperclassOf: @"XYZ_MVMailBundle"
                          toClass: @"MVMailBundle"];
    [self registerBundle];
}

- (id) init {
	NSLog(@"Loading MailBundle");
	return self;
}

@end
