//
//  NSObject.m
//  arrayofobject
//
//  Created by user148840 on 2/19/19.
//  Copyright © 2019 user148840. All rights reserved.
//

#import "NSobject.h"

@implementation NSobject
-(instancetype)initWithName:(NSString *)pName identifier:(NSString *)pIdentifier address:(NSString *)pAddress {
    self.name = pName;
    self.identifier = pIdentifier;
    self.address = pAddress;
    
    return self;
}

@end
