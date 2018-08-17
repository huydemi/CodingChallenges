import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {
    public static char[] alphabet = "abcdefghijklmnopqrstuvwxyz".toCharArray();
    
    public static int numberNeeded(String first, String second) {
        int counter = 0;
        
        for (char c: alphabet) {
            counter += Math.abs(countChar(first, c) - countChar(second, c));
        }
        
        return counter;
    }
    
    private static int countChar(String s, char c) {
        int counter = 0;
        
        for (int i=0; i<s.length(); i++) {
            if( s.charAt(i) == c ) {
                counter++;
            }
        }
        
        return counter;
    }
    
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        String a = in.next();
        String b = in.next();
        System.out.println(numberNeeded(a, b));
    }
}
