//
//  UIAlertController+SKBlockSupport.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/9/13.
//  Copyright © 2016年 StealKit. All rights reserved.
//

@import UIKit;

typedef void (^SKAlertControllerCompletionBlock) (UIAlertController * __nonnull controller, UIAlertAction * __nonnull action, NSInteger buttonIndex);

@interface UIAlertController (SKBlockSupport)

+ (nonnull instancetype)sk_showInViewController:(nonnull UIViewController *)viewController
                                      withTitle:(nullable NSString *)title
                                        message:(nullable NSString *)message
                                 preferredStyle:(UIAlertControllerStyle)preferredStyle
                              cancelButtonTitle:(nullable NSString *)cancelButtonTitle
                         destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
                              otherButtonTitles:(nullable NSArray *)otherButtonTitles
                                       tapBlock:(nullable SKAlertControllerCompletionBlock)tapBlock;

+ (nonnull instancetype)sk_showAlertInViewController:(nonnull UIViewController *)viewController
                                           withTitle:(nullable NSString *)title
                                             message:(nullable NSString *)message
                                   cancelButtonTitle:(nullable NSString *)cancelButtonTitle
                              destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
                                   otherButtonTitles:(nullable NSArray *)otherButtonTitles
                                            tapBlock:(nullable SKAlertControllerCompletionBlock)tapBlock;

+ (nonnull instancetype)sk_showActionSheetInViewController:(nonnull UIViewController *)viewController
                                                 withTitle:(nullable NSString *)title
                                                   message:(nullable NSString *)message
                                         cancelButtonTitle:(nullable NSString *)cancelButtonTitle
                                    destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
                                         otherButtonTitles:(nullable NSArray *)otherButtonTitles
                                                  tapBlock:(nullable SKAlertControllerCompletionBlock)tapBlock;

@property (readonly, nonatomic) NSInteger sk_cancelButtonIndex;
@property (readonly, nonatomic) NSInteger sk_firstOtherButtonIndex;
@property (readonly, nonatomic) NSInteger sk_destructiveButtonIndex;

@end
