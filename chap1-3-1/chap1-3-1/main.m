#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {          // メモリ管理を行う、ひとまず書け
        
        int num = 1;
        bool compare_bool = YES;
        
        NSLog(@"Hello, World!");
        NSLog(@"num = %d", num);
        
        // 評価は yes = 1, no = 0
        NSLog(@"論理式 1<3 の評価は \"%d\" です", 1<3);
        // Bool型の注意 Objective-C ではYES or NOを使う
        // Yes を %d に入れると 1 になる
        NSLog(@"YESの値は \"%d\" です", compare_bool);
        
        
        
    }
    return 0;
}
