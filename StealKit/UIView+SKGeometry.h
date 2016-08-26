//
//  UIView+SKGeometry.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/25.
//  Copyright © 2016年 StealKit. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface UIView (SKGeometry)

@property (nonatomic, assign, setter=sk_setX:) CGFloat sk_x;
@property (nonatomic, assign, setter=sk_setY:) CGFloat sk_y;
@property (nonatomic, assign, setter=sk_setWidth:) CGFloat sk_width;
@property (nonatomic, assign, setter=sk_setHeight:) CGFloat sk_height;
@property (nonatomic, assign, setter=sk_setOrigin:) CGPoint sk_origin;
@property (nonatomic, assign, setter=sk_setSize:) CGSize  sk_size;
@property (nonatomic, assign, setter=sk_setBottom:) CGFloat sk_bottom;
@property (nonatomic, assign, setter=sk_setRight:) CGFloat sk_right;
@property (nonatomic, assign, setter=sk_setLeft:) CGFloat sk_left;
@property (nonatomic, assign, setter=sk_setTop:) CGFloat sk_top;
@property (nonatomic, assign, setter=sk_setCenterX:) CGFloat sk_centerX;
@property (nonatomic, assign, setter=sk_setCenterY:) CGFloat sk_centerY;

@end
