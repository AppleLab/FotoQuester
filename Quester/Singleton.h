//
//  Singleton.h
//  Quester
//
//  Created by itisioslab on 25.08.14.
//  Copyright (c) 2014 Артур Сагидулин. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject
{
    NSMutableArray *arr;
    NSMutableArray *arrFoto;
    
}
@property NSMutableArray *arr, *arrFoto;
+(Singleton*) sharedInstance;
@end
