//
//  NSString+SKAdditions.h
//  StealKitDemo
//
//  Created by 赵瑜瑜 on 16/9/1.
//  Copyright © 2016年 StealKit. All rights reserved.
//

@import Foundation;

@interface NSString (SKAdditions)

- (BOOL)sk_containsString:(NSString *)aString;

- (NSString *)sk_strim;

- (NSString *)sk_contactString:(NSString *)aString;

- (NSInteger)sk_indexOfString:(NSString *)aString;

- (NSString *)sk_subStringFromIndex:(NSUInteger)from toIndex:(NSUInteger)to;

- (NSString *)sk_replaceString:(NSString *)replaced withString:(NSString *)replacement;

@end
