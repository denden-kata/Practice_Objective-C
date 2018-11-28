// 列挙体
#import <Foundation/Foundation.h>

// 列挙体の型名は "enum" から始める
// "enum Season 型" が列挙体の型名
// 0, 1, 2, 3 ... と定数が格納される
// 列挙体の例数は変更可能
// しかし列挙体を使うメリットがなくなり、バグの温床になりやすいので非推奨
typedef enum Season{SPRING, SUMMER, AUTUMN, WINTER} Season;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"SPRING = %d", SPRING);
        NSLog(@"SUMMER = %d", SUMMER);
        
        // 列挙体で宣言した定数を、Season型の変数に格納できる
        Season sn = AUTUMN;
        NSLog(@"AUTUMN = %d", sn);
        
    }
    return 0;
}
