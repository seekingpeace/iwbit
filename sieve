vector<int> Solution::sieve(int A) {
    int i;
    bool b[A+2];
    for(i=0;i<A+2;i++)b[i]=1;
    b[0]=0;b[1]=0;
    vector <int> res;
    for( i=2;i<sqrt(A)+1;i++){
        if(b[i]==1){
            for(int j=2;i*j<A;j++){
                b[i*j]=0;
            }
        }
    }
    for( i=0;i<A;i++){
        if(b[i]==1) res.push_back(i);
    }
    return res;
}
