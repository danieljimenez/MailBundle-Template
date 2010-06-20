#import "MVMailBundle-Base.h"

#define MVMailBundle NSClassFromString(@"MVMailBundle")


@implementation MVMailBundleBase

+ (void) initialize {
	class_setSuperclass([self class], MVMailBundle);
	[super initialize];
}

@end
