//
//  SVMasterViewController.h
//  sampleSplitView
//
//  Created by Luca Finzi Contini on 07/08/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SVDetailViewController;

@interface SVMasterViewController : UITableViewController

@property (strong, nonatomic) SVDetailViewController *detailViewController;

@end
