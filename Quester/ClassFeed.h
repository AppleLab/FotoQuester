//
//  ClassFeed.h
//  Quester
//
//  Created by itisioslab on 26.08.14.
//  Copyright (c) 2014 Артур Сагидулин. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClassFeed : UITableViewController
- (IBAction)refreshData:(id)sender;
- (IBAction)Like:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *Likes;


@end
