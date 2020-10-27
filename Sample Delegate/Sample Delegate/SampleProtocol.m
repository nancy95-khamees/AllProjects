//
//  SampleProtocol.m
//  Sample Delegate
//
//  Created by Nancy on 27/10/2020.
//

#import "SampleProtocol.h"

@implementation SampleProtocol


-(void)startSampleProcess {
   [NSTimer scheduledTimerWithTimeInterval:3.0 target:self.delegate
    selector:@selector(processCompleted) userInfo:nil repeats:NO];
}

@end
