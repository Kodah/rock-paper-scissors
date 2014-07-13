//
//  RPSGame.h
//  RockPaperScissors
//
//  Created by Tom on 12/07/2014.
//  Copyright (c) 2014 SugWare. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface RPSGame : NSObject
@property (strong, nonatomic) Player* player1;
@property (strong, nonatomic) Player* player2;
@property (strong, nonatomic) NSString* status;

-(instancetype)initWithPlayer1:(NSString*)player1Name andPlayer2:(NSString*)player2Name;
-(void)comparePlayerHands;
@end
