//
//  ToTheGameViewController.m
//  Quester
//
//  Created by itisioslab on 22.08.14.
//  Copyright (c) 2014 Артур Сагидулин. All rights reserved.
//

#import "ToTheGameViewController.h"
#import "EnterViewController.h"

@interface ToTheGameViewController ()
{
    BOOL *registration;
    
}

@end

@implementation ToTheGameViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/





- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    EnterViewController *enter = [[EnterViewController alloc] init];
    
    enter = [segue destinationViewController];
    
    if( [segue.identifier isEqualToString: @"IWasNotInTheGame"]){
        NSLog(@"wasNot");
        enter.registration = true;
    }else{
        enter.registration = false;
    }
    
    
}


@end
