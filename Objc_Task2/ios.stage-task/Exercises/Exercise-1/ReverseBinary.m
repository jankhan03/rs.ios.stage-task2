#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
    NSInteger result = 0;
    for (NSInteger index = 0; index < 8; index++) {
        if (n % 2) {
            result += pow(2, 7 - index);
        }
        n = n / 2;
    }
    return result;
}
