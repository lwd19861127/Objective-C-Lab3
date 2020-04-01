//
//  AdditionQuestion.h
//  Lab3_Maths
//
//  Created by WendaLi on 2020-04-01.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic, strong) NSString* question;
@property (nonatomic, assign)  NSInteger answer;
@property (nonatomic, strong) NSDate* startTime;
@property (nonatomic, strong) NSDate* endTime;
@property (nonatomic, assign) int rightValue;
@property (nonatomic, assign) int leftValue;

- (instancetype)init;
- (NSTimeInterval)answerTime;

@end

NS_ASSUME_NONNULL_END
