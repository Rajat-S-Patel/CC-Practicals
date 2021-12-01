#include<bits/stdc++.h>
#define FAST ios_base::sync_with_stdio(false);cin.tie();cout.tie();
#define FILE_READ_IN freopen("input.txt","r",stdin);
#define FILE_READ_OUT freopen("output.txt","w",stdout);
#define deb(x) cout<<#x<<":= "<<x<<"\n";
#define MOD 1000000007
#define amax(x,y) x=max(x,y);
#define amin(x,y) x=min(x,y);
using namespace std;
typedef long long ll;
typedef long double ld;
const int N=1e5;

void solve()
{
   // write your logic here   
    int n ; 
    cin >> n;
    int arr[n];
    for(int i=0;i<n;++i) {
        cin>>arr[i];
    }
    int curr;
    vector<int> ans;
    for(int i=0;i<n;){
        curr = arr[i];
        int j = i;
        while(j< n && curr == arr[j]){
            j++;
        }
        ans.push_back(curr);
        i=j;
    }
    cout << ans.size()<<"\n";
    for(int i:ans){
        cout << i <<" ";
    }
    cout<<"\n";
}
 
int main()
{
   FAST
   #ifndef ONLINE_JUDGE 
   FILE_READ_IN 
   FILE_READ_OUT 
   #endif
   int t=1;  
//    cin>>t;
   while (t--)
   {
      solve();
   }
   return 0;
}