//
//  breadcrumbViewController.h
//  breadcrumb2
//
//  Created by Mahmoud Lababidi on 2/10/13.
//  Copyright (c) 2013 Mahmoud Lababidi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface breadcrumbViewController : UIViewController <CLLocationManagerDelegate>
- (IBAction)onoffToggle:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *location;

@end
