//
//  LPSViewController.h
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LPSCurrentState.h"

@interface LPSViewController : UIViewController

@property (nonatomic) LPSCurrentState *currentState;
@property (weak, nonatomic) IBOutlet UIImageView *eyeImageView;
@property (weak, nonatomic) IBOutlet UIImageView *noseImageView;
@property (weak, nonatomic) IBOutlet UIImageView *mouthImageView;

@end
