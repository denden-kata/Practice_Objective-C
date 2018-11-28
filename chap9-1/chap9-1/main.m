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


@implementation Triangle
// Triangleクラスにおいて、メソッドを作成
- (float) SumTriangle {        // SumTriangle : メソッド名
    float sum_triangle = (float) width * (float) height / 2;
    return sum_triangle;
}
// 底辺を高さを２倍にするメソッド
- (void) SizeDouble {
    width *= 2;
    height *= 2;
    return;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // インスタンスを生成。宣言時は "*" をつける
        // alloc : 実態を生成, init : 値の初期化
        Triangle *triangle_a = [[Triangle alloc] init];
        
        // インスタンス変数に値を格納。アロー演算子を用いる
        triangle_a -> width = 6;
        triangle_a -> height = 4;
        
        NSLog(@"triangle_a : width = %d, height = %d",
              triangle_a -> width, triangle_a -> height);
        
        // メッセージ式 ["レシーバ" "メッセージ"]
        // レシーバ : どのインスタンスに対して, メッセージ : どの命令を実行するか
        // ”triangle_a インスタンス” に対して "SumTriangle メソッド" を実行
        NSLog(@"sum_triangle = %lf", [triangle_a SumTriangle]);
        
        [triangle_a SizeDouble];     // SizeDouble メソッドを実行
        NSLog(@"sum_triangle (width*2 & height*2) = %lf",  [triangle_a SumTriangle]);
        
    }
    return 0;
}