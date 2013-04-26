//
//  ViewController.m
//  Transit
//
//  Created by Jonas Scharpf on 26.04.13.
//  Copyright (c) 2013 Jonas Scharpf. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openSecondView:(id)sender
{
    /*
     Add a new file
     Objective-C Class
     Subclass of ViewController
     
     import the file above with #import "SecondViewController.h"
     */
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    SecondViewController *secondView = (SecondViewController *)[storyboard instantiateViewControllerWithIdentifier:@"aViewIdentifier"];
    //go to MainStoryboard.storyboard
    //add a new view controller from the utilities
    //select Identity Inspector
    //select "Custom Class" the View Controller Class you've added
    //add a identifier, which has to be the same as above
    
    NSLog(@"Open Second View ...");
    [self presentViewController:secondView animated:YES completion:nil];
}
@end
