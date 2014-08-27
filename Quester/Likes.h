//
//  Likes.h
//  Quester
//
//  Created by itisioslab on 26.08.14.
//  Copyright (c) 2014 Артур Сагидулин. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Likes : UITableViewCell {
    int x;
}
- (IBAction)Like:(id)sender;
- (IBAction)comment:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *foto;
@property (weak, nonatomic) IBOutlet UITextField *texter;
@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UILabel *Likes;
@end
