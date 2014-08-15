//
//  RGCoreDataStack.h
//  migrationCheck
//
//  Created by Vensi Developer on 8/14/14.
//  Copyright (c) 2014 EnterWithBoldness. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RGCoreDataStack : NSObject

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic) NSManagedObjectContext *backgroundObjectContext; 
- (void)saveContext;
- (void)inBackgroundPerformBlock:(void (^)(void))executionBlock;

- (NSURL *)applicationDocumentsDirectory;
+ (instancetype)sharedDataStack;
@end
