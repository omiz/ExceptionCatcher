//
//  ExceptionCatcher.h
//  ExceptionCatcher
//
//  Created by Omar Allaham on 3/11/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExceptionCatcher : NSObject

+ (BOOL)perform:(void(^)(void))tryBlock error:(__autoreleasing NSError **)error;

@end

NS_ASSUME_NONNULL_END
