//
//  UIViewController+SKAlertController.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/9/13.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "UIViewController+SKAlertController.h"

@implementation UIViewController (SKAlertController)

- (void)sk_showModelControllerWithTitle:(nullable NSString *)title
                                message:(nullable NSString *)message
                         preferredStyle:(UIAlertControllerStyle)preferredStyle
                      cancelButtonTitle:(nullable NSString *)cancelButtonTitle
                 destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
                      otherButtonTitles:(nullable NSArray *)otherButtonTitles
                               tapBlock:(nullable SKAlertControllerCompletionBlock)tapBlock
{
    [UIAlertController sk_showInViewController:self
                                     withTitle:title
                                       message:message
                                preferredStyle:preferredStyle
                             cancelButtonTitle:cancelButtonTitle
                        destructiveButtonTitle:destructiveButtonTitle
                             otherButtonTitles:otherButtonTitles
                                      tapBlock:tapBlock];
}

- (void)sk_showAlertControllerWithTitle:(nullable NSString *)title
                                message:(nullable NSString *)message
                      cancelButtonTitle:(nullable NSString *)cancelButtonTitle
                 destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
                      otherButtonTitles:(nullable NSArray *)otherButtonTitles
                               tapBlock:(nullable SKAlertControllerCompletionBlock)tapBlock
{
    [UIAlertController sk_showInViewController:self
                                     withTitle:title
                                       message:message
                                preferredStyle:UIAlertControllerStyleAlert
                             cancelButtonTitle:cancelButtonTitle
                        destructiveButtonTitle:destructiveButtonTitle
                             otherButtonTitles:otherButtonTitles
                                      tapBlock:tapBlock];
}

- (void)sk_showActionSheetrWithTitle:(nullable NSString *)title
                             message:(nullable NSString *)message
                   cancelButtonTitle:(nullable NSString *)cancelButtonTitle
              destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
                   otherButtonTitles:(nullable NSArray *)otherButtonTitles
                            tapBlock:(nullable SKAlertControllerCompletionBlock)tapBlock
{
    [UIAlertController sk_showInViewController:self
                                     withTitle:title
                                       message:message
                                preferredStyle:UIAlertControllerStyleActionSheet
                             cancelButtonTitle:cancelButtonTitle
                        destructiveButtonTitle:destructiveButtonTitle
                             otherButtonTitles:otherButtonTitles
                                      tapBlock:tapBlock];
}

- (void)sk_showErrorMessage:(nullable NSString *)errorMessage
{
    [self sk_showAlertControllerWithTitle:@"Error"
                                  message:errorMessage
                        cancelButtonTitle:@"确认"
                   destructiveButtonTitle:nil
                        otherButtonTitles:nil
                                 tapBlock:nil];
}

@end
