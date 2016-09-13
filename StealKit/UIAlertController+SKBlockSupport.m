//
//  UIAlertController+SKBlockSupport.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/9/13.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "UIAlertController+SKBlockSupport.h"

static NSInteger const SKAlertControllerBlocksCancelButtonIndex = 0;
static NSInteger const SKAlertControllerBlocksDestructiveButtonIndex = 1;
static NSInteger const SKAlertControllerBlocksFirstOtherButtonIndex = 2;

@implementation UIAlertController (SKBlockSupport)

+ (instancetype)sk_showInViewController:(UIViewController *)viewController
                           withTitle:(NSString *)title
                             message:(NSString *)message
                      preferredStyle:(UIAlertControllerStyle)preferredStyle
                   cancelButtonTitle:(NSString *)cancelButtonTitle
              destructiveButtonTitle:(NSString *)destructiveButtonTitle
                   otherButtonTitles:(NSArray *)otherButtonTitles
                            tapBlock:(SKAlertControllerCompletionBlock)tapBlock
{
    UIAlertController *strongController = [self alertControllerWithTitle:title
                                                                 message:message
                                                          preferredStyle:preferredStyle];
    
    __weak UIAlertController *controller = strongController;
    
    if (cancelButtonTitle) {
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelButtonTitle
                                                               style:UIAlertActionStyleCancel
                                                             handler:^(UIAlertAction *action){
                                                                 if (tapBlock) {
                                                                     tapBlock(controller, action, SKAlertControllerBlocksCancelButtonIndex);
                                                                 }
                                                             }];
        [controller addAction:cancelAction];
    }
    
    if (destructiveButtonTitle) {
        UIAlertAction *destructiveAction = [UIAlertAction actionWithTitle:destructiveButtonTitle
                                                                    style:UIAlertActionStyleDestructive
                                                                  handler:^(UIAlertAction *action){
                                                                      if (tapBlock) {
                                                                          tapBlock(controller, action, SKAlertControllerBlocksDestructiveButtonIndex);
                                                                      }
                                                                  }];
        [controller addAction:destructiveAction];
    }
    
    for (NSUInteger i = 0; i < otherButtonTitles.count; i++) {
        NSString *otherButtonTitle = otherButtonTitles[i];
        
        UIAlertAction *otherAction = [UIAlertAction actionWithTitle:otherButtonTitle
                                                              style:UIAlertActionStyleDefault
                                                            handler:^(UIAlertAction *action){
                                                                if (tapBlock) {
                                                                    tapBlock(controller, action, SKAlertControllerBlocksFirstOtherButtonIndex + i);
                                                                }
                                                            }];
        [controller addAction:otherAction];
    }
    
    [viewController presentViewController:controller animated:YES completion:nil];
    
    return controller;
}

+ (instancetype)sk_showAlertInViewController:(UIViewController *)viewController
                                withTitle:(NSString *)title
                                  message:(NSString *)message
                        cancelButtonTitle:(NSString *)cancelButtonTitle
                   destructiveButtonTitle:(NSString *)destructiveButtonTitle
                        otherButtonTitles:(NSArray *)otherButtonTitles
                                 tapBlock:(SKAlertControllerCompletionBlock)tapBlock
{
    return [self sk_showInViewController:viewController
                            withTitle:title
                              message:message
                       preferredStyle:UIAlertControllerStyleAlert
                    cancelButtonTitle:cancelButtonTitle
               destructiveButtonTitle:destructiveButtonTitle
                    otherButtonTitles:otherButtonTitles
                             tapBlock:tapBlock];
}

+ (instancetype)sk_showActionSheetInViewController:(UIViewController *)viewController
                                      withTitle:(NSString *)title
                                        message:(NSString *)message
                              cancelButtonTitle:(NSString *)cancelButtonTitle
                         destructiveButtonTitle:(NSString *)destructiveButtonTitle
                              otherButtonTitles:(NSArray *)otherButtonTitles
                                       tapBlock:(SKAlertControllerCompletionBlock)tapBlock
{
    return [self sk_showInViewController:viewController
                            withTitle:title
                              message:message
                       preferredStyle:UIAlertControllerStyleActionSheet
                    cancelButtonTitle:cancelButtonTitle
               destructiveButtonTitle:destructiveButtonTitle
                    otherButtonTitles:otherButtonTitles
                             tapBlock:tapBlock];
}

#pragma mark -

- (NSInteger)sk_cancelButtonIndex
{
    return SKAlertControllerBlocksCancelButtonIndex;
}

- (NSInteger)sk_firstOtherButtonIndex
{
    return SKAlertControllerBlocksFirstOtherButtonIndex;
}

- (NSInteger)sk_destructiveButtonIndex
{
    return SKAlertControllerBlocksDestructiveButtonIndex;
}

@end
