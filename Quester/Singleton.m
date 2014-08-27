//
//  Singleton.m
//  Quester
//
//  Created by itisioslab on 25.08.14.
//  Copyright (c) 2014 Артур Сагидулин. All rights reserved.
//

#import "Singleton.h"
static Singleton* _sharedInstance;

@implementation Singleton
@synthesize arr, arrFoto;

-(id) init{
    
    if(self = [super init])
        arr = [[NSMutableArray alloc]init];
        arrFoto = [[NSMutableArray alloc]init];
    return self;
}

+(Singleton*) sharedInstance{
    
    @synchronized(_sharedInstance)
    {
        if (!_sharedInstance)
            _sharedInstance = [[Singleton alloc]init];
        return _sharedInstance;
        
    }
}
@end
