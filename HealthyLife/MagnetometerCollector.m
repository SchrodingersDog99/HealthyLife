//
//  MagnetometerCollector.m
//  HealthyLife
//
//  Created by 李书豪 on 10/10/16.
//  Copyright © 2016 SchrodingersDog. All rights reserved.
//

#import "MagnetometerCollector.h"
#import <CoreMotion/CoreMotion.h>

static MagnetometerCollector* secretCollector;

@implementation MagnetometerCollector

@synthesize aMotionManager;
@synthesize returnedMagData;


- (void) startMagnetometerRecording {
    self.returnedMagData = [[CMMagnetometerData alloc] init];
    self.aMotionManager = [[CMMotionManager alloc] init];
    
    NSOperationQueue *theQueue = [[NSOperationQueue alloc] init];
    
    if ([aMotionManager isMagnetometerAvailable]) {
        NSLog(@"HelloMag");
        aMotionManager.magnetometerUpdateInterval = 1;
        [aMotionManager startMagnetometerUpdatesToQueue:theQueue withHandler:^(CMMagnetometerData *magnetometerData, NSError *error) {
            self.returnedMagData = self.aMotionManager.magnetometerData;
            
            int x = self.returnedMagData.magneticField.x;
            int y = self.returnedMagData.magneticField.y;
            int z = self.returnedMagData.magneticField.z;
            
            NSLog(@"Mag -- X: %d   Y: %d   Z: %d", x, y, z);
        }];
    }
}



+ (MagnetometerCollector*) sharedInstance {
    if (secretCollector == nil) {
        secretCollector = [[MagnetometerCollector alloc] init];
    }
    
    return secretCollector;
    
}

@end
