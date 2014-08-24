//
//  THPOBingo.h
//  PO Bingo
//
//  Created by Tim Herbig on 24.08.14.
//  Copyright (c) 2014 TimHerbig. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface THPOBingo : NSObject {
    NSArray *_slogans;
}

@property (strong,nonatomic, readonly) NSArray *slogans;

- (NSString*) randomSlogan;

@end
