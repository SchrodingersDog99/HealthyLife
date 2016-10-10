//
//  GyroscopeCollector.h
//  HealthyLife
//
//  Created by 李书豪 on 10/10/16.
//  Copyright © 2016 SchrodingersDog. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreMotion/CoreMotion.h>
#import "ICollector.h"

@interface GyroscopeCollector : NSObject

@property (strong, nonatomic) CMMotionManager* aMotionManager;
@property (strong, nonatomic) CMGyroData* returnedGyData;

+ (GyroscopeCollector*) sharedInstance;
- (void) startGyroscopeRecording;

@end
