#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    NSMutableArray *arrayWithNumbers = [[NSMutableArray alloc] init];
    NSMutableArray *arrayWithStrings = [[NSMutableArray alloc] init];
    
        for (NSObject* subArr in array) {
            if ([subArr isKindOfClass: NSArray.class]) {
                for (NSObject* obj in (NSArray*)subArr)
                {
                    if ([obj isKindOfClass: NSNumber.class]) {
                        [arrayWithNumbers addObject:obj];
                        continue;
                    }
                    
                    if ([obj isKindOfClass: NSString.class]) {
                        [arrayWithStrings addObject:obj];
                    }
                }
            }
            else return @[];
        }
    
        if (arrayWithStrings.count == 0) {
            [arrayWithNumbers sortUsingDescriptors:
             [NSArray arrayWithObject:[NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES]]];
            return arrayWithNumbers;

        }
        if (arrayWithNumbers.count == 0) {
            [arrayWithStrings sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
            return arrayWithStrings;
        }
        [arrayWithNumbers sortUsingDescriptors:
         [NSArray arrayWithObject:[NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES]]];
        [arrayWithStrings sortUsingDescriptors:
         [NSArray arrayWithObject:[NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO selector:@selector(localizedCaseInsensitiveCompare:)]]];
        return [NSArray arrayWithObjects:arrayWithNumbers, arrayWithStrings, nil];

    
}

@end
