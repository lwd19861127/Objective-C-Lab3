//
//  SubtractionQuestion.m
//  Lab3_Maths
//
//  Created by WendaLi on 2020-04-02.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.generateQuestion;
    }
    return self;
}

- (void) generateQuestion
{
    super.question = [NSString stringWithFormat:@"%i - %i ?", super.rightValue, super.leftValue];
    super.answer = super.rightValue - super.leftValue;
}

@end
