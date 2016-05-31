//
//  NSObject+JSONLiteralString.m
//  Pods
//
//  Created by Jordan Zucker on 5/27/16.
//
//

#import "NSObject+JSONLiteralString.h"

@implementation NSObject (JSONLiteralString)

- (NSString *)JLS_literalString {
    // bool check?
    if ([self isKindOfClass:[NSString class]]) {
        return [NSString stringWithFormat:@"%@", self];
    } else if ([self isKindOfClass:[NSNumber class]]) {
        return [NSString stringWithFormat:@"%@", self];
    } else if ([self isKindOfClass:[NSArray class]]) {
        NSArray *selfArray = (NSArray *)self;
        NSMutableString *literalString = [@"[" mutableCopy];
        for (id item in selfArray) {
            [literalString appendString:[item JLS_literalString]];
        }
        return literalString.copy;
    } else if ([self isKindOfClass:[NSDictionary class]]) {
        NSDictionary *selfDictionary = (NSDictionary *)self;
        __block NSMutableString *literalString = [@"{" mutableCopy];
        [selfDictionary enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            [literalString appendFormat:@"%@: %@", key, [obj JLS_literalString]];
        }];
        return literalString.copy;
    } else if ([self isEqual:[NSNull null]]) {
        // need to fix up null check with some tests
        return [NSString stringWithFormat:@"[NSNull null],"];
    } else {
        return @"";
    }
}

@end
