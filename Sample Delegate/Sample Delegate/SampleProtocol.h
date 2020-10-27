//
//  SampleProtocol.h
//  Sample Delegate
//
//  Created by Nancy on 27/10/2020.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SampleProtocolDelegate <NSObject>
@required
- (void) processCompleted;
@end




@interface SampleProtocol : NSObject
{
// Delegate to respond back
  id <SampleProtocolDelegate> _delegate;
}
@property (nonatomic,strong) id delegate;

-(void)startSampleProcess; // Instance method
@end

NS_ASSUME_NONNULL_END
