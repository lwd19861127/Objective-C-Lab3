//
//  QuestionManager.m
//  Lab3_Maths
//
//  Created by WendaLi on 2020-04-01.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString*) timeOutput
{
    NSTimeInterval total = 0;
    for (Question *question in self.questions) {
        total += question.answerTime;
    }
    NSTimeInterval average = total / self.questions.count;
    return [NSString stringWithFormat:@"total time: %fs, average time: %fs", total, average];
}
 
@end
