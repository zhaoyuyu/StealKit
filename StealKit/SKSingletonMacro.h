//
//  SKSingletonMacro.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/25.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#define OBJC_DEF_SINGLETON(className) \
+ (className*) instance;\
+ (instancetype) alloc __attribute__((unavailable("alloc not available, call instance instead")));\
+ (instancetype) new __attribute__((unavailable("new not available, call instance instead")));

#if __has_feature(objc_arc)

#define OBJC_IMPL_SINGLETON(className) \
\
+ (className *)instance { \
    static className *shared##className = nil; \
    static dispatch_once_t onceToken; \
    dispatch_once(&onceToken, ^{ \
        shared##className = [[super alloc] init]; \
    }); \
    return shared##className; \
}

#else

#define OBJC_IMPL_SINGLETON(className) OBJC_IMPL_SINGLETON_ZONE(className, nil)

#define OBJC_IMPL_SINGLETON_ZONE(className, zoneObj) \
static className *instance   = nil;\
+ (className*) instance\
{\
    @synchronized(self)\
    {\
        if (instance == nil)\
        {\
            [[self allocWithZone:zoneObj] init];\
        }\
    }\
    return instance;\
}\
+ (id)allocWithZone:(NSZone*) zone\
{\
    @synchronized(self)\
    {\
        if (zone != zoneObj && zoneObj == nil)\
        {\
            return [super allocWithZone:zoneObj];\
        }\
        else if (instance == nil)\
        {\
            instance = [super allocWithZone:zone];\
            return instance;\
        }\
    }\
    return nil;\
}\
- (id) copyWithZone:(NSZone *)zone\
{\
    return self;\
}\
- (id) retain\
{\
    return self;\
}\
- (unsigned) retainCount\
{\
    return UINT_MAX;\
}\
- (oneway void) release\
{\
    \
}\
- (id) autorelease\
{\
    return self;\
}

#endif
