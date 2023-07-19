//
//  NSDictionary+SHCategory.m
//  IOSGmSDK
//
//  Created by ChenJie on 2023/7/14.
//

#import "NSDictionary+SHCategory.h"

@implementation NSDictionary (SHCategory)


#pragma mark -  get int number
- (NSNumber*)getIntNumber:(NSString*)key {
    return [self getIntNumber:key filterEmptyAndWhiteSpaceString:NO];
}

- (NSNumber *)getIntNumberWithKeys:(NSArray<NSString *> *)keys {
    NSString *key = [self hlj_d_getAvaiableKeys:keys];
    return [self getIntNumber:key];
}

- (NSNumber *)getIntNumberWithKeyPaths:(NSArray<NSString *> *)keys {
    NSString *key = [self hlj_d_getAvaiableKeyPaths:keys];
    return [self getIntNumber:key isKeyPath:YES filterEmptyAndWhiteSpaceString:NO];
}

- (NSNumber *)getIntNumber:(NSString *)key filterEmptyAndWhiteSpaceString:(BOOL)filter {
    return [self getIntNumber:key isKeyPath:NO filterEmptyAndWhiteSpaceString:filter];
}

- (NSNumber *)getIntNumber:(NSString *)key isKeyPath:(BOOL)isKeyPath filterEmptyAndWhiteSpaceString:(BOOL)filter {
    id v = [self hlj_d_getValueFromKey:key isKeyPath:isKeyPath];
    if ([v isKindOfClass:[NSNumber class]]) {
        return v;
    } else if ([v isKindOfClass:[NSString class]]) {
        NSString *string = (NSString *)v;
        if (filter) {
            string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
            if (string.length > 0) {
                return @(string.integerValue);
            }
        } else {
            return @(string.integerValue);
        }
    }
    return nil;
}

#pragma mark -  get float number
- (NSNumber*)getFloatNumber:(NSString*)key {
    return [self getFloatNumber:key filterEmptyAndWhiteSpaceString:NO];
}

- (NSNumber *)getFloatNumberWithKeys:(NSArray<NSString *> *)keys {
    NSString *key = [self hlj_d_getAvaiableKeys:keys];
    return [self getFloatNumber:key];
}

- (NSNumber *)getFloatNumberWithKeyPaths:(NSArray<NSString *> *)keys {
    NSString *key = [self hlj_d_getAvaiableKeyPaths:keys];
    return [self getFloatNumber:key isKeyPath:YES filterEmptyAndWhiteSpaceString:NO];
}

- (NSNumber *)getFloatNumber:(NSString *)key filterEmptyAndWhiteSpaceString:(BOOL)filter {
    return [self getFloatNumber:key isKeyPath:NO filterEmptyAndWhiteSpaceString:filter];
}

- (NSNumber *)getFloatNumber:(NSString *)key isKeyPath:(BOOL)isKeyPath filterEmptyAndWhiteSpaceString:(BOOL)filter {
    id v = [self hlj_d_getValueFromKey:key isKeyPath:isKeyPath];
    if ([v isKindOfClass:[NSNumber class]]) {
        return v;
    } else if ([v isKindOfClass:[NSString class]]) {
        NSString *string = (NSString *)v;
        if (filter) {
            string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
            if (string.length > 0) {
                return @(string.floatValue);
            }
        } else {
            return @(string.floatValue);
        }
    }
    return nil;
}

#pragma mark -  get double number
- (NSNumber*)getDoubleNumber:(NSString*)key {
    return [self getDoubleNumber:key filterEmptyAndWhiteSpaceString:NO];
}

- (NSNumber *)getDoubleNumberWithKeys:(NSArray<NSString *> *)keys {
    NSString *key = [self hlj_d_getAvaiableKeys:keys];
    return [self getDoubleNumber:key];
}

- (NSNumber *)getDoubleNumberWithKeyPaths:(NSArray<NSString *> *)keys {
    NSString *key = [self hlj_d_getAvaiableKeyPaths:keys];
    return [self getDoubleNumber:key isKeyPath:YES filterEmptyAndWhiteSpaceString:NO];
}

