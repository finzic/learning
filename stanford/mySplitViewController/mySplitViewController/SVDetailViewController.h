//
//  SVDetailViewController.h
//  mySplitViewController
//
//  Created by Luca Finzi Contini on 07/08/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SVDetailViewController : UIViewController <UISplitViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *labelField;
@property (weak, nonatomic) IBOutlet UIToolbar *toolbar;

@end
