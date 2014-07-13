//
//  RPSGame.m
//  RockPaperScissors
//
//  Created by Tom on 12/07/2014.
//  Copyright (c) 2014 SugWare. All rights reserved.
//

#import "RPSGame.h"

@implementation RPSGame

-(instancetype)initWithPlayer1:(NSString*)player1Name andPlayer2:(NSString*)player2Name{
    
    self = [super init];
    
    _player1 = [[Player alloc] init];
    _player2 = [[Player alloc] init];
    
    _player1.playerName = player1Name;
    _player2.playerName = player2Name;
    _player1.playerScore = 0;
    _player2.playerScore = 0;
    
    return self;
}

-(void)comparePlayerHands{
    
    NSString *p1hand = self.player1.playerHand.handShape;
    NSString *p2hand = self.player2.playerHand.handShape;
    
    if (p1hand != p2hand) {
        if (([p1hand  isEqual: @"Rock"] && [p2hand isEqualToString:@"Scissors"]) ||
            ([p1hand  isEqual: @"Paper"] && [p2hand isEqualToString:@"Rock"]) ||
            ([p1hand  isEqual: @"Scissors"] && [p2hand isEqualToString:@"Paper"]))
        {
            self.player1.playerScore ++;
            self.status = [NSString stringWithFormat:@"%@ Wins! \n %@ beats %@", self.player1.playerName, p1hand, p2hand];
        }
        else if (([p2hand  isEqual: @"Rock"] && [p1hand isEqualToString:@"Scissors"]) ||
                   ([p2hand  isEqual: @"Paper"] && [p1hand isEqualToString:@"Rock"]) ||
                   ([p2hand  isEqual: @"Scissors"] && [p1hand isEqualToString:@"Paper"]))
        {
            self.player2.playerScore += 1;
            self.status = [NSString stringWithFormat:@"%@ Wins! \n %@ beats %@",self.player2.playerName, p2hand, p1hand];
        }
    } else{
        self.status = @"Draw!";
    }
    
}

@end
