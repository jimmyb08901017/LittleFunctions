import sys

if __name__ == '__main__':
    if len(sys.argv) != 3:
        print("Wrong number of input argument!")
        exit(-1)
    m = int(sys.argv[1])
    n = int(sys.argv[2])
    
    # writeFile
    with open(f'm{m}n{n}.cnf', "w") as f:
        print("c", file=f)
        print(f'p cnf {m*n} {int(n*(n-1)*m/2) + int(m*(m-1)*n/2) + n}', file=f)
        # Pij: jth pigeon in ith hole
        
        # Each pigeon in a hole
        for i in range(m):
            for j in range(n):
                # | ( Pij)
                print(f'{j + i*n + 1} ', end='', file=f)
            print("0", file=f)
            
        # Additional constraint: no pigeon exist in 2 holes
        for k in range(0, n):
            for i in range(m-1):
                for j in range(i+1, m):
                    print(f'-{i + k*m + 1} -{j + k*m + 1} 0', file=f)
            
        # Each hole at most one pigeon
        for k in range(1, m+1):
            for i in range(n-1):
                for j in range(i+1, n):
                    print(f'-{i*m + k} -{j*m + k} 0', file=f)
                