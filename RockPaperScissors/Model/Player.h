//
//  Player.h
//  RockPaperScissors
//
//  Created by Tom on 12/07/2014.
//  Copyright (c) 2014 SugWare. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hand.h"

@interface Player : NSObject

@property (strong, nonatomic) NSString *playerName;
@property (nonatomic) NSInteger playerScore;
@property (strong, nonatomic) Hand *playerHand;

-(void) pickRandomHand;


@end
