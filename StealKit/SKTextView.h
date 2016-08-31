//
//  SKTextView.h
//  StealKitDemo
//
//  Created by 赵瑜瑜 on 16/8/31.
//  Copyright © 2016年 StealKit. All rights reserved.
//  Includes code by glaszig. https://github.com/glaszig/SZTextView

@import UIKit;

FOUNDATION_EXPORT double SKTextViewVersionNumber;
FOUNDATION_EXPORT const unsigned char SKTextViewVersionString[];

@interface SKTextView : UITextView

@property (nonatomic ,copy) IBInspectable NSString *placeholder;
@property (nonatomic, assign) IBInspectable double fadeTime;
@property (nonatomic ,copy) NSAttributedString *attributedPlaceholder;
@property (nonatomic ,strong) UIColor *placeholderTextColor UI_APPEARANCE_SELECTOR;

@end