- (NSNumber*)getDoubleNumber:(NSString*)key filterEmptyAndWhiteSpaceString:(BOOL)filter {
    return [self getDoubleNumber:key isKeyPath:NO filterEmptyAndWhiteSpaceString:NO];
}

- (NSNumber*)getDoubleNumber:(NSString*)key isKeyPath:(BOOL)isKeyPath filterEmptyAndWhiteSpaceString:(BOOL)filter {
    id v = [self hlj_d_getValueFromKey:key isKeyPath:isKeyPath];
    if ([v isKindOfClass:[NSNumber class]]) {
        return v;
    } else if ([v isKindOfClass:[NSString class]]) {
        NSString *string = (NSString *)v;
        if (filter) {
            string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
            if (string.length > 0) {
                return @(string.doubleValue);
            }
        } else {
            return @(string.doubleValue);
        }
    }
    return nil;
}

#pragma mark -  get decimal number
- (NSDecimalNumber *)getDecimalNumber:(NSString *)key {
    return [self getDecimalNumber:key isKeyPath:NO];
}

- (NSDecimalNumber *)getDecimalNumberWithKeys:(NSArray<NSString *> *)keys {
    NSString *key = [self hlj_d_getAvaiableKeys:keys];
    return [self getDecimalNumber:key];
}

- (NSDecimalNumber *)getDecimalNumberWithKeyPaths:(NSArray<NSString *> *)keys {
    NSString *key = [self hlj_d_getAvaiableKeyPaths:keys];
    return [self getDecimalNumber:key isKeyPath:YES];
}

- (NSDecimalNumber *)getDecimalNumber:(NSString *)key isKeyPath:(BOOL)isKeyPath {
    id value = [self hlj_d_getValueFromKey:key isKeyPath:isKeyPath];
    
    NSDecimalNumber *decNum = nil;
    if ([value isKindOfClass:[NSNumber class]]) {
        decNum = [NSDecimalNumber decimalNumberWithDecimal:[((NSNumber *)value) decimalValue]];
    } else if ([value isKindOfClass:[NSString class]]) {
        decNum = [NSDecimalNumber decimalNumberWithString:value];
        NSDecimal dec = decNum.decimalValue;
        if (dec._length == 0 && dec._isNegative) {
            decNum = nil; // NaN
        }
    } else if ([value isKindOfClass:[NSDecimalNumber class]]) {
        decNum = value;
    }
    
    return decNum;
}

#pragma mark -  get String
- (NSString*)getStringWithKeys:(NSArray<NSString*>*)keys {
    NSString *key = [self hlj_d_getAvaiableKeys:keys];
    return [self getString:key];
}

- (NSString*)getStringWithKeyPaths:(NSArray<NSString*>*)keyPaths {
    NSString *keyPath = [self hlj_d_getAvaiableKeyPaths:keyPaths];
    return [self getString:keyPath isKeyPath:YES defaultValue:nil];
}

- (NSString*)getString:(NSString*)key {
    return [self getString:key defaultValue:nil];
}

- (NSString*)getString:(NSString*)key defaultValue:(NSString*)defaultValue{
    return [self getString:key isKeyPath:NO defaultValue:defaultValue];
}

- (NSString*)getString:(NSString*)key isKeyPath:(BOOL)isKeyPath defaultValue:(NSString*)defaultValue{
    id v = [self hlj_d_getValueFromKey:key isKeyPath:isKeyPath];
    if([v isKindOfClass:[NSString class]]) {
        return v;
    } else if([v isKindOfClass:[NSNumber class]]) {
        return [v stringValue];
    }
    return defaultValue;
}

#pragma mark -  get bool
- (BOOL)getBOOL:(NSString*)key {
    return [self getBOOL:key isKeyPath:NO];
}

