//
//  NSObject+JLSAdditions.m
//  Pods
//
//  Created by Jordan Zucker on 5/31/16.
//
//

#import "NSObject+JLSAdditions.h"
#import "NSString+JLSAdditions.h"

@implementation NSObject (JLSAdditions)

- (NSString *)JLS_literalString {
    // bool check?
    if ([self isKindOfClass:[NSString class]]) {
        return [[NSString stringWithFormat:@"\"%@\"", self] JLS_literalWrap];
    } else if ([self isKindOfClass:[NSNumber class]]) {
        return [[NSString stringWithFormat:@"%@", self] JLS_literalWrap];
    } else if ([self isKindOfClass:[NSArray class]]) {
        NSArray *selfArray = (NSArray *)self;
        NSString *initialString = [[@"[" JLS_literalWrap] JLS_formattedLineWithEndingComma:NO];;
        NSMutableString *literalString = [initialString mutableCopy];
        for (id item in selfArray) {
            [literalString appendString:[[item JLS_literalString] JLS_formattedLineWithEndingComma:YES]];
        }
        [literalString appendString:[@"]" JLS_formattedLineWithEndingComma:YES]];
        return literalString.copy;
    } else if ([self isKindOfClass:[NSDictionary class]]) {
        NSDictionary *selfDictionary = (NSDictionary *)self;
        NSString *initialString = [[@"{" JLS_literalWrap] JLS_formattedLineWithEndingComma:NO];
        __block NSMutableString *literalString = [initialString mutableCopy];
        [selfDictionary enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            NSString *itemString = [NSString stringWithFormat:@"%@: %@", [key JLS_literalString], [obj JLS_literalString]];
            [literalString appendString:[itemString JLS_formattedLineWithEndingComma:YES]];
        }];
        [literalString appendString:[@"}" JLS_formattedLineWithEndingComma:YES]];
        return literalString.copy;
    } else if ([self isEqual:[NSNull null]]) {
        // need to fix up null check with some tests
        return [NSString stringWithFormat:@"[NSNull null],"];
    } else {
        return @"";
    }
}

- (NSString *)JLS_formattedLiteralString {
    if (
        [self isKindOfClass:[NSString class]] ||
        [self isKindOfClass:[NSNumber class]]
        ) {
        return [[self JLS_literalString] JLS_formattedLineWithEndingComma:YES];
    } else {
        return [self JLS_literalString];
    }
}

//- (NSString *)JLS_literalWrap {
//    return [NSString stringWithFormat:@"\@%@", self];
//}

- (NSString *)JLS_unformattedLiteralString {
    // bool check?
    if ([self isKindOfClass:[NSString class]]) {
        return [[NSString stringWithFormat:@"\"%@\"", self] JLS_literalWrap];
    } else if ([self isKindOfClass:[NSNumber class]]) {
        return [[NSString stringWithFormat:@"%@", self] JLS_literalWrap];
    } else if ([self isKindOfClass:[NSArray class]]) {
        NSArray *selfArray = (NSArray *)self;
        NSString *initialString = [@"[\n" JLS_literalWrap];
        NSMutableString *literalString = [initialString mutableCopy];
        for (id item in selfArray) {
            [literalString appendString:[[item JLS_literalWrap] JLS_formattedLineWithEndingComma:YES]];
        }
        [literalString appendString:[[@"]" JLS_literalWrap] JLS_formattedLineWithEndingComma:YES]];
        return literalString.copy;
    } else if ([self isKindOfClass:[NSDictionary class]]) {
        NSDictionary *selfDictionary = (NSDictionary *)self;
        NSString *initialString = [@"{\n" JLS_literalWrap];
        __block NSMutableString *literalString = [initialString mutableCopy];
        [selfDictionary enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            NSString *itemString = [NSString stringWithFormat:@"%@: %@", [key JLS_literalWrap], [obj JLS_literalWrap]];
            [literalString appendString:[itemString JLS_formattedLineWithEndingComma:YES]];
        }];
        [literalString appendString:[[@"}" JLS_literalWrap] JLS_formattedLineWithEndingComma:YES]];
        return literalString.copy;
    } else if ([self isEqual:[NSNull null]]) {
        // need to fix up null check with some tests
        return [NSString stringWithFormat:@"[NSNull null],"];
    } else {
        return @"";
    }
}

@end
