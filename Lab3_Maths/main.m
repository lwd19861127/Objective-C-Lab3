//
//  main.m
//  Lab3_Maths
//
//  Created by WendaLi on 2020-04-01.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        while (gameOn) {
            Question *question = questionFactory.generateRandomQuestion;
            [questionManager.questions addObject:question];
            NSString *answerNSString = [InputHandler getUserInput:255 prompt:question.question];
            if ([answerNSString  isEqual: @"quit"]) {
                gameOn = NO;
                NSLog(@"%@", scoreKeeper.caculate);
                NSLog(@"%@", questionManager.timeOutput);
                continue;
            }
            NSInteger *answerNSInteger = [answerNSString intValue];
            if (answerNSInteger == question.answer) {
                scoreKeeper.right += 1;
                NSLog(@"Right!");
            } else {
                scoreKeeper.wrong += 1;
                NSLog(@"Wrong!");
            }
        }
    }
    return 0;
}
