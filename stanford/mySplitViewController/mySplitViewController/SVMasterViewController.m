//
//  SVMasterViewController.m
//  mySplitViewController
//
//  Created by Luca Finzi Contini on 07/08/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SVMasterViewController.h"
#import "SVDetailViewController.h"

@interface SVMasterViewController ()

@end

@implementation SVMasterViewController
- (IBAction)clickedMe:(id)sender {
    // do something on detail
    SVDetailViewController *n = (SVDetailViewController *)[self.splitViewController.viewControllers lastObject];
    n.labelField.text = [n.labelField.text stringByAppendingFormat:@"%@", @"X", nil];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
