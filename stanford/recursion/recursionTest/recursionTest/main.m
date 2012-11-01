//
//  main.m
//  recursionTest
//
//  Created by Luca Finzi Contini on 7/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RecursionTest.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        RecursionTest* myTest = [[RecursionTest alloc] init];
        NSLog(@"Hello, World!");
        [myTest startTest];
        NSLog(@"Bye Bye, World!");
        
    }
    return 0;
}

