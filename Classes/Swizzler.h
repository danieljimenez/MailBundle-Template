@interface Swizzler : NSObject

+ (void) extendClass: (Class) aClass withClass: (Class) bClass;
+ (void) exchangeSelectors: (Class) c aSel:(SEL) aSel bSel: (SEL) bSel;

@end
