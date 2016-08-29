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
