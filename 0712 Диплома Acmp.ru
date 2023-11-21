#include <iostream>
#include <cmath>
  
using namespace std;
  
#define ll unsigned long long
  
ll lb(ll w,ll h,ll n){
     
    ll left = 0;
    ll right = (ll)1e18;
     
    while(left < right){
         
        ll mid = (left+right)/2;
          
         
        ll first = mid/w;
        ll second = mid/h;
         
        if(n <= first*second){
            right = mid;
        } else {
            left = mid+1;
        }
    }
    return left;
}
  
int main()
{
    ll w,h,n;
    cin >> w >> h >> n;
    cout << lb(w,h,n);
     
    return 0;
}
