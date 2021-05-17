#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    int counter = 0;
    for (NSUInteger i = 0; i < array.count; i++) {
        for (NSUInteger j = i + 1; j < array.count; j++) {
            if(number.intValue == array[j].intValue - array[i].intValue){
                counter++;
            }
        }
    }
    return counter;
}

@end
