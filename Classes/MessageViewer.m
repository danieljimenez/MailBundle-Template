#import "MessageViewer.h"
#import "Swizzler.h"


@implementation XYZ_MessageViewer

+ (void) load {
	[XYZ_Swizzler extendClass: NSClassFromString(@"MessageViewer")
					withClass: NSClassFromString(@"XYZ_MessageViewer")];
}

- (void) XYZ_showComposeWindow: (id) arg1 {
	NSLog(@"Swizzled!");
	return [self XYZ_showComposeWindow: arg1];
}

@end
