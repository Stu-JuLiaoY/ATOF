//
//  main.m
//  A2F
//
//  Created by JuLiaoyuan on 16/8/31.
//  Copyright © 2016年 Spark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "A2FClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        A2FClass *a2f = [[A2FClass alloc] init];
        [a2f arrayToFloat:@"-121.21212"];
    }
    return 0;
}
