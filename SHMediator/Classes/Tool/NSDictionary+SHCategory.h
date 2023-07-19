//
//  NSDictionary+SHCategory.h
//  IOSGmSDK
//
//  Created by ChenJie on 2023/7/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (SHCategory)

#pragma mark -  IntNumber
- (NSNumber*)getIntNumber:(NSString*)key;
/// 获取 Integer 型 NSNumber
/// @param filter YES：空字符串和只包含空格的字符串会返回 nil
- (NSNumber *)getIntNumber:(NSString *)key filterEmptyAndWhiteSpaceString:(BOOL)filter;
- (NSNumber *)getIntNumberWithKeys:(NSArray<NSString*>*)keys;
- (NSNumber *)getIntNumberWithKeyPaths:(NSArray<NSString*>*)keys;

#pragma mark -  FloatNumber
- (NSNumber*)getFloatNumber:(NSString*)key;
/// 获取 Float 型 NSNumber
/// @param filter YES：空字符串和只包含空格的字符串会返回 nil
- (NSNumber *)getFloatNumber:(NSString *)key filterEmptyAndWhiteSpaceString:(BOOL)filter;
- (NSNumber *)getFloatNumberWithKeys:(NSArray<NSString*>*)keys;
- (NSNumber *)getFloatNumberWithKeyPaths:(NSArray<NSString*>*)keys;

#pragma mark -  DoubleNumber
- (NSNumber *)getDoubleNumber:(NSString*)key;
/// 获取 Double 型 NSNumber
/// @param filter YES：空字符串和只包含空格的字符串会返回 nil
- (NSNumber *)getDoubleNumber:(NSString*)key filterEmptyAndWhiteSpaceString:(BOOL)filter;
- (NSNumber *)getDoubleNumberWithKeys:(NSArray<NSString*>*)keys;
- (NSNumber *)getDoubleNumberWithKeyPaths:(NSArray<NSString*>*)keys;
#pragma mark -  DecimalNumber
- (NSDecimalNumber *)getDecimalNumber:(NSString*)key;
- (NSDecimalNumber *)getDecimalNumberWithKeys:(NSArray<NSString *> *)keys;
- (NSDecimalNumber *)getDecimalNumberWithKeyPaths:(NSArray<NSString *> *)keys;

#pragma mark -  String
- (NSString *)getString:(NSString*)key;
- (NSString *)getString:(NSString*)key defaultValue:(NSString*)defaultValue;
- (NSString *)getStringWithKeys:(NSArray<NSString*>*)keys;
- (NSString *)getStringWithKeyPaths:(NSArray<NSString*>*)ketPaths;

#pragma mark -  BOOL
- (BOOL)getBOOL:(NSString*)key;
- (BOOL)getBOOLWithKeys:(NSArray<NSString*>*)keys;
- (BOOL)getBOOLWithKeyPaths:(NSArray<NSString*>*)keys;

#pragma mark -  Dictionary
- (NSDictionary *)getDictionary:(NSString*)key;
- (NSDictionary *)getDictionaryWithKeys:(NSArray<NSString*>*)keys;
- (NSDictionary *)getDictionaryWithKeyPaths:(NSArray<NSString*>*)keys;

#pragma mark -  Array
- (NSArray *)getArray:(NSString*)key;
- (NSArray *)getArrayWithKeys:(NSArray<NSString*>*)keys;
- (NSArray *)getArrayWithKeyPaths:(NSArray<NSString*>*)keys;

#pragma mark -  color
- (UIColor*)getColor:(NSString*)key;


@end

NS_ASSUME_NONNULL_END
