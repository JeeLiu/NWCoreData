//
//  main.m
//  Demo
//
//  Created by Anselz on 14-7-13.
//  Copyright (c) 2014年 NeoWork. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NWCoreDataUtil.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        for (int i = 0; i < 100; i++) {
            NWDownloadApps *app = [[NWDownloadApps alloc]init];
            app.token = [NSString stringWithFormat:@"token:%d",i];
            [NWCoreDataUtil insertDownloadAppItem:app];
        }
        NSLog(@"Finished");
        
        [NWCoreDataUtil fetchDownloadItemNumberOfRow:^(NSInteger count) {
            NSLog(@"NumberOfRow  %ld",(long)count);
        }];
        [NWCoreDataUtil fetchAllDownloadAppItem:^(NSArray *downloadApps) {
            for (NWDownloadApps *app in downloadApps) {
                NSLog(@"app token:%@",app.token);
            }
        }];
        
        sleep(10);
    }
    return 0;
}

