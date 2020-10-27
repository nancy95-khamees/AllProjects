//
//  ViewController.m
//  Sample Delegate
//
//  Created by Nancy on 27/10/2020.
//

#import "ViewController.h"
#import "SampleProtocol.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SampleProtocol *sampleProtocol = [[SampleProtocol alloc]init];
       sampleProtocol.delegate = self;
    [ _label setText:@"Processing..."];
       [sampleProtocol startSampleProcess];
       // Do any additional setup after loading the view, typically from a nib.
    // Do any additional setup after loading the view.
}
#pragma mark - Sample protocol delegate
-(void)processCompleted {
   [ _label setText: @"Process Completed"];
}

@end
