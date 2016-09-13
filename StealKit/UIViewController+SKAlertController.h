//
//  UIViewController+SKAlertController.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/9/13.
//  Copyright © 2016年 StealKit. All rights reserved.
//

@import UIKit;
#import "UIAlertController+SKBlockSupport.h"

@interface UIViewController (SKAlertController)

- (void)sk_showModelControllerWithTitle:(nullable NSString *)title
                                message:(nullable NSString *)message
                         preferredStyle:(UIAlertControllerStyle)preferredStyle
                      cancelButtonTitle:(nullable NSString *)cancelButtonTitle
                 destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
                      otherButtonTitles:(nullable NSArray *)otherButtonTitles
                               tapBlock:(nullable SKAlertControllerCompletionBlock)tapBlock;

- (void)sk_showAlertControllerWithTitle:(nullable NSString *)title
                                message:(nullable NSString *)message
                      cancelButtonTitle:(nullable NSString *)cancelButtonTitle
                 destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
                      otherButtonTitles:(nullable NSArray *)otherButtonTitles
                               tapBlock:(nullable SKAlertControllerCompletionBlock)tapBlock;

- (void)sk_showActionSheetrWithTitle:(nullable NSString *)title
                             message:(nullable NSString *)message
                   cancelButtonTitle:(nullable NSString *)cancelButtonTitle
              destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
                   otherButtonTitles:(nullable NSArray *)otherButtonTitles
                            tapBlock:(nullable SKAlertControllerCompletionBlock)tapBlock;

- (void)sk_showErrorMessage:(nullable NSString *)errorMessage;

@end
