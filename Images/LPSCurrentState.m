//
//  LPSCurrentState.m
//  PoliceSketch
//
//  Created by Nelson Chow on 2016-03-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "LPSCurrentState.h"

@implementation LPSCurrentState

- (instancetype)init
{
    self = [super init];
    if (self) {
        _eyesImages = [[NSMutableArray alloc] init];
        for (int i = 1; i <= 5; ++i) {
            [_eyesImages addObject:[UIImage imageNamed:[NSString stringWithFormat:@"eyes_%d.jpg", i]]];
        }
        
        _noseImages = [[NSMutableArray alloc] init];
        for (int i = 1; i <= 5; ++i) {
            [_noseImages addObject:[UIImage imageNamed:[NSString stringWithFormat:@"nose_%d.jpg", i]]];
        }
        
        _mouthImages = [[NSMutableArray alloc] init];
        for (int i = 1; i <= 5; ++i) {
            [_mouthImages addObject:[UIImage imageNamed:[NSString stringWithFormat:@"mouth_%d.jpg", i]]];
        }
    }
    return self;
}

- (UIImage *) eyeCurrentImage {
    return self.eyesImages[self.currentEyeIndex];
}

- (UIImage *) noseCurrentImage {
    return self.noseImages[self.currentNoseIndex];
}

- (UIImage *) mouthCurrentImage {
    return self.mouthImages[self.currentMouthIndex];
}

- (UIImage *) changeEyeImageForward {
    if (self.currentEyeIndex == [_eyesImages count] - 1) {
        self.currentEyeIndex = 0;
    }else{
        self.currentEyeIndex++;
    }
    return self.eyeCurrentImage;
}

- (UIImage *) changeEyeImageBackward {
    if (self.currentEyeIndex == 0) {
        self.currentEyeIndex = [_eyesImages count] - 1;
    }else{
        self.currentEyeIndex--;
    }
    return self.eyeCurrentImage;
}

- (UIImage *) changeNoseImageForward {
    if (self.currentNoseIndex == [_noseImages count] - 1) {
        self.currentNoseIndex = 0;
    }else{
        self.currentNoseIndex++;
    }
    return self.noseCurrentImage;
}

- (UIImage *) changeNoseImageBackward {
    if (self.currentNoseIndex == 0) {
        self.currentNoseIndex = [_noseImages count] - 1;
    }else{
        self.currentNoseIndex--;
    }
    return self.noseCurrentImage;
}

- (UIImage *) changeMouthImageForward {
    if (self.currentMouthIndex == [_mouthImages count] - 1) {
        self.currentMouthIndex = 0;
    }else{
        self.currentMouthIndex++;
    }
    return self.mouthCurrentImage;
}

- (UIImage *) changeMouthImageBackward {
    if (self.currentMouthIndex == 0) {
        self.currentMouthIndex = [_mouthImages count] - 1;
    }
    self.currentMouthIndex--;
    return self.mouthCurrentImage;
}



@end
