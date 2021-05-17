#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    for (NSNumber *number in numbersArray) {
        if (number.intValue > 255) {
            NSString *str = @"The numbers in the input array can be in the range from 0 to 255.";
            return str;
        }
        if (number.intValue < 0) {
            NSString *str = @"Negative numbers are not valid for input.";
            return str;
        }
    }
    int е4 = 0;
    int e3 = 0;
    int e2 = 0;
    int e1 = 0;
    switch (numbersArray.count) {
        case 4:
            е4 = [(NSNumber*)numbersArray[3] intValue];
        case 3:
            e3 = [(NSNumber*)numbersArray[2] intValue];
        case 2:
            e2 = [(NSNumber*)numbersArray[1] intValue];
        case 1:
            e1 = [(NSNumber*)numbersArray[0] intValue];
            break;
        default:
            return @"";;
    }
    NSString* string = [NSString stringWithFormat:@"%d.%d.%d.%d", e1, e2, e3,е4];
    return string;
}

@end
