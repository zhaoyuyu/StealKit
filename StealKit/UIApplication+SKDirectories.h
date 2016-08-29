//
//  UIApplication+SKDirectories.h
//  StealKitDemo
//
//  Created by 赵瑜瑜 on 16/8/29.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (SKDirectories)

+ (NSString *)sk_documentDirectory;

+ (NSString *)sk_libraryDirectory;

+ (NSString *)sk_cachesDirectory;

@end
