//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"

@interface LPSViewController ()


@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	 self.currentState = [[LPSCurrentState alloc] init];
    
    // Here is where you will create the buttons & image views and add them to the view.
}

- (IBAction)eyeForwardButton:(id)sender {
    self.eyeImageView.image = [self.currentState changeEyeImageForward];
}

- (IBAction)eyeBackwardButton:(id)sender {
    self.eyeImageView.image = [self.currentState changeEyeImageBackward];
}

- (IBAction)noseForwardButton:(id)sender {
    self.noseImageView.image = [self.currentState changeNoseImageForward];
}

- (IBAction)noseBackwardButton:(id)sender {
    self.noseImageView.image = [self.currentState changeNoseImageBackward];
}

- (IBAction)mouthForwardButton:(id)sender {
    self.mouthImageView.image = [self.currentState changeMouthImageForward];
}

- (IBAction)mouthBackwardButton:(id)sender {
    self.mouthImageView.image = [self.currentState changeMouthImageBackward];
}

@end
