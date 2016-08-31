//
//  SKTextField.m
//  StealKitDemo
//
//  Created by 赵瑜瑜 on 16/8/31.
//  Copyright © 2016年 StealKit. All rights reserved.
//  

#import "SKTextField.h"

@implementation SKTextField

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.maxNumberOfCharacters = 0;
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldDidChange:) name:UITextFieldTextDidChangeNotification object:self];
    }
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.maxNumberOfCharacters = [aDecoder decodeIntForKey:@"MaxNumberOfCharacters"];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldDidChange:) name:UITextFieldTextDidChangeNotification object:self];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [super encodeWithCoder:aCoder];
    
    [aCoder encodeInt64:(long)self.maxNumberOfCharacters forKey:@"MaxNumberOfCharacters"];
}

- (void)textFieldDidChange:(NSNotification *)notification
{
    if (self.maxNumberOfCharacters && self.text.length >= self.maxNumberOfCharacters) {
        self.text = [self.text substringToIndex:self.maxNumberOfCharacters];
    }
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
