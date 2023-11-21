#include <bits/stdc++.h>
#define int long long
using namespace std;
 
 
main() {
    int N, X, Y; cin >> N >> X >> Y;
    int left = 1;
    int right = 1e9;
    int mid;
    int ans = min(X, Y);
    N--;
    if(N==0){
        cout << ans << endl;
        return 0;
    }
    while(left < right){
            mid = (right+left)/2;
            if(mid/X + mid/Y >= N){
                right = mid;
 
            }else{
                 left = mid+1;
            }
    }
    cout << right + ans << endl;
 
}
