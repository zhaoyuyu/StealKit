//
//  NSString+SKWidth.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/9/12.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "NSString+SKWidth.h"

@implementation NSString (SKWidth)

- (CGFloat)sk_widthWithFont:(UIFont *)font
{
    NSDictionary *attributes = @{NSFontAttributeName : font};
    CGSize size = [self boundingRectWithSize:CGSizeMake(MAXFLOAT, font.lineHeight)
                                     options:NSStringDrawingTruncatesLastVisibleLine |
                   NSStringDrawingUsesLineFragmentOrigin |
                   NSStringDrawingUsesFontLeading
                                  attributes:attributes
                                     context:nil].size;
    return size.width;
}

@end
