// 構造体の練習
#import <Foundation/Foundation.h>

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

// 上記の２つの処理を１つにまとめたもの。構造体を宣言した後に名前を変更
typedef struct birthdate{
    int year;
    int month;
    int day;
}birthdate;

typedef struct Person{
    float height;
    float weight;
    birthdate birthdate;      // 構造体の入れ子
} Person;


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"構造体やるよー\n");
        
        // 構造体Person型を使用する
        Person human_a = {142, 34, {2012, 3, 28}};
        
        // 構造体内のメンバ変数を指定して値を格納する場合
        // human_a.height = 142;
        
        NSLog(@"aの身長 %f cm", human_a.height);
        NSLog(@"aの体重 %f kg", human_a.weight);
        NSLog(@"aの生年月日 %d年%d月%d日", human_a.birthdate.year, human_a.birthdate.month, human_a.birthdate.day);
    }
    return 0;
}
