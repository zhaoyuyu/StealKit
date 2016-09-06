//
//  UIDevice+SKModelName.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/9/2.
//  Copyright © 2016年 StealKit. All rights reserved.
//

@import UIKit;

@interface UIDevice (SKModelName)

+ (NSString *)sk_modelName;

+ (BOOL)sk_isiPad;

+ (BOOL)sk_isiPhone;

@end
