import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int k = in.nextInt();
        int a[] = new int[n];
        for(int a_i=0; a_i < n; a_i++){
            a[a_i] = in.nextInt();
        }
        leftRotation(a, k);
    }
    
    public static void leftRotation(int[] a, int k) {
        int[] newArray = new int[a.length];
        int j = 0;
        
        // copy right
        for(int i = k; i < a.length; i++) {
            newArray[j] = a[i];
            j++;
        }
        // copy left
        for(int i = 0; i < k; i++) {
            newArray[j] = a[i];
            j++;
        }
        // print
        for(int i: newArray) {
            System.out.print(i + " ");
        }
    }
}
