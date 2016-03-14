//
//  LPSCurrentState.h
//  PoliceSketch
//
//  Created by Nelson Chow on 2016-03-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LPSCurrentState : NSObject

@property NSMutableArray *eyesImages, *noseImages, *mouthImages;
@property (nonatomic) UIImage *eyeCurrentImage, *noseCurrentImage, *mouthCurrentImage;
@property (nonatomic) NSInteger currentEyeIndex, currentNoseIndex, currentMouthIndex;

- (UIImage *) changeEyeImageForward;
- (UIImage *) changeEyeImageBackward;
- (UIImage *) changeNoseImageForward;
- (UIImage *) changeNoseImageBackward;
- (UIImage *) changeMouthImageForward;
- (UIImage *) changeMouthImageBackward;

@end
