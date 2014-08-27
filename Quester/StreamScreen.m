//
//  StreamScreen.m
//  iReporter
//
//  Created by Marin Todorov on 10/02/2012.
//  Copyright (c) 2012 Marin Todorov. All rights reserved.
//

#import "StreamScreen.h"
#import "ToTheGameViewController.h"

@implementation StreamScreen

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"Quester feed";
    self.navigationItem.leftBarButtonItem = btnRefresh;
    
    //Изменения Ильи:
    NSUserDefaults *usr = [[NSUserDefaults alloc] init];
    if([usr objectForKey:@"login"] == nil){
        ToTheGameViewController *toGame = [self.storyboard instantiateViewControllerWithIdentifier:@"Registration"];
        [self presentViewController:toGame animated:YES completion:nil];
    }

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)btnRefreshTapped
{
    
}

@end
