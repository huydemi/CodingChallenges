import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;
import java.util.Arrays;

public class Solution {
    
    public static int lonelyInteger(int[] a) {
        int n = a.length;
        // sort input array ascending
        Arrays.sort(a);
        // find lonely item
        for (int i = 0; i < n; ) {
            if (i + 1 == n) {
                return a[i];
            } else if (a[i] - a[i+1] != 0) {
                return a[i];
            }
            i += 2;
        }
        return -1;
    }
    
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int a[] = new int[n];
        for(int a_i=0; a_i < n; a_i++){
            a[a_i] = in.nextInt();
        }
        System.out.println(lonelyInteger(a));
    }
}
