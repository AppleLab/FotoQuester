//
//  EnterViewController.h
//  Quester
//
//  Created by itisioslab on 22.08.14.
//  Copyright (c) 2014 Артур Сагидулин. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EnterViewController : UIViewController

@property BOOL *registration;
@property (weak, nonatomic) IBOutlet UIButton *btn_ToQuester;
@property (weak, nonatomic) IBOutlet UITextField *tf_login;
@property (weak, nonatomic) IBOutlet UITextField *tf_password;
@property NSMutableArray *names;
@property NSMutableArray *place;
- (IBAction)passwordWasCreated:(id)sender;


- (IBAction)textWasCreated:(id)sender;

@end
