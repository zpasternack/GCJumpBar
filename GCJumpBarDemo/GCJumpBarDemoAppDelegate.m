//
//  GCJumpBarDemoAppDelegate.m
//  GCJumpBarDemo
//
//  Created by Guillaume Campagna on 11-05-24.
//  Copyright 2011 LittleKiwi. All rights reserved.
//

#import "GCJumpBarDemoAppDelegate.h"
#import "GCJumpBar.h"
#import "NSIndexPath+GCJumpBar.h"

@interface GCJumpBarDemoAppDelegate ()

@property( retain, nonatomic ) IBOutlet NSToolbarItem* jumpbarItem;
@property( retain, nonatomic ) IBOutlet NSView* jumpbarParentView;
@property( retain, nonatomic ) IBOutlet GCJumpBar* jumpbarView;

@end

@implementation GCJumpBarDemoAppDelegate

@synthesize window = window;
@synthesize label = label;

- (void) applicationDidFinishLaunching:(NSNotification *)notification
{
	self.jumpbarView.bordered = NO;
	self.jumpbarView.drawsBackground = NO;
	
	[self.jumpbarItem setView:self.jumpbarParentView];
}


- (void)jumpBar:(GCJumpBar *)jumpBar didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    label.stringValue = [NSString stringWithFormat:@"Index path : %@", indexPath.stringRepresentation];
}

@end
