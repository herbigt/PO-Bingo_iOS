//
//  THViewController.m
//  PO Bingo
//
//  Created by Tim Herbig on 17.08.14.
//  Copyright (c) 2014 TimHerbig. All rights reserved.
//

#import "THViewController.h"

@interface THViewController ()

@end

@implementation THViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    
    NSArray *slogans = [[NSArray alloc] initWithObjects:@"It can’t be that hard, right?",@"It’s probably an easy task.",@"I assume that it will look like this.",@"Let's launch with an MVP!",@"Mobile can be done later.",@"#YOLO",@"Do you really need acceptance criteria for this one?",@"Can't we just ship it without QA?",@"Looks good to me.",@"Who's working on this task?",@"I fear we have to pull this into the sprint.",@"Let's assume the designs were final.",@"I'll take care of the copy.",@"Sorry, but this is out of scope for the MVP.", nil];
    
    self.sloganLabel.text = [slogans objectAtIndex:3];
}


@end
























