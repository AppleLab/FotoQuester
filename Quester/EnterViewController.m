//
//  EnterViewController.m
//  Quester
//
//  Created by itisioslab on 22.08.14.
//  Copyright (c) 2014 Артур Сагидулин. All rights reserved.
//

#import "EnterViewController.h"
#import "ClassTop.h"
#import "Singleton.h"

@interface EnterViewController ()

@end

@implementation EnterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.btn_ToQuester setEnabled:false];
    if(!self.registration){
        [self.btn_ToQuester setTitle:@"Войти" forState:UIControlStateNormal];
        

        
        
        NSLog(@"!!");
    }
    self.names = [[NSMutableArray alloc] init];
    self.place = [[NSMutableArray alloc]init];
    
    
//    [self.tf_login addTarget:self action:@selector(textWasCreated:) forControlEvents:UIControlEventEditingChanged];
    
    
        // Do any additional setup after loading the view.
}

//-(void)textWasCreated:(UITextField*)textField
//{
//    if(![textField.text isEqualToString:@""]){
//        [self.btn_ToQuester setEnabled:true];
//    }
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    [[Singleton sharedInstance].arr addObject:self.tf_login.text];
    
    
//    ClassTop *mc2 = [[ClassTop alloc]init];
//    mc2 = [segue destinationViewController];
//    [self.names addObject:self.tf_login.text];
//    [self.place addObject:self.tf_password.text];
//    
//    mc2.arrName = self.names;
//    mc2.arrPlace = self.place;
//    
//    
    NSUserDefaults *def = [[NSUserDefaults alloc] init];
    
    NSString *str = [self.tf_login text];
    NSString *password = [self.tf_password text];
    
    [def setValue:str forKey:@"login"];
    [def setValue:password forKey:@"password"];
//
    
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


- (IBAction)passwordWasCreated:(id)sender {
    if(![self.tf_password.text isEqualToString:@""] && ![self.tf_login.text isEqualToString:@""] && [[self.tf_password text] length] >= 6 ){
        [self.btn_ToQuester setEnabled:YES];
    }
    else {
        [self.btn_ToQuester setEnabled:NO];
    }
    NSLog(@"%@", self.tf_login.text);
}

- (IBAction)textWasCreated:(id)sender {
    
    if(![self.tf_password.text isEqualToString:@""] && ![self.tf_login.text isEqualToString:@""] && [[self.tf_password text] length] >= 6 ){
        [self.btn_ToQuester setEnabled:YES];
    }
    else {
       [self.btn_ToQuester setEnabled:NO];
    }
    NSLog(@"%@", self.tf_login.text);
   
}
@end
