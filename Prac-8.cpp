#include<bits/stdc++.h>

using namespace std;

int main()
{
    int n,i,k,flag=0;
    char vari[10],typ[10],b[10],c;
    cout<<"Number of variables:";
    cin>>n;

    for(i=0;i<n;i++)
    {
        int t;

        cout<<"Var"<<i<<": ";
        cin>>t;
        vari[i]=t;

        cout<<"type of var"<<i<<": ";
        cin>>t;
        typ[i]=t;

        if(typ[i]=='f')
            flag=1;
    }
    cout<<"Enter the Expression ending with #:";
    i=0;
    getchar();
    while((c=getchar())!='#')
    {
        b[i]=c;
        i++;
    }

    k=i;
    for(i=0;i<k;i++)
    {
        if(b[i]=='/')
        {
            flag=1;
            break;
        }
    }

    for(i=0;i<n;i++)
    {
        if(b[0]==vari[i])
        {
            if(flag==1)
            {
                if(typ[i]=='f')
                {
                    cout<<"The data-type is correct"<<endl;
                    break;
                }
                else
                {
                    cout<<vari[i]<<" must be a float type..!"<<endl;
                    break;
                }
            }
            else
            {
                cout<<"Data-type is correct"<<endl;
                break;
            }
        }
    }
    return 0;
}
