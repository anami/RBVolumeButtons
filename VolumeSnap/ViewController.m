//
//  ViewController.m
//  VolumeSnap
//
//  Created by Randall Brown on 11/17/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

#import <AudioToolbox/AudioToolbox.h>
#import <MediaPlayer/MediaPlayer.h>

#import "RBVolumeButtons.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
   counter = 0;
   
   RBVolumeButtons *buttonStealer = [[[RBVolumeButtons alloc] init] autorelease];
   buttonStealer.upBlock = ^{ 
      counter++;
      [counterLabel setText:[NSString stringWithFormat:@"%i",counter]];
   };
   buttonStealer.downBlock = ^{ 
      counter--;
      [counterLabel setText:[NSString stringWithFormat:@"%i",counter]];
   };
   
}

- (void)viewDidUnload
{
   [counterLabel release];
   counterLabel = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
   return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
   [counterLabel release];
   [super dealloc];
}
@end
