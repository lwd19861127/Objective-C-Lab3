//
//  AdditionQuestion.h
//  Lab3_Maths
//
//  Created by WendaLi on 2020-04-01.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject

@property (nonatomic, assign) NSString* question;
@property (nonatomic,assign)  NSInteger answer;

- (instancetype)init;

@end

NS_ASSUME_NONNULL_END
