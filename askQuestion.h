//
//  askQuestion.h
//  hackday
//
//  Created by ShaoLei on 12/6/14.
//  Copyright (c) 2014 ShaoLei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "question.h"

@interface askQuestion : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *question;
@property (weak, nonatomic) IBOutlet UIButton *ask;
@property (weak, nonatomic) IBOutlet UITextField *choice1;
@property (weak, nonatomic) IBOutlet UITextField *choice2;
//@property(strong,nonatomic) NSMutableArray *myquesions;
//@property (strong, nonatomic) IBOutlet UIView *tableview;
@property (strong, nonatomic) question *curr;

@end
