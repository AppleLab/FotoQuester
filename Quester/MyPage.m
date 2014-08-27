//
//  MyPage.m
//  Quester
//
//  Created by itisioslab on 25.08.14.
//  Copyright (c) 2014 Артур Сагидулин. All rights reserved.
//

#import "MyPage.h"
#import "ToTheGameViewController.h"

@interface MyPage ()
{
    NSUserDefaults *def;
}
@end

@implementation MyPage

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
    def = [[NSUserDefaults alloc] init];
   /* if([def objectForKey:@"username"] !=nil){
        [self.tf_username setText:[def objectForKey:@"username"]];
    }else{
        [self.tf_username setText:[def objectForKey:@"login"]];
    }*/
    [self.lbl_login setText:[def objectForKey:@"login"]];
    NSLog(@"log %@",[def objectForKey:@"login"]);
    if([def objectForKey:@"avatar"] != nil){
        UIImage *image = [[UIImage alloc] init];
        
        //[self.avatar setImage:<#(UIImage *)#>];
    }
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

- (IBAction)btn_changeAvatar:(id)sender {
    
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        [imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];
    }
    else
    {
        [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    }
    NSLog(@"qwfq");
    [imagePicker setDelegate:self];
    [self presentViewController:imagePicker animated:YES completion:nil];
    NSLog(@"rtrtr");
    

}





-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    NSUserDefaults *def = [[NSUserDefaults alloc] init];
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [self.avatar setImage:image];
    [self dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"!");
    //[def setObject:[image description] forKey:@"avatar"];
    
    //NSLog([image accessibilityPath]);
    NSLog(@"!!");
}
- (IBAction)changingUsername:(id)sender {
    
    //[self.tf_username setText:[self.lbl_name text]];
    
    NSString *str = [self.tf_username text];
    if([[self.tf_username text]length] > 10){
        
        str = [[self.tf_username text] substringToIndex: 10];
        NSLog(@"%@", str);
        [self.tf_username setText:str];
    }
    //NSUserDefaults *def = [[NSUserDefaults alloc] init];
    [def removeObjectForKey:@"username"];
    if(![str isEqualToString:@""]){
        NSLog(@"%@", str);
        [def setObject:str forKey:@"username"];
        NSLog(@"%@", [def objectForKey:@"username"]);
    }else{
        
        [self.tf_username setText:[def objectForKey:@"login"]];
    }
    
    
}

- (IBAction)done:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)btn_exit:(id)sender {
    NSUserDefaults *def = [[NSUserDefaults alloc] init];
    [def removeObjectForKey:@"login"];
    [def removeObjectForKey:@"password"];
    ToTheGameViewController *toGame = [self.storyboard instantiateViewControllerWithIdentifier:@"Registration"];
    [self presentViewController:toGame animated:YES completion:nil];
    
}


@end
