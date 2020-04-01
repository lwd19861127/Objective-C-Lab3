//
//  AdditionQuestion.m
//  Lab3_Maths
//
//  Created by WendaLi on 2020-04-01.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        int randomNumbers1 = arc4random_uniform(101) + 10;
        int randomNumbers2 = arc4random_uniform(101) + 10;
        _question = [NSString stringWithFormat:@"%i + %i ?", randomNumbers1, randomNumbers2];
        _answer = randomNumbers1 + randomNumbers2;
    }
    return self;
}

@end
