#import <objc/objc-class.h>
#import "Swizzler.h"

#define SWIZZLE_PREFIX @"XYZ_"


@implementation XYZ_Swizzler


+ (void) extendClass: (Class) aClass withClass: (Class) bClass {
	uint methodCount, i;

	Method* classMethods = class_copyMethodList(bClass, &methodCount);

	for(i = 0; i < methodCount; i++) {
		SEL aSelector = method_getName((Method) classMethods[i]);
		Method aMethod = class_getInstanceMethod(bClass, aSelector);
		IMP anIMP = method_getImplementation(aMethod);

		class_addMethod(aClass, aSelector, anIMP, method_getTypeEncoding(aMethod));

		if ([NSStringFromSelector(aSelector) hasPrefix: SWIZZLE_PREFIX]) {
			[self swizzleSelector:aSelector inClass:aClass];
		}
	}

	free(classMethods);
}


+ (void) swizzleSelector: (SEL) aSel inClass: (Class) aClass {
	SEL bSel = NSSelectorFromString([NSStringFromSelector(aSel) substringFromIndex: [SWIZZLE_PREFIX length]]);
	Method aMethod = class_getInstanceMethod(aClass, aSel);
	Method bMethod = class_getInstanceMethod(aClass, bSel);

	method_exchangeImplementations(aMethod, bMethod);
}


@end
