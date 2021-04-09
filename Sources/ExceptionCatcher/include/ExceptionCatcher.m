//
//  ExceptionCatcher.m
//  ExceptionCatcher
//
//  Created by Omar Allaham on 3/11/20.
//

#import "ExceptionCatcher.h"

@implementation ExceptionCatcher

+ (BOOL)perform:(void(^)(void))tryBlock error:(__autoreleasing NSError **)error {
    @try {
        tryBlock();
        return YES;
    }
    @catch (NSException *exception) {
        *error = [[NSError alloc] initWithDomain:exception.name code:0 userInfo:exception.userInfo];
        return NO;
    }
}

@end
