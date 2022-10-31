import numpy as np

N = 4
L = np.full((N,N,N),-1)
L[0] = [[-1, 0, -1, -1],
     [4, -1, 0, -1],
     [5, -1, -1, 0],
     [5, -1, -1, -1]]

# testcase 2
# N = 2
# L[0] = [[4,4],
#         [8,8]]

for num in range(1,N):
    for i in range(N):
        for j in range(N):
            cands = []
            for k in range(N):
                if L[0][i][k]!= -1 and L[num-1][k][j]!=-1:
                    cands.append(L[0][i][k]+L[num-1][k][j])
                else:
                    cands.append(-1)
                
            L[num][i][j] = max(-1, max(cands))
    print("-------------------")
    print(f"L({num+1}) :")
    print(L[num])
                
# calculate iteration bound
l1 = [L[m][i][i]/(m+1) for i in range(N) for m in range(N)]
print("-------------------")
print("Candidates =", l1)

T_bound = max(l1)
print("-------------------")
print("T_bound =", T_bound)                

