//
//  Person.h
//  MindyFramework
//
//  Created by Mindy on 15-4-16.
//  Copyright (c) 2015年 Mindy. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Company;

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, weak) Company* company;

@end
