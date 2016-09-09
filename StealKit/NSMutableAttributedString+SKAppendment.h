//
//  NSMutableAttributedString+SKAppendment.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/9/9.
//  Copyright © 2016年 StealKit. All rights reserved.
//

@import Foundation;
@import UIKit;

@interface NSMutableAttributedString (SKAppendment)

- (void)sk_appendString:(NSString *)aString textColor:(UIColor *)textColor;

- (void)sk_appendImage:(UIImage *)aImage imageBounds:(CGRect)imageBounds;

@end
