//
//  AppDelegate.m
//  MindyFrameworkTest
//
//  Created by Mindy on 15-4-16.
//  Copyright (c) 2015年 Mindy. All rights reserved.
//

#import "AppDelegate.h"
#import <MindyFramework/MindyFramework.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor yellowColor];
    MindyViewController *vc = [[MindyViewController alloc] init];
    self.window.rootViewController = vc;
    
    [self.window makeKeyAndVisible];
    
    [self performSelector:@selector(change) withObject:nil afterDelay:5];
    return YES;
}


//主app访问framework中的资源
-(void)change{
    MindyViewController *vc = (MindyViewController *)self.window.rootViewController;
    
    NSBundle *bundle = [NSBundle bundleForClass:[MindyViewController class]];
    NSURL *url = [bundle URLForResource:@"dear1" withExtension:@"JPG"];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *img = [UIImage imageWithData:data];
    [vc setImage:img];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
