//
//  AppDelegate.m
//  VSTestMac
//
//  Created by Ali Lalani on 2018-01-28.
//  Copyright © 2018 Lalani ltd. All rights reserved.
//

#import "AppDelegate.h"

@import AppCenter;
@import AppCenterCrashes;
@import AppCenterAnalytics;

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [MSAppCenter start:@"e510976b-795c-4fe1-93ca-d5b1f9073d45" withServices:@[MSAnalytics.class,MSCrashes.class]];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)throwException:(id)sender;
{
    id something = nil;
    NSMutableArray *array = [NSMutableArray array];
    [array addObject:something];
}

@end
