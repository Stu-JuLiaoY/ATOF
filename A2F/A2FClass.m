//
//  A2FClass.m
//  A2F
//
//  Created by JuLiaoyuan on 16/8/31.
//  Copyright © 2016年 Spark. All rights reserved.
//

#import "A2FClass.h"

@implementation A2FClass

- (void)arrayToFloat:(NSString *)numString {
    
    NSInteger sign = [numString hasPrefix:@"-"] ? -1 : 1;
    
    NSString *onlyNum = [self stringOnlyNumber:numString];
    
    NSArray<NSString *> *numArr = [onlyNum componentsSeparatedByString:@"."];
    
    NSString *j_intString = numArr[0];
    NSInteger j_intValue = [self intValueFromString:j_intString];
    
    NSString *j_floatString = numArr[1];
    CGFloat j_floatValue = [self floatValueFromString:j_floatString];
    
    NSLog(@"result:%f",(j_intValue + j_floatValue) * sign);
}

- (NSString *)stringOnlyNumber:(NSString *)numStr {
    NSString *result = [NSString new];
    for (NSInteger index = 0; index < numStr.length; index ++) {
        char c = [numStr characterAtIndex:index];
        if (('0' <= c && '9' >= c) || c == '.') {
            result = [result stringByAppendingString:[NSString stringWithFormat:@"%c",c]];
        }
    }
    return result;
}

- (NSInteger)intValueFromString:(NSString *)intString {
    
    NSUInteger flag = intString.length - 1;
    NSInteger result = 0;
    
    for (NSInteger index = 0; index < intString.length; index ++) {
        char c = [intString characterAtIndex:index];
        int num = c - '0';
        result += num * pow(10, flag);
        flag --;
    }
    return result;
}

- (CGFloat)floatValueFromString:(NSString *)floatString {
    CGFloat result = 0;
    
    for (NSInteger index = 0; index < floatString.length; index ++) {
        char c = [floatString characterAtIndex:index];
        int num = c - '0';
        result += num * pow(0.1, index + 1);
    }
    return result;
}

@end
