// 列挙体やるよー！

#import <Foundation/Foundation.h>

// 列挙体の型名は "enum" からhajimaru
// "enum Season 型" が列挙体の型名
// 0, 1, 2, 3 ... と定数が格納される
// ※ 列挙体には"定数"が入る。格納されている値は変更できない
typedef enum Season{SPRING, SUMMER, AUYUMN, WINTER} Season;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"SPRING = %d", SPRING);
        NSLog(@"SUMMER = %d", SUMMER);

    }
    return 0;
}
