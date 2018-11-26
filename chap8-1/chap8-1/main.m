// 構造体の練習

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"構造体やるよー\n");
        
        // "struct Person" が "構造体の型名"
        // "struct" は必須
        struct Person_sample{
            float height;
            float weight;
            int birth_year;
            int birth_month;
            int birth_day;
        };
        
        // "typedef"を用いて、型名を別の型名に変更
        // "struct Person_sample" → "Person_sample" 短くなりました
        typedef struct Person_sample Person_sample;
        
        
        // 上記の２つの処理を１つにまとめたもの
        typedef struct Person{
            float height;
            float weight;
            int birth_year;
            int birth_month;
            int birth_day;
        } Person;
        
        // 構造体Person型を使用する
        Person human_a;
        
        // 構造体内のメンバ変数に値を格納する
        human_a.height = 170;
        
        
        
        
    }
    return 0;
}
