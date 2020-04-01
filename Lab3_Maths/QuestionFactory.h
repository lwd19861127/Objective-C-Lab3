//
//  QuestionFactory.h
//  Lab3_Maths
//
//  Created by WendaLi on 2020-04-02.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject

- (Question*) generateRandomQuestion;

@end

NS_ASSUME_NONNULL_END
