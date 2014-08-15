//
//  MainViewController.m
//  migrationCheck
//
//  Created by Vensi Developer on 8/14/14.
//  Copyright (c) 2014 EnterWithBoldness. All rights reserved.
//

#import "MainViewController.h"
#import "Person.h"
#import "RGCoreDataStack.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSManagedObjectContext *managedObjectContext = [RGCoreDataStack sharedDataStack].managedObjectContext;
    
    
    Person *newPerson =  [NSEntityDescription insertNewObjectForEntityForName:@"Person" inManagedObjectContext:managedObjectContext ];
    newPerson.age = [NSNumber numberWithInt:10];
    newPerson.name = @"First Name";
    newPerson.power = @100;
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

@end
