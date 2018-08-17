import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {
    
    public static void main(String[] args) {
        Tries tries = new Tries();
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        for(int a0 = 0; a0 < n; a0++){
            String op = in.next();
            String contact = in.next();
            
            if (op.equals("add")) {
                tries.add(contact);
            } else if (op.equals("find")) {
                System.out.println(tries.find(contact));
            }
        }
    }
}

class Node {
    public HashMap<Character, Node> children = new HashMap<Character, Node>();
    private int timesTouched = 0;
    
    public int getTimesTouched() { return this.timesTouched; }
    public void increaseTouches() { this.timesTouched += 1; }
}

class Tries {
    Node root = new Node();
    Node current;
    
    public void add(String word) {
        current = root;
        for (char ch : word.toCharArray()) {
            if (current.children.get(ch) == null) {
                current.children.put(ch, new Node());
            }
            current = current.children.get(ch);
            current.increaseTouches();
        }
    }
    
    public int find(String word) {
        current = root;
        for (char ch : word.toCharArray()) {
            if (current.children.get(ch) == null) { return 0; }
            current = current.children.get(ch);
        }
        return current.getTimesTouched();
    }
}
