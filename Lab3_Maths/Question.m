//
//  AdditionQuestion.m
//  Lab3_Maths
//
//  Created by WendaLi on 2020-04-01.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _startTime = [NSDate date];
        _rightValue = arc4random_uniform(101) + 10;
        _leftValue = arc4random_uniform(101) + 10;
    }
    return self;
}

- (NSInteger)answer
{
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime
{
    return [self.endTime timeIntervalSinceDate:self.startTime];
}

- (void) generateQuestion
{
    
}
@end
