//
//  THViewController.h
//  PO Bingo
//
//  Created by Tim Herbig on 17.08.14.
//  Copyright (c) 2014 TimHerbig. All rights reserved.
//

#import <UIKit/UIKit.h>

@class THPOBingo;

@interface THViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *sloganLabel;
@property (strong, nonatomic) THPOBingo *poBingo;
- (IBAction)buttonPressed;

@end
