//
//  UIView+SKStoryBoard.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/25.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (SKStoryBoard)

@property (nonatomic, assign) IBInspectable BOOL sk_shouldRasterize;
@property (nonatomic, assign) IBInspectable BOOL sk_masksToBounds;
@property (nonatomic, assign) IBInspectable CGFloat sk_cornerRadius;
@property (nonatomic, assign) IBInspectable CGFloat sk_borderWidth;
@property (nonatomic, strong) IBInspectable UIColor *sk_borderColor;
@property (nonatomic, strong) IBInspectable UIColor *sk_shadowColor;
@property (nonatomic, assign) IBInspectable CGFloat sk_shadowOpacity;
@property (nonatomic, assign) IBInspectable CGFloat sk_shadowRadius;
@property (nonatomic, assign) IBInspectable CGSize sk_shadowOffset;

@end
