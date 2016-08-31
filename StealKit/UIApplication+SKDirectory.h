//
//  UIApplication+SKDirectories.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/29.
//  Copyright © 2016年 StealKit. All rights reserved.
//

@import UIKit;

@interface UIApplication (SKDirectory)

+ (NSString *)sk_documentDirectory;

+ (NSString *)sk_libraryDirectory;

+ (NSString *)sk_cachesDirectory;

@end
