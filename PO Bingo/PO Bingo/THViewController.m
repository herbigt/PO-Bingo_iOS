//
//  THViewController.m
//  PO Bingo
//
//  Created by Tim Herbig on 17.08.14.
//  Copyright (c) 2014 TimHerbig. All rights reserved.
//

#import "THViewController.h"
#import "THPOBingo.h"

@interface THViewController ()

@end

@implementation THViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.poBingo = [[THPOBingo alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    self.sloganLabel.text = [self.poBingo randomSlogan];
}

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    self.sloganLabel.text = nil;
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if ( motion == UIEventSubtypeMotionShake) {
        self.sloganLabel.text = [self.poBingo randomSlogan];
    }
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"motion cancelled");
}


@end
























