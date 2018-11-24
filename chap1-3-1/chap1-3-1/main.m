#import <Foundation/Foundation.h>

// 関数もCと同じ通りに書いて問題なし
void Expression(bool compare){
    // Bool型の注意 Objective-C ではYES or NOを使う
    // Yes を %d に入れると 1 になる
    NSLog(@"YESの値は \"%d\" です", compare);
    
    // 評価は yes = 1, no = 0
    NSLog(@"論理式 1<3 の評価は \"%d\" です", 1<3);
    
    return;
}

int main(int argc, const char * argv[]) {
    // @autoreleasepool ：「自動解放プールの生成」
    // このブロック内で登録されたインスタンス（メモリ上のデータ）は終了時に解放される
    @autoreleasepool {
        
        int num = 1;
        bool compare_bool = YES;
        
        NSLog(@"Hello, World!");
        NSLog(@"num = %d", num);
        
        // Expression : 評価式の意味
        Expression(compare_bool);
        
    }
    return 0;
}

