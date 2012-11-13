//
//  main.m
//  deps2
//
//  Created by Luca Finzi Contini on 13/11/12.
//  Copyright (c) 2012 Luca Finzi Contini. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        NSData* deps = [NSData dataWithContentsOfFile:@"/Users/finzic/Public/product-dependencies-sorted.txt"];
        //NSLog(@"This is deps: %@",deps.description);
        NSString *depsstr = [[NSString alloc]initWithData:deps encoding:NSUTF8StringEncoding];
        //NSLog(@"String: %@", depsstr);
        NSArray* deparr = [depsstr componentsSeparatedByString:@"\n"];
        NSLog(@"Number of lines= %lu", deparr.count);
        for(int i=0; i<deparr.count; i++){
            NSArray* a = [[deparr objectAtIndex:i] componentsSeparatedByString:@"="];
            NSString *compName = [[[a objectAtIndex:0] componentsSeparatedByString:@"."] objectAtIndex:0];
            NSString *compDeps = [a objectAtIndex:1];
            NSLog(@"name = %@", compName);
            NSLog(@"deps = %@", compDeps);
            
        }
        
        
        
    }
    return 0;
}

