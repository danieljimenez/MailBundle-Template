#import <objc/objc-class.h>
#import "Swizzler.h"


@implementation Swizzler

+ (void) extendClass: (Class) aClass withClass: (Class) bClass {
	uint methodCount, i;

	Method* classMethods = class_copyMethodList(bClass, &methodCount);

	for(i = 0; i < methodCount; i++) {
		SEL aSelector = method_getName((Method) classMethods[i]);
		Method aMethod = class_getInstanceMethod(bClass, aSelector);
		IMP anIMP = method_getImplementation(aMethod);

		class_addMethod(aClass, aSelector, anIMP, method_getTypeEncoding(aMethod));
	}

	free(classMethods);
}

+ (void) exchangeSelectors: (Class) c aSel:(SEL) aSel bSel: (SEL) bSel {
	Method aMethod = class_getInstanceMethod(c, aSel);
	Method bMethod = class_getInstanceMethod(c, bSel);

	method_exchangeImplementations(aMethod, bMethod);
}

@end
