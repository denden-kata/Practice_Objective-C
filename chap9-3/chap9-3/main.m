// カプセル化
#import <Foundation/Foundation.h>

@interface Triangle : NSObject {
@private        // アロー演算子でアクセスできなくなる
    int width;
    int height;
}
@end

@implementation Triangle
// インスタンス変数に値をセットするメソッド
-(void) SetTriangleDetails : (int)a : (int)b {
    width  = a;
    height = b;
    return;
}

// インスタンス変数の値を取得するメソッド
-(int) GetWidth {
    return width;
}
-(int) GetHeight{
    return height;
}

@end

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Triangle_a というインスタンスを生成
        Triangle * Triangle_a = [[Triangle alloc] init];
        
        // まだ空なのでこの場合は両方"0"
        NSLog(@"Triangle_a width = %d, height = %d",
              [Triangle_a GetWidth],[Triangle_a GetHeight]);
        
        // メソッドを利用して値を格納した
        [Triangle_a SetTriangleDetails :6 :4];

        // メソッドで値を取得しなおした
        NSLog(@"Triangle_a width = %d, height = %d",
              [Triangle_a GetWidth],[Triangle_a GetHeight]);
        
    }
    return 0;
}
