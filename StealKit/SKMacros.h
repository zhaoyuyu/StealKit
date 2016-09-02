//
//  SKMacros.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#ifndef SKMacros_h
#define SKMacros_h

#define SCREEN_WIDTH  [[UIScreen mainScreen] bounds].size.width

#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height

#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)

#define DEGREES_TO_RADIANS(degrees) degrees * M_PI / 180

#define UIColorFromRGB(rgbValue) \
        [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
                        green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
                         blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define UIColorFromRGBA(rgbValue,A) \
        [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
                        green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
                         blue:((float)(rgbValue & 0xFF))/255.0 alpha:A]

#ifndef SYNTH_DYNAMIC_PROPERTY_OBJ
#define SYNTH_DYNAMIC_PROPERTY_OBJ(getter, setter, association, type) \
- (void)setter : (type)object { \
    objc_setAssociatedObject(self, _cmd, object, OBJC_ASSOCIATION_ ## association); \
} \
- (type)getter { \
    return objc_getAssociatedObject(self, @selector(setter:)); \
}
#endif

#ifndef SYNTH_DYNAMIC_PROPERTY_CTYPE
#define SYNTH_DYNAMIC_PROPERTY_CTYPE(getter, setter, type) \
- (void)setter : (type)object { \
    NSValue *value = [NSValue value:&object withObjCType:@encode(type)]; \
    objc_setAssociatedObject(self, _cmd, value, OBJC_ASSOCIATION_RETAIN); \
} \
- (type)getter { \
    type cValue = { 0 }; \
    NSValue *value = objc_getAssociatedObject(self, @selector(setter:)); \
    [value getValue:&cValue]; \
    return cValue; \
}

#ifndef SK_MAX
#define SK_MAX(a, b)  (((a) > (b)) ? (a) : (b))
#endif

#ifndef SK_MIN
#define SK_MIN(a, b)  (((a) < (b)) ? (a) : (b))
#endif

#ifndef weakify
    #if DEBUG
        #if __has_feature(objc_arc)
            #define weakify(object) autoreleasepool{} __weak __typeof__(object) weak##_##object = object;
        #else
            #define weakify(object) autoreleasepool{} __block __typeof__(object) block##_##object = object;
        #endif
    #else
        #if __has_feature(objc_arc)
            #define weakify(object) try{} @finally{} {} __weak __typeof__(object) weak##_##object = object;
        #else
            #define weakify(object) try{} @finally{} {} __block __typeof__(object) block##_##object = object;
        #endif
    #endif
#endif


#ifndef strongify
    #if DEBUG
        #if __has_feature(objc_arc)
            #define strongify(object) autoreleasepool{} __typeof__(object) object = weak##_##object; if (!object) return;
        #else
            #define strongify(object) autoreleasepool{} __typeof__(object) object = block##_##object; if (!object) return;
        #endif
    #else
        #if __has_feature(objc_arc)
            #define strongify(object) try{} @finally{} __typeof__(object) object = weak##_##object; if (!object) return;
        #else
            #define strongify(object) try{} @finally{} __typeof__(object) object = block##_##object; if (!object) return;
        #endif
    #endif
#endif

#define SingletonImplemantion \

+ (instancetype)sharedInstance { \
\
    static dispatch_once_t onceToken; \
    static id sharedInstance = nil; \
    dispatch_once(&onceToken, ^{ \
        sharedInstance = [self.class new]; \
    }); \
\
    return sharedInstance; \
}

#define SingletonDeclare + (instancetype)sharedInstance;

#endif /* SKMacros_h */
