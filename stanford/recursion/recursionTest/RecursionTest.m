//
//  RecursionTest.m
//  recursionTest
//
//  Created by Luca Finzi Contini on 7/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RecursionTest.h"

@implementation RecursionTest

-(void) modifyNumber:(NSNumber *)m {
    m = [NSNumber numberWithInt:-16];
    
}

-(void)doTest:(NSNumber *)n {
    NSLog(@"Entering doTest with n = %@", n.stringValue);
    if ( n.intValue == 0){
        NSLog(@"Reached zero - returning modifyNumber");
        [self modifyNumber:n];
    }
    else{
        NSLog(@"Starting recursive call - n = %@", n);
        n = [NSNumber numberWithInt:n.intValue - 1];
        [self doTest:n];
        NSLog(@"Returning from recursive call - n = %@", n );
        //n = [NSNumber numberWithInt:n.intValue - 1];
         
    }
}



-(void) startTest{
    // this test is to understand how side effects work.
    // a test method with an input parameter is created. It is a NSNumber. 
    // Recursion will modify it 
    
    [self doTest:[NSNumber numberWithInt:3]];
    
    
}

@end
