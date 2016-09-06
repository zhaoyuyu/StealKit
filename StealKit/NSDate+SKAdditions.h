//
//  NSDate+SKAdditions.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/31.
//  Copyright © 2016年 StealKit. All rights reserved.
//

@import Foundation;

@interface NSDate (SKAdditions)

+ (instancetype)sk_dateWithTimeStamp:(NSTimeInterval)secs;

- (instancetype)sk_dateByAddingYears:(NSInteger)years;

- (instancetype)sk_dateByAddingMonths:(NSInteger)months;

- (instancetype)sk_dateByAddingWeeks:(NSInteger)weeks;

- (instancetype)sk_dateByAddingDays:(NSInteger)days;

- (instancetype)sk_dateByAddingHours:(NSInteger)hours;

- (instancetype)sk_dateByAddingMinutes:(NSInteger)minutes;

- (instancetype)sk_dateByAddingSeconds:(NSInteger)seconds;

- (NSTimeInterval)sk_timeStamp;

- (NSString *)sk_stringByformat:(NSString *)format;

@property (nonatomic, readonly) NSInteger sk_year;

@property (nonatomic, readonly) NSInteger sk_month;

@property (nonatomic, readonly) NSInteger sk_day;

@property (nonatomic, readonly) NSInteger sk_hour;

@property (nonatomic, readonly) NSInteger sk_minute;

@property (nonatomic, readonly) NSInteger sk_second;

@property (nonatomic, readonly) NSInteger sk_nanosecond;

@property (nonatomic, readonly) NSInteger sk_weekday;

@property (nonatomic, readonly) NSInteger sk_weekdayOrdinal;

@property (nonatomic, readonly) NSInteger sk_weekOfMonth;

@property (nonatomic, readonly) NSInteger sk_weekOfYear;

@property (nonatomic, readonly) NSInteger sk_yearForWeekOfYear;

@property (nonatomic, readonly) NSInteger sk_quarter;

@property (nonatomic, readonly) BOOL sk_isLeapMonth;

@property (nonatomic, readonly) BOOL sk_isLeapYear;

@end
