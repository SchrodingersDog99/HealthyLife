//
//  MoodIndex.h
//  HealthyLife
//
//  Created by 李书豪 on 10/2/16.
//  Copyright © 2016 SchrodingersDog. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MoodIndex : NSObject <NSCoding>

@property (strong, nonatomic) NSNumber *happiness;
@property (strong, nonatomic) NSNumber *sadness;
@property (strong, nonatomic) NSNumber *anger;
@property (strong, nonatomic) NSNumber *surprise;
@property (strong, nonatomic) NSNumber *fear;
@property (strong, nonatomic) NSNumber *disgust;
@property (readonly, nonatomic) NSString* path;
@property (readonly, nonatomic) NSURL* url;
@property (strong, nonatomic) NSDate* date;

-(MoodIndex*) initWithDate:(NSDate*) aDate;

-(NSString*) description;

@end
