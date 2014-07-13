//
//  Player.m
//  RockPaperScissors
//
//  Created by Tom on 12/07/2014.
//  Copyright (c) 2014 SugWare. All rights reserved.
//

#import "Player.h"


@interface Player();

@end

@implementation Player



-(void) pickRandomHand{
    
    NSArray *handShapes = @[@"Rock", @"Paper", @"Scissors"];
    unsigned index = arc4random() % 3;
    
    self.playerHand = [[Hand alloc]initWithShape:handShapes[index]];
}

@end
