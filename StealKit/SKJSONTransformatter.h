//
//  SKJSON.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SKJSONTransformatter)

- (id)sk_JSONValue;

@end

@interface NSObject (SKJSONTransformatter)

- (NSString *)sk_JSONRepresentation;

@end



