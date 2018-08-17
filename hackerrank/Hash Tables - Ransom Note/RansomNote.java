import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int m = in.nextInt();
        int n = in.nextInt();
        String magazine[] = new String[m];
        for(int magazine_i=0; magazine_i < m; magazine_i++){
            magazine[magazine_i] = in.next();
        }
        String ransom[] = new String[n];
        for(int ransom_i=0; ransom_i < n; ransom_i++){
            ransom[ransom_i] = in.next();
        }
        
        System.out.println(ransomNote(magazine, ransom) ? "Yes" : "No");
    }
    
    public static boolean ransomNote(String[] magazine, String[] ransom) {
        Hashtable<String, Integer> mHash = hashMe(magazine);
        Hashtable<String, Integer> rHash = hashMe(ransom);
        
        Iterator<String> itr = rHash.keySet().iterator();
        String key;
        while (itr.hasNext()) {
            key = itr.next();
            // check magazine contains key
            if (!mHash.containsKey(key)) {
                return false;
            } else {
                // check have enough number of word
                if (mHash.get(key) < rHash.get(key)) {
                    return false;
                }
            }
        }
        
        return true;
    }
    
    private static Hashtable<String, Integer> hashMe(String[] s) {
        Hashtable<String, Integer> hash = new Hashtable();

        for (String item: s) {
            if (hash.containsKey(item)) {
                hash.put(item, hash.get(item) + 1);
            } else {
                hash.put(item, 1);
            }
        }
        
        return hash;
    }
}
