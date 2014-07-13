//
//  Hand.m
//  RockPaperScissors
//
//  Created by Tom on 12/07/2014.
//  Copyright (c) 2014 SugWare. All rights reserved.
//

#import "Hand.h"

@implementation Hand

-(instancetype) initWithShape:(NSString *)handShape{
    self = [super init];
    
    _handShape = handShape;
    
    return self;
}

@end
