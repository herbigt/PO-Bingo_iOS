//
//  THViewController.m
//  PO Bingo
//
//  Created by Tim Herbig on 17.08.14.
//  Copyright (c) 2014 TimHerbig. All rights reserved.
//

#import "THViewController.h"
#import "THPOBingo.h"
#import <AudioToolbox/AudioToolbox.h>

@interface THViewController ()

@end

@implementation THViewController {
    SystemSoundID soundEffect;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"ZONK"
                                                          ofType:@"mp3"];
    NSURL *soundURL = [NSURL fileURLWithPath:soundPath];
    AudioServicesCreateSystemSoundID(CFBridgingRetain(soundURL), &soundEffect);
    
    
    self.poBingo = [[THPOBingo alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    self.sloganLabel.text = [self.poBingo randomSlogan];
    AudioServicesPlaySystemSound(soundEffect);
}

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    self.sloganLabel.text = nil;
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if ( motion == UIEventSubtypeMotionShake) {
        self.sloganLabel.text = [self.poBingo randomSlogan];
        AudioServicesPlaySystemSound(soundEffect);
    }
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"motion cancelled");
}


@end
























