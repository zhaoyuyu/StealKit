//
//  NSBundle+SKInfo.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/29.
//  Copyright © 2016年 StealKit. All rights reserved.
//

@import Foundation;

@interface NSBundle (SKTargetInfo)

+ (NSString *)sk_appName;

+ (NSString *)sk_appVersion;

+ (NSString *)sk_appBundleIdentifier;

@end
