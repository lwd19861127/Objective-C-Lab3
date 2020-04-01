//
//  ScoreKeeper.m
//  Lab3_Maths
//
//  Created by WendaLi on 2020-04-01.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(NSString*) caculate
{
    int score =self.right / (self.right + self.wrong) * 100;
    return [NSString stringWithFormat:@"score: %f right, %f wrong ---- %i%%", self.right, self.wrong, score];
}
@end
