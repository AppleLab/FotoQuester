//
//  ClassQuests.h
//  Quester
//
//  Created by itisioslab on 26.08.14.
//  Copyright (c) 2014 Артур Сагидулин. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClassQuests : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *HeadQuest;

@end
