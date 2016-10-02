//
//  MoodIndex.m
//  HealthyLife
//
//  Created by 李书豪 on 10/2/16.
//  Copyright © 2016 SchrodingersDog. All rights reserved.
//

#import "MoodIndex.h"

@implementation MoodIndex

@synthesize happiness;
@synthesize sadness;
@synthesize anger;
@synthesize surprise;
@synthesize fear;
@synthesize disgust;

@synthesize date;

-(NSString*) path {
    NSString* home = NSHomeDirectory();
    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat: @"yyyyMMddHHmmss"];
    NSString* dateString = [formatter stringFromDate: self.date];
    return [NSString stringWithFormat:@"%@/Documents/%@.txt", home, dateString];

}

-(NSURL*) url {
    NSString* pathString = self.path;
    return [NSURL fileURLWithPath: pathString];
}

-(MoodIndex*) initWithDate:(NSDate*) aDate {
    self = [super init];
    if (self) {
        self.date = aDate;
    }
    return self;
}

-(MoodIndex*) initWithCoder:(NSCoder *) decoder{
    self = [super init];
    if (self) {
        self.date = [decoder decodeObjectOfClass: [MoodIndex class] forKey: @"date"];
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *) encoder {
    [encoder encodeObject:self.date forKey:@"date"];
}

-(NSString *)description {
    NSMutableArray* moodIndexChinese = [[NSMutableArray alloc] init];
    [moodIndexChinese addObject:@"无"];
    [moodIndexChinese addObject:@"低"];
    [moodIndexChinese addObject:@"中"];
    [moodIndexChinese addObject:@"高"];
    return ([NSString stringWithFormat:@"%@ %@ %@ %@ %@ %@", [moodIndexChinese objectAtIndex:self.happiness.integerValue], [moodIndexChinese objectAtIndex:self.sadness.integerValue], [moodIndexChinese objectAtIndex:self.anger.integerValue], [moodIndexChinese objectAtIndex:self.surprise.integerValue], [moodIndexChinese objectAtIndex:self.fear.integerValue], [moodIndexChinese objectAtIndex:self.disgust.integerValue] ]);

}


@end
