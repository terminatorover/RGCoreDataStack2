//
//  MainViewController.h
//  migrationCheck
//
//  Created by Vensi Developer on 8/14/14.
//  Copyright (c) 2014 EnterWithBoldness. All rights reserved.
//

#import "FlipsideViewController.h"

#import <CoreData/CoreData.h>

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
