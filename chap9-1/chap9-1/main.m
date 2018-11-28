// クラスについて

#import <Foundation/Foundation.h>

// Triangle : クラス
// NSObject : スーパークラス
@interface Triangle : NSObject {
@public
    // インスタンス変数
    int width;
    int height;
}
@end

// あとで
@implementation Triangle
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // インスタンスを生成。宣言時は "*" をつける
        Triangle *triangle_a = [[Triangle alloc] init];
        
        // インスタンス変数に値を格納。アロー演算子を用いる
        triangle_a -> width = 6;
        triangle_a -> height = 4;
        
        NSLog(@"triangle_a : width = %d, height = %d",
              triangle_a -> width, triangle_a -> height);
        
    }
    return 0;
}
