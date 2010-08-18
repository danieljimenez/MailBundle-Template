@interface XYZ_Swizzler : NSObject

+ (void) extendClass: (Class) aClass withClass: (Class) bClass;
+ (void) swizzleSelector: (SEL) aSel inClass: (Class) aClass;

@end
