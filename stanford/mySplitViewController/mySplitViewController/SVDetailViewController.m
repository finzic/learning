//
//  SVDetailViewController.m
//  mySplitViewController
//
//  Created by Luca Finzi Contini on 07/08/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SVDetailViewController.h"

@interface SVDetailViewController ()

@end

@implementation SVDetailViewController
@synthesize labelField= _labelField;
@synthesize toolbar = _toolbar;

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
    self.splitViewController.delegate = self;
}

- (void)viewDidUnload
{
    [self setLabelField:nil];
    [self setToolbar:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

-(void) setSplitViewBarButtonItem:(UIBarButtonItem *)aButton
{
    [self.toolbar setItems:[[NSArray alloc] initWithObjects:aButton, nil] animated:NO];
}

-(void) removeSplitViewBarButtonItem:(UIBarButtonItem *)aButton
{
    NSMutableArray *btns = [self.toolbar.items mutableCopy];
    [btns removeObject:aButton];
    self.toolbar.items = [[NSArray alloc] initWithArray:btns];
}

#pragma mark - Split VIEW CONTROLLER DELEGATE

-(void)splitViewController:(UISplitViewController *)svc 
         popoverController:(UIPopoverController *)pc 
 willPresentViewController:(UIViewController *)aViewController{
    
}

-(void)splitViewController:(UISplitViewController *)svc 
    willHideViewController:(UIViewController *)aViewController 
         withBarButtonItem:(UIBarButtonItem *)barButtonItem 
      forPopoverController:(UIPopoverController *)pc
{
    barButtonItem.title = @"GetBack!";
    [[svc.viewControllers lastObject] setSplitViewBarButtonItem:barButtonItem];
}

-(void)splitViewController:(UISplitViewController *)svc 
    willShowViewController:(UIViewController *)aViewController 
 invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    [[svc.viewControllers lastObject] removeSplitViewBarButtonItem:barButtonItem];
}

-(BOOL) splitViewController:(UISplitViewController *)svc shouldHideViewController:(UIViewController *)vc inOrientation:(UIInterfaceOrientation)orientation
{
    return UIInterfaceOrientationIsPortrait(orientation);
}
@end
