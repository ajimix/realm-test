//
//  RLTCarTest.m
//  RealmTest
//
//  Created by Adria Jimenez on 7/31/14.
//  Copyright (c) 2014 XING. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Realm/Realm.h>
#import "RLTCar.h"

@interface RLTCarTest : XCTestCase

@end

@implementation RLTCarTest

- (void)setUp {
	[super setUp];
	// Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
	// Put teardown code here. This method is called after the invocation of each test method in the class.
	[super tearDown];
}

- (void)testExample {
	RLMRealm *realm = [RLMRealm defaultRealm];

	[realm beginWriteTransaction];
	[RLTCar createInRealm:realm withObject:@{
	     @"name": @"test"
	 }];
	[realm commitWriteTransaction];
	// Object type RLTCar not persisted in realm
}

@end
