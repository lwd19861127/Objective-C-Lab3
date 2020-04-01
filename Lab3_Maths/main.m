//
//  main.m
//  Lab3_Maths
//
//  Created by WendaLi on 2020-04-01.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        while (gameOn) {
            AdditionQuestion *additionQuestion = [[AdditionQuestion alloc] init];
            NSString *additionAnswerNSString = [InputHandler getUserInput:255 prompt:additionQuestion.question];
            if ([additionAnswerNSString  isEqual: @"quit"]) {
                gameOn = NO;
                NSLog(@"%@", scoreKeeper.caculate);
                continue;
            }
            NSInteger *additionAnswerNSInteger = [additionAnswerNSString intValue];
            if (additionAnswerNSInteger == additionQuestion.answer) {
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
