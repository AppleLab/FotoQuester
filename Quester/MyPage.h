//
//  MyPage.h
//  Quester
//
//  Created by itisioslab on 25.08.14.
//  Copyright (c) 2014 Артур Сагидулин. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyPage : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *avatar;
- (IBAction)btn_changeAvatar:(id)sender;

- (IBAction)btn_exit:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lbl_login;

- (IBAction)changingUsername:(id)sender;
- (IBAction)done:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *tf_username;

@end
