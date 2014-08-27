//
//  ClassPage.m
//  Quester
//
//  Created by itisioslab on 22.08.14.
//  Copyright (c) 2014 Артур Сагидулин. All rights reserved.
//

#import "ClassPage.h"
#import <Social/Social.h>
@interface ClassPage ()

@end

@implementation ClassPage

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


- (IBAction)twitter:(id)sender {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]){
        SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetSheet setInitialText:@"New project"];
        [tweetSheet addURL:[NSURL URLWithString:@"http://instagram.com/arman_kostanyan"]];
        [self presentViewController:tweetSheet animated:"YES" completion:nil];
    }
}


- (IBAction)facebook:(id)sender {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]){
        SLComposeViewController *facebookSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [facebookSheet setInitialText:@"New project"];
        [facebookSheet addURL:[NSURL URLWithString:@"http://instagram.com/arman_kostanyan"]];
        [self presentViewController:facebookSheet animated:"YES" completion:nil];
    }
}
- (IBAction)Message:(id)sender {
    NSString *Emailtittle = @"Test email";
    NSString *MessageBody = @"Программировать под iOS прекрасно!";
    NSArray *arr = [NSArray arrayWithObjects:@"armankostanian@gmail.com", nil];
    MFMailComposeViewController *MC = [[MFMailComposeViewController alloc]init];
    MC.mailComposeDelegate = self;
    [MC setSubject:Emailtittle];
    [MC setMessageBody:MessageBody isHTML:Nil];
    [MC setToRecipients:arr];
    
    
    [self presentViewController:MC animated:"YES" completion:Nil];
    
    
}

-(void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    switch (result) {
        case MFMailComposeResultCancelled:
            NSLog(@"mail cancled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"mail sent failed", [error localizedDescription]);
            break;
        default:
            break;
    }
    [self dismissViewControllerAnimated:"YES" completion:Nil];
}
@end
