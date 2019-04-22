//
//  NSString+FB.m
//  FutureBazaar
//
//  Created by hongyong fu on 2019/1/23.
//  Copyright © 2019年 Sibu. All rights reserved.
//

#import "NSString+FB.h"
@implementation NSString (FB)

- (NSString *)bandCardSafetyNumber{

    NSString *regPattern = @"/^(d{4})d+(d{4})$/";
    NSString *replacement = @" **** **** ";
    
    NSRegularExpression *regExp = [[NSRegularExpression alloc] initWithPattern:regPattern options:0 error:nil];
    NSString *result = [regExp stringByReplacingMatchesInString:self options:NSMatchingReportProgress range:NSMakeRange(0, self.length) withTemplate:replacement];

    return result;
}

+ (void)hy_text{
    NSLog(@"hy测试");
}


@end
