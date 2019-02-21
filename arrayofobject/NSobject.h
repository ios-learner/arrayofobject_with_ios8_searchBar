//
//  NSObject.h
//  arrayofobject
//
//  Created by user148840 on 2/19/19.
//  Copyright © 2019 user148840. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSobject : NSObject
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* identifier;
@property (strong, nonatomic) NSString* address;

@property (strong, nonatomic) NSString* searchTerms;



-(instancetype)initWithName:(NSString *)pName identifier:(NSString *)pIdentifier address:(NSString *)pAddress;
@end

