//
//  NSDictionary+NilSafe.h
//  NSDictionary-NilSafe
//
//  Created by Allen Hsu on 6/22/16.
//  Copyright © 2016 Glow Inc. All rights reserved.
//
#ifdef DEBUG
#else
#import <Foundation/Foundation.h>


@interface NSArray (SafeIndex)

@end

@interface NSDictionary (NilSafe)

@end

@interface NSMutableDictionary (NilSafe)

@end

#endif