- (BOOL)getBOOLWithKeys:(NSArray<NSString *> *)keys {
    NSString *key = [self hlj_d_getAvaiableKeys:keys];
    return [self getBOOL:key];
}

- (BOOL)getBOOLWithKeyPaths:(NSArray<NSString *> *)keys {
    NSString *key = [self hlj_d_getAvaiableKeyPaths:keys];
    return [self getBOOL:key isKeyPath:YES];
}

- (BOOL)getBOOL:(NSString*)key isKeyPath:(BOOL)isKeyPath {
    BOOL res = NO;
    id v = [self hlj_d_getValueFromKey:key isKeyPath:isKeyPath];
    if([v isKindOfClass:[NSNumber class]]) {
        res = [v boolValue];
    }

    if([v isKindOfClass:[NSString class]]) {
        res = [v boolValue];
    }
    return res;
}

#pragma mark -  get color
- (UIColor*)getColor:(NSString*)key {
    NSString *colorStr = [self getString:key];
    if(colorStr.length == 7) {
        NSString *rStr = [colorStr substringWithRange:NSMakeRange(1, 2)];
        int red = (int)strtoul([rStr UTF8String], 0, 16);
        NSString *gStr = [colorStr substringWithRange:NSMakeRange(3, 2)];
        int green = (int)strtoul([gStr UTF8String], 0, 16);
        NSString *bStr = [colorStr substringWithRange:NSMakeRange(5, 2)];
        int blue = (int)strtoul([bStr UTF8String], 0, 16);
        return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1];
    }
    return nil;
}

#pragma mark -  get dictionary
- (NSDictionary*)getDictionary:(NSString*)key {
    return [self getDictionary:key isKeyPath:NO];
}

- (NSDictionary *)getDictionaryWithKeys:(NSArray<NSString *> *)keys {
    NSString *key = [self hlj_d_getAvaiableKeys:keys];
    return [self getDictionary:key];
}

- (NSDictionary *)getDictionaryWithKeyPaths:(NSArray<NSString *> *)keys {
    NSString *key = [self hlj_d_getAvaiableKeyPaths:keys];
    return [self getDictionary:key isKeyPath:YES];
}

- (NSDictionary*)getDictionary:(NSString*)key isKeyPath:(BOOL)isKeyPath {
    id v = [self hlj_d_getValueFromKey:key isKeyPath:isKeyPath];
    if([v isKindOfClass:[NSDictionary class]])
        return v;
    return nil;
}

#pragma mark -  getArray
- (NSArray*)getArray:(NSString*)key {
    return [self getArray:key isKeyPath:NO];
}

- (NSArray *)getArrayWithKeys:(NSArray<NSString *> *)keys {
    NSString *key = [self hlj_d_getAvaiableKeys:keys];
    return [self getArray:key];
}

- (NSArray *)getArrayWithKeyPaths:(NSArray<NSString *> *)keys {
    NSString *key = [self hlj_d_getAvaiableKeyPaths:keys];
    return [self getArray:key isKeyPath:YES];
}

- (NSArray*)getArray:(NSString*)key isKeyPath:(BOOL)isKeyPath {
    id v = [self hlj_d_getValueFromKey:key isKeyPath:isKeyPath];
    if([v isKindOfClass:[NSArray class]])
        return v;
    return nil;
}

#pragma mark - help
- (id)hlj_d_getValueFromKey:(NSString *)key isKeyPath:(BOOL)isKeyPath {
    if (isKeyPath) {
        return [self valueForKeyPath:key];
    } else {
        return [self objectForKey:key];
    }
}

- (NSString *)hlj_d_getAvaiableKeys:(NSArray<NSString*> *)keys {
    for (NSString *key in keys) {
        if ([self objectForKey:key]) {
            return key;
        }
    }
    return nil;
}

- (NSString *)hlj_d_getAvaiableKeyPaths:(NSArray<NSString*> *)keys {
    for (NSString *keyPath in keys) {
        if ([self valueForKeyPath:keyPath]) {
            return keyPath;
        }
    }
    return nil;
}


@end
