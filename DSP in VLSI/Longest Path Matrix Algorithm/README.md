For n-delay elements in the DFG
1. create nxn matrix L(1)   {-1 : no path}
2. lij(m+1) = max(-1, lik(1)+lkj(m)), k in [1,d]
3. repeat n times.
4. Iteration bound = max{lii(m)/m}