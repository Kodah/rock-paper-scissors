//
//  Hand.h
//  RockPaperScissors
//
//  Created by Tom on 12/07/2014.
//  Copyright (c) 2014 SugWare. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hand : NSObject

-(instancetype) initWithShape:(NSString *)handShape;
@property (strong, nonatomic) NSString *handShape;

@end
