//
//  QuestionFactory.m
//  Lab3_Maths
//
//  Created by WendaLi on 2020-04-02.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import "QuestionFactory.h"
#import "Question.h"


@implementation QuestionFactory

- (Question*) generateRandomQuestion
{
    NSArray *questionSubclassNames = @[@"AdditionQuestion",@"SubtractionQuestion"];
    int random = arc4random_uniform(2);
    return [[NSClassFromString(questionSubclassNames[random]) alloc] init];
}

@end
