//
//  NSString+SKData.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

@import Foundation;

@interface NSString (SKTransformatter)

- (NSData *)sk_dataValue;

@end

@interface NSData (SKTransformatter)

- (NSString *)sk_stringValue;

@end

