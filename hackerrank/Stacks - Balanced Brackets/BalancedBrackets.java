import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {
    
    public static boolean isBalanced(String expression) {
        Stack<Character> st = new Stack<Character>();
        
        // quick check empty expression
        if (expression == "") {
            return true;
        }
        
        // quick check expression size
        if (expression.length() % 2 == 1) {
            return false;
        }
        
        // go through each char of expression
        for (int i = 0; i < expression.length(); i++) {
            char c = expression.charAt(i);
            if (isOpenBracket(c)) {
                st.push(c);
            } else {
                // check empty
                if (st.empty()) {
                    return false;
                } else {
                    // pop last item to compare
                    Character open = st.pop();
                    if (!isPairBracket(open, c)) {
                        return false;
                    }
                }
            }
        }
        
        // balance if st is empty
        if (st.empty()) {
            return true;
        } else {
            return false;
        }
    }
    
    private static boolean isOpenBracket(char c) {
        if (c == '{' || c == '(' || c == '[') {
            return true;
        } else {
            return false;
        }
    }
    
    private static boolean isPairBracket(char open, char end) {
        if (open == '{' && end == '}'
           || open == '(' && end == ')'
           || open == '[' && end == ']') {
            return true;
        } else {
            return false;
        }
    }
    
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int t = in.nextInt();
        for (int a0 = 0; a0 < t; a0++) {
            String expression = in.next();
            System.out.println( (isBalanced(expression)) ? "YES" : "NO" );
        }
    }
}
