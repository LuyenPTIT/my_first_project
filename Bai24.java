/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package baitapso1;

import java.util.Scanner;

/**
 *
 * @author acer
 */
public class Bai24 {
    public static void main(String[] args) {
        nhap();
        
    }
    static void nhap(){
        int[][] a;
        int n, m;
        Scanner in = new Scanner(System.in);
        m = in.nextInt();
        n = in.nextInt();
        a = new int[m][n];
        for(int i = 0; i < m; i++){
            for(int j = 0; j < n; j++){
                a[i][j] = in.nextInt();
            }
        }
        //display(a);
        chuyenVi(a);
        
    }
    static void chuyenVi(int[][] a){
        int[][] b = new int[a[0].length][a.length];
        
        for(int i = 0; i < a.length; i++){
            for(int j = 0; j < a[i].length; j++){
                b[j][i] = a[i][j];
            }
        }
        display(b);
    }
    static void display(int[][] b){
        for(int[] x:b){
            for(int y:x) System.out.print(y+ " ");
            System.out.println("");
        }
    }
}
