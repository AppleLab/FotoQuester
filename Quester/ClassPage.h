//
//  ClassPage.h
//  Quester
//
//  Created by itisioslab on 22.08.14.
//  Copyright (c) 2014 Артур Сагидулин. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>


@interface ClassPage : UIViewController <MFMailComposeViewControllerDelegate>
- (IBAction)Message:(id)sender;

- (IBAction)twitter:(id)sender;

- (IBAction)facebook:(id)sender;
@end
