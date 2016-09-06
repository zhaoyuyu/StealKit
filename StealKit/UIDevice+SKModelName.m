//
//  UIDevice+SKModelName.m
//  StealKitDemo
//
//  Created by 赵瑜瑜 on 16/9/2.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "UIDevice+SKModelName.h"
#include <sys/sysctl.h>

@implementation UIDevice (SKModelName)

+ (NSString *)sk_hw_machine
{
    size_t size;
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char *machine = malloc(size);
    sysctlbyname("hw.machine", machine, &size, NULL, 0);
    NSString *platform = [NSString stringWithUTF8String:machine];
    free(machine);
    return platform;
}

+ (NSString *)sk_modelName
{
    static NSString *modelName;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *platform = [self sk_hw_machine];
        if ([platform isEqualToString:@"iPhone1,1"])    modelName = @"iPhone 1G";
        if ([platform isEqualToString:@"iPhone1,2"])    modelName = @"iPhone 3G";
        if ([platform isEqualToString:@"iPhone2,1"])    modelName = @"iPhone 3GS";
        if ([platform isEqualToString:@"iPhone3,1"])    modelName = @"iPhone 4 (GSM)";
        if ([platform isEqualToString:@"iPhone3,3"])    modelName = @"iPhone 4 (CDMA)";
        if ([platform isEqualToString:@"iPhone4,1"])    modelName = @"iPhone 4S";
        if ([platform isEqualToString:@"iPhone5,1"])    modelName = @"iPhone 5 (GSM)";
        if ([platform isEqualToString:@"iPhone5,2"])    modelName = @"iPhone 5 (CDMA)";
        if ([platform isEqualToString:@"iPhone5,3"])    modelName = @"iPhone 5c";
        if ([platform isEqualToString:@"iPhone5,4"])    modelName = @"iPhone 5c";
        if ([platform isEqualToString:@"iPhone6,1"])    modelName = @"iPhone 5s";
        if ([platform isEqualToString:@"iPhone6,2"])    modelName = @"iPhone 5s";
        if ([platform isEqualToString:@"iPhone7,1"])    modelName = @"iPhone 6 Plus";
        if ([platform isEqualToString:@"iPhone7,2"])    modelName = @"iPhone 6";
        if ([platform isEqualToString:@"iPhone8,1"])    modelName = @"iPhone 6s";
        if ([platform isEqualToString:@"iPhone8,2"])    modelName = @"iPhone 6s Plus";
        if ([platform isEqualToString:@"iPhone8,4"])    modelName = @"iPhone SE";
        
        if ([platform isEqualToString:@"iPod1,1"])      modelName = @"iPod Touch 1G";
        if ([platform isEqualToString:@"iPod2,1"])      modelName = @"iPod Touch 2G";
        if ([platform isEqualToString:@"iPod3,1"])      modelName = @"iPod Touch 3G";
        if ([platform isEqualToString:@"iPod4,1"])      modelName = @"iPod Touch 4G";
        if ([platform isEqualToString:@"iPod5,1"])      modelName = @"iPod Touch 5G";
        if ([platform isEqualToString:@"iPod7,1"])      modelName = @"iPod Touch 6G";
        
        if ([platform isEqualToString:@"iPad1,1"])      modelName = @"iPad";
        if ([platform isEqualToString:@"iPad2,1"])      modelName = @"iPad 2 (WiFi)";
        if ([platform isEqualToString:@"iPad2,2"])      modelName = @"iPad 2 (GSM)";
        if ([platform isEqualToString:@"iPad2,3"])      modelName = @"iPad 2 (CDMA)";
        if ([platform isEqualToString:@"iPad2,4"])      modelName = @"iPad 2 (WiFi)";
        if ([platform isEqualToString:@"iPad2,5"])      modelName = @"iPad Mini (WiFi)";
        if ([platform isEqualToString:@"iPad2,6"])      modelName = @"iPad Mini (GSM)";
        if ([platform isEqualToString:@"iPad2,7"])      modelName = @"iPad Mini (CDMA)";
        if ([platform isEqualToString:@"iPad3,1"])      modelName = @"iPad 3 (WiFi)";
        if ([platform isEqualToString:@"iPad3,2"])      modelName = @"iPad 3 (CDMA)";
        if ([platform isEqualToString:@"iPad3,3"])      modelName = @"iPad 3 (GSM)";
        if ([platform isEqualToString:@"iPad3,4"])      modelName = @"iPad 4 (WiFi)";
        if ([platform isEqualToString:@"iPad3,5"])      modelName = @"iPad 4 (GSM)";
        if ([platform isEqualToString:@"iPad3,6"])      modelName = @"iPad 4 (CDMA)";
        if ([platform isEqualToString:@"iPad4,1"])      modelName = @"iPad Air (WiFi)";
        if ([platform isEqualToString:@"iPad4,2"])      modelName = @"iPad Air (GSM)";
        if ([platform isEqualToString:@"iPad4,3"])      modelName = @"iPad Air (CDMA)";
        if ([platform isEqualToString:@"iPad4,4"])      modelName = @"iPad Mini Retina (WiFi)";
        if ([platform isEqualToString:@"iPad4,5"])      modelName = @"iPad Mini Retina (Cellular)";
        if ([platform isEqualToString:@"iPad4,7"])      modelName = @"iPad Mini 3 (WiFi)";
        if ([platform isEqualToString:@"iPad4,8"])      modelName = @"iPad Mini 3 (Cellular)";
        if ([platform isEqualToString:@"iPad4,9"])      modelName = @"iPad Mini 3 (Cellular)";
        if ([platform isEqualToString:@"iPad5,1"])      modelName = @"iPad Mini 4 (WiFi)";
        if ([platform isEqualToString:@"iPad5,2"])      modelName = @"iPad Mini 4 (Cellular)";
        if ([platform isEqualToString:@"iPad5,3"])      modelName = @"iPad Air 2 (WiFi)";
        if ([platform isEqualToString:@"iPad5,4"])      modelName = @"iPad Air 2 (Cellular)";
        if ([platform isEqualToString:@"iPad6,3"])      modelName = @"iPad Pro 9.7-inch (WiFi)";
        if ([platform isEqualToString:@"iPad6,4"])      modelName = @"iPad Pro 9.7-inch (Cellular)";
        if ([platform isEqualToString:@"iPad6,7"])      modelName = @"iPad Pro 12.9-inch (WiFi)";
        if ([platform isEqualToString:@"iPad6,8"])      modelName = @"iPad Pro 12.9-inch (Cellular)";
        if ([platform isEqualToString:@"i386"])         modelName = @"Simulator x86";
        if ([platform isEqualToString:@"x86_64"])       modelName = @"Simulator x64";
    });
    
    return modelName;
}

+ (BOOL)sk_isiPad
{
    static dispatch_once_t one;
    static BOOL isiPad;
    dispatch_once(&one, ^{
        isiPad = UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad;
    });
    return isiPad;
}

+ (BOOL)sk_isiPhone
{
    static dispatch_once_t one;
    static BOOL isiPhone;
    dispatch_once(&one, ^{
        isiPhone = UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone;
    });
    return isiPhone;
}

@end
