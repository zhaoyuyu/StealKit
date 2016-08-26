//
//  NSString+SKData.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SKTransformatter)

- (NSData *)sk_data;

@end

@interface NSData (SKTransformatter)

- (NSString *)sk_string;

@end

