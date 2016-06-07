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

- (NSString *)JLS_rootObjectLiteralString {
    // bool check?
    if ([self isKindOfClass:[NSString class]]) {
        return [[NSString stringWithFormat:@"\"%@\"", self] JLS_stringWithLiteralWrap];
    } else if ([self isKindOfClass:[NSNumber class]]) {
        return [[NSString stringWithFormat:@"%@", self] JLS_stringWithLiteralWrap];
    } else if ([self isKindOfClass:[NSArray class]]) {
        NSArray *selfArray = (NSArray *)self;
        NSString *initialString = [[@"[" JLS_stringWithLiteralWrap] JLS_stringWithFormattedLineWithEndingComma:NO];
        NSMutableString *literalString = [initialString mutableCopy];
        for (id item in selfArray) {
            NSString *arrayItemString = [[item JLS_rootObjectLiteralString] JLS_stringWithFormattedLineWithEndingComma:YES];
            [literalString appendString:arrayItemString];
        }
        NSString *openFinalString = [literalString.copy JLS_stringWithAllNewLinesIndented];
        NSString *closingString = @"]";
        return [openFinalString stringByAppendingString:closingString];
    } else if ([self isKindOfClass:[NSDictionary class]]) {
        NSDictionary *selfDictionary = (NSDictionary *)self;
        NSString *initialString = [[@"{" JLS_stringWithLiteralWrap] JLS_stringWithFormattedLineWithEndingComma:NO];
        __block NSMutableString *literalString = [initialString mutableCopy];
        [selfDictionary enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            NSString *keyValueString = [NSString stringWithFormat:@"%@: %@", [key JLS_rootObjectLiteralString], [obj JLS_rootObjectLiteralString]];
            NSString *itemString = [keyValueString JLS_stringWithFormattedLineWithEndingComma:YES];
            [literalString appendString:itemString];
        }];
        NSString *openFinalString = [literalString.copy JLS_stringWithAllNewLinesIndented];
        NSString *closingString = @"}";
        return [openFinalString stringByAppendingString:closingString];
    } else if ([self isEqual:[NSNull null]]) {
        // need to fix up null check with some tests
        return [@"[NSNull null]" JLS_stringWithLiteralWrap];
    } else {
        return @"";
    }
}

- (NSString *)JLS_literalString {
    return [self JLS_rootObjectLiteralString];
//    // bool check?
//    if ([self isKindOfClass:[NSString class]]) {
//        return [[NSString stringWithFormat:@"\"%@\"", self] JLS_stringWithLiteralWrap];
//    } else if ([self isKindOfClass:[NSNumber class]]) {
//        return [[NSString stringWithFormat:@"%@", self] JLS_stringWithLiteralWrap];
//    } else if ([self isKindOfClass:[NSArray class]]) {
//        NSArray *selfArray = (NSArray *)self;
//        NSString *initialString = [[@"[" JLS_stringWithLiteralWrap] JLS_stringWithFormattedLineWithEndingComma:NO];;
//        NSMutableString *literalString = [initialString mutableCopy];
//        for (id item in selfArray) {
//            [literalString appendString:[[item JLS_literalString] JLS_stringWithFormattedLineWithEndingComma:YES]];
//        }
//        [literalString appendString:[@"]" JLS_stringWithFormattedLineWithEndingComma:YES]];
//        return literalString.copy;
//    } else if ([self isKindOfClass:[NSDictionary class]]) {
//        NSDictionary *selfDictionary = (NSDictionary *)self;
//        NSString *initialString = [[@"{" JLS_stringWithLiteralWrap] JLS_stringWithFormattedLineWithEndingComma:NO];
//        __block NSMutableString *literalString = [initialString mutableCopy];
//        [selfDictionary enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
//            NSString *itemString = [NSString stringWithFormat:@"%@: %@", [key JLS_literalString], [obj JLS_literalString]];
//            [literalString appendString:[itemString JLS_stringWithFormattedLineWithEndingComma:YES]];
//        }];
//        [literalString appendString:[@"}" JLS_stringWithFormattedLineWithEndingComma:YES]];
//        return literalString.copy;
//    } else if ([self isEqual:[NSNull null]]) {
//        // need to fix up null check with some tests
//        return [NSString stringWithFormat:@"[NSNull null],"];
//    } else {
//        return @"";
//    }
}

//- (NSString *)JLS_formattedLiteralString {
//    if (
//        [self isKindOfClass:[NSString class]] ||
//        [self isKindOfClass:[NSNumber class]]
//        ) {
//        return [[self JLS_literalString] JLS_stringWithFormattedLineWithEndingComma:YES];
//    } else {
//        return [self JLS_literalString];
//    }
//}
//
//- (NSString *)JLS_unformattedLiteralString {
//    // bool check?
//    if ([self isKindOfClass:[NSString class]]) {
//        return [[NSString stringWithFormat:@"\"%@\"", self] JLS_stringWithLiteralWrap];
//    } else if ([self isKindOfClass:[NSNumber class]]) {
//        return [[NSString stringWithFormat:@"%@", self] JLS_stringWithLiteralWrap];
//    } else if ([self isKindOfClass:[NSArray class]]) {
//        NSArray *selfArray = (NSArray *)self;
//        NSString *initialString = [@"[\n" JLS_stringWithLiteralWrap];
//        NSMutableString *literalString = [initialString mutableCopy];
//        for (id item in selfArray) {
//            [literalString appendString:[[item JLS_stringWithLiteralWrap] JLS_stringWithFormattedLineWithEndingComma:YES]];
//        }
//        [literalString appendString:[[@"]" JLS_stringWithLiteralWrap] JLS_stringWithFormattedLineWithEndingComma:YES]];
//        return literalString.copy;
//    } else if ([self isKindOfClass:[NSDictionary class]]) {
//        NSDictionary *selfDictionary = (NSDictionary *)self;
//        NSString *initialString = [@"{\n" JLS_stringWithLiteralWrap];
//        __block NSMutableString *literalString = [initialString mutableCopy];
//        [selfDictionary enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
//            NSString *itemString = [NSString stringWithFormat:@"%@: %@", [key JLS_stringWithLiteralWrap], [obj JLS_stringWithLiteralWrap]];
//            [literalString appendString:[itemString JLS_stringWithFormattedLineWithEndingComma:YES]];
//        }];
//        [literalString appendString:[[@"}" JLS_stringWithLiteralWrap] JLS_stringWithFormattedLineWithEndingComma:YES]];
//        return literalString.copy;
//    } else if ([self isEqual:[NSNull null]]) {
//        // need to fix up null check with some tests
//        return [NSString stringWithFormat:@"[NSNull null],"];
//    } else {
//        return @"";
//    }
//}

@end
