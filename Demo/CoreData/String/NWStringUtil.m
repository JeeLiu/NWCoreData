//
//  NWStringUtil.m
//  APPVV
//
//  Created by Anselz (@Janselz) on 14-7-8.
//  Copyright (c) 2014年 NeoWork. All rights reserved.
//

#import "NWStringUtil.h"

@implementation NWStringUtil

+(NSString *)convertToLowercase:(NSString *)covertString
{
    if (covertString.length > 0) {
        NSString *newStr = [covertString lowercaseString];
        return newStr;
    } else {
        return @"";
    }
}

+(NSString *)convertToUppercase:(NSString *)covertString
{
    if (covertString.length > 0) {
        NSString *newStr = [covertString uppercaseString];
        return newStr;
    } else {
        return @"";
    }
}

@end
