//
//  breadcrumbViewController.m
//  breadcrumb2
//
//  Created by Mahmoud Lababidi on 2/10/13.
//  Copyright (c) 2013 Mahmoud Lababidi. All rights reserved.
//

#import "breadcrumbViewController.h"

@interface breadcrumbViewController ()

@end

@implementation breadcrumbViewController

CLLocationManager *locationManager;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    locationManager = [[CLLocationManager alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onoffToggle:(id)sender {
    
    locationManager.delegate = self;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    
    [locationManager startUpdatingLocation];
}

#pragma mark - CLLocationManagerDelegate

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"didFailWithError: %@", error);
    UIAlertView *errorAlert = [[UIAlertView alloc]
                               initWithTitle:@"Error" message:@"Failed to Get Your Location" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [errorAlert show];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"didUpdateToLocation: %@", newLocation);
    CLLocation *currentLocation = newLocation;
    
    if (currentLocation != nil) {
        
       self.location.text = [NSString stringWithFormat:@"%.8f %.8f", currentLocation.coordinate.longitude,currentLocation.coordinate.latitude];
    }
}
@end

