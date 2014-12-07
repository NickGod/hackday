//
//  question.m
//  hackday
//
//  Created by ShaoLei on 12/6/14.
//  Copyright (c) 2014 ShaoLei. All rights reserved.
//

#import "question.h"

@implementation question

//- (IBAction)postQuestion:(id)sender {

-(id) initWithString:(NSString*)content first: (NSString*)choice1 second:(NSString*)choice2
{
    self = [super init];
    
    if(self){
        self.content = content;
        self.choice1 = choice1;
        self.choice2 = choice2;
        
    }
    return self;
}

@end
