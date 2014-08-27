//
//  Likes.m
//  Quester
//
//  Created by itisioslab on 26.08.14.
//  Copyright (c) 2014 Артур Сагидулин. All rights reserved.
//

#import "Likes.h"

@implementation Likes

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)Like:(id)sender {
    x=x+1;
    NSString *str = [NSString stringWithFormat:@"%d", (int)x];
    [self.Likes setText:str];
}

- (IBAction)comment:(id)sender {
    [self.label setText:self.texter.text];
    self.label.numberOfLines = 0;
    [self.label sizeToFit];
}
@end
