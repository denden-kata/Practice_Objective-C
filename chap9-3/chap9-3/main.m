// カプセル化
#import <Foundation/Foundation.h>

@interface Triangle : NSObject {
@private        // アロー演算子でアクセスできなくなる
    int width;
    int height;
}
// セッターを１行で書く。インスタンス変数と同じ名前
@property int width, height;
@end

// Triangle クラスにおいてのメソッド
@implementation Triangle

/*
// セッター：インスタンス変数に値をセットするメソッド
-(void) SetTriangleDetails : (int)a : (int)b {
    width  = a;
    height = b;
    return;
}
// ゲッター：インスタンス変数の値を取得するメソッド
-(int) GetWidth {
    return width;
}
-(int) GetHeight{
    return height;
}
*/

// ゲッターを１行で書く
@synthesize width, height;
@end


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Triangle_a というインスタンスを生成
        Triangle * Triangle_a = [[Triangle alloc] init];
        
        // セッターの処理
        // set + "インスタンス変数" (インスタンス変数の先頭は大文字になる)
        [Triangle_a setWidth:6];
        // "インスタンス" + "インスタンス変数" = "値" 処理は上と同じ。省略型
        Triangle_a.height = 4;
        
        /*
        // メソッドを利用して値を格納した
        [Triangle_a SetTriangleDetails :6 :4];

        // メソッドで値を取得しなおした
        NSLog(@"Triangle_a width = %d, height = %d",
              [Triangle_a GetWidth],[Triangle_a GetHeight]);
        */
        
        // ゲッターメソッドによって値を取得したものを表示
        NSLog(@" Triangle_a width = %d, height = %d", [Triangle_a width], Triangle_a.height);
    }
    return 0;
}
