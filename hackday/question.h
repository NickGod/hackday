//
//  question.h
//  hackday
//
//  Created by ShaoLei on 12/6/14.
//  Copyright (c) 2014 ShaoLei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface question : NSObject
@property (nonatomic, strong) NSString *content;
@property (nonatomic, strong) NSString *choice1;
@property (nonatomic, strong) NSString *choice2;

-(id) initWithString:(NSString*)content first: (NSString*)choice1 second:(NSString*)choice2;

@end
