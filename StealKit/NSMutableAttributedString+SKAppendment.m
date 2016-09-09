//
//  NSMutableAttributedString+SKAppendment.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/9/9.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "NSMutableAttributedString+SKAppendment.h"

@implementation NSMutableAttributedString (SKAppendment)

- (void)sk_appendString:(NSString *)aString textColor:(UIColor *)textColor
{
    [self appendAttributedString:[[NSAttributedString alloc] initWithString:aString attributes:@{NSForegroundColorAttributeName: textColor}]];
}

- (void)sk_appendImage:(UIImage *)aImage imageBounds:(CGRect)imageBounds
{
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image = aImage;
    attachment.bounds = imageBounds;
    
    [self appendAttributedString:[NSAttributedString attributedStringWithAttachment:attachment]];
}

@end
