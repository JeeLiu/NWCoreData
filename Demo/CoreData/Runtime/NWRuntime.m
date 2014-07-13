//
//  NWRuntime.m
//  APPVV
//
//  Created by Anselz (@Janselz) on 14-6-16.
//  Copyright (c) 2014年 NeoWork. All rights reserved.
//

#import "NWRuntime.h"
#import <objc/runtime.h>

@implementation NWRuntime

+(NSArray *)fetchVarArray:(id)obj
{
    NSMutableArray *array = [[NSMutableArray alloc]initWithCapacity:0];
    u_int               count;
    Ivar *ivars = class_copyIvarList([obj class], &count);
    for (int i = 0; i < count ; i++)
    {
        const char* propertyName = ivar_getName(ivars[i]);
        NSString *varName = [NSString  stringWithCString:propertyName encoding:NSUTF8StringEncoding];
        [array addObject:varName];
    }
    return array;
}

+(NSArray *)fetchPropertyArray:(id)obj
{
    NSMutableArray *array = [[NSMutableArray alloc]initWithCapacity:0];
    u_int               count;
    objc_property_t* properties = class_copyPropertyList([obj class], &count);
    for (int i = 0; i < count ; i++)
    {
        const char* propertyName = property_getName(properties[i]);
        NSString *varName = [NSString  stringWithCString:propertyName encoding:NSUTF8StringEncoding];
        [array addObject:varName];
    }
    return array;
}

@end
