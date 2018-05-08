//
//  AppDelegate.h
//  KPIUIViewTest
//
//  Created by paul on 5/8/18.
//  Copyright © 2018 Paul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

