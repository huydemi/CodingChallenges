import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int p = in.nextInt();
        for(int a0 = 0; a0 < p; a0++){
            int n = in.nextInt();
            System.out.println(isPrime(n) ? "Prime" : "Not prime");
        }
    }
    
    public static boolean isPrime(int n) {       
        if (n < 2) { return false; }
        else if (n <= 3) { return true; }
        else if (n % 2 == 0 || n % 3 ==0) { return false; }
        else {
            // only odd factors need to be tested up to n^0.5
            for (int i = 3; i * i <= n; i += 2) {
                if (n % i == 0) {
                    return false;                            
                }
            }            
        }
        
        return true;
    }
    
}
