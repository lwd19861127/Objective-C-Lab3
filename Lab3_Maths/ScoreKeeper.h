//
//  ScoreKeeper.h
//  Lab3_Maths
//
//  Created by WendaLi on 2020-04-01.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) float right;
@property (nonatomic, assign) float wrong;

-(NSString*) caculate;

@end

NS_ASSUME_NONNULL_END
