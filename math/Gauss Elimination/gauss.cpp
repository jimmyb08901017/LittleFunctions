// Gauss Elimination - Wiki Version
// https://zh.wikipedia.org/wiki/%E9%AB%98%E6%96%AF%E6%B6%88%E5%8E%BB%E6%B3%95

#include <iostream>
#include <cmath>
#include <vector>
using namespace std;

void print_matrix( vector<vector<double>> matrix){
    for(int i=0; i<matrix.size(); i++){
        for(int j=0; j<matrix[i].size(); j++){
            cout << matrix[i][j] << " ";
        }
        cout << endl;
    }
    cout << "---------------------" << endl;
}

int main()
{
    int N;
    cin >> N;

    // Matrix Initialization
    vector<vector<double>> matrix (N, vector<double> (N+1, 0));
    

    // input of matrix
    for(int row=0; row<N; row++){
        for(int column=0; column<N+1; column++){
            cin >> matrix[row][column];
        }
    }

    print_matrix(matrix);
    // main algorithm
    int i=0, j=0; // i in row, j in column
    while( i < N && j < N+1)
    {
        int max_c=0;
        for(int k=i; k<N; k++){
            if (abs(matrix[i][k]) > abs(matrix[i][max_c])){
                max_c = k;
            }
        }

        if(matrix[i][max_c] == 0) {
            print_matrix(matrix);
            j ++; 
            continue;
        }
        // swap column i & max_c
        vector<double> temp_column (N, 0);
        for(int k=0; k<N; k++){
            temp_column[k] = matrix[k][max_c];
        }
        for(int k=0; k<N; k++){
            matrix[k][max_c] = matrix[k][i];
        }
        for(int k=0; k<N; k++){
            matrix[k][i] = temp_column[k];
        }

        // coefficient -> 1
        double div = matrix[i][j];
        for (int u=j; u<N+1; u++){
            matrix[i][u] /= div;
        }

        // subtract -> 0
        for(int u=i+1; u<N; u++){
            if(matrix[u][j] == 0) continue;

            double mul_coeff;
            mul_coeff = matrix[u][j];
            for(int k=j; k<N+1; k++){
                matrix[u][k] -= mul_coeff * matrix[i][k];
            }
        }

        i ++;
        j ++;
        print_matrix(matrix);
    }

    // subtract -> 0 reverse
    for(int row=N-2; row>=0; row--){
        int column;
        column = row + 1; // origin row
        for(int u=row; u>=0; u--){
            if(matrix[u][column] == 0) continue;
            double mul_coeff;
            mul_coeff = matrix[u][column];
            for(int k=row; k<N+1; k++){
                matrix[u][k] -= mul_coeff * matrix[column][k];
            }
        }
        print_matrix(matrix);
    }
        


    print_matrix(matrix);
    return 0;
}

