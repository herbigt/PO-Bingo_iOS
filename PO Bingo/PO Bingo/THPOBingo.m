//
//  THPOBingo.m
//  PO Bingo
//
//  Created by Tim Herbig on 24.08.14.
//  Copyright (c) 2014 TimHerbig. All rights reserved.
//

#import "THPOBingo.h"

@implementation THPOBingo

- (NSArray *) slogans {
    if (_slogans == nil) {
        _slogans = [[NSArray alloc] initWithObjects:@"It can’t be that hard, right?",@"It’s probably an easy task.",@"I assume that it will look like this.",@"Let's launch with an MVP!",@"Mobile can be done later.",@"#YOLO",@"Do you really need acceptance criteria for this one?",@"Can't we just ship it without QA?",@"Looks good to me.",@"Who's working on this task?",@"I fear we have to pull this into the sprint.",@"Let's assume the designs were final.",@"I'll take care of the copy.",@"Sorry, but this is out of scope for the MVP.",@"Ready for a small estimate?",@"Do i really have to split that user story?",@"Blocker? On test environment it worked smoothly.", nil];
    }
    return _slogans;
}

- (NSString*) randomSlogan {
    int random = arc4random_uniform(self.slogans.count);
    return [self.slogans objectAtIndex:random];
};

@end
