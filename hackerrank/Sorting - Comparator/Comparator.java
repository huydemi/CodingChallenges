// Write your Checker class here
class Checker implements Comparator<Player> {
    public int compare(Player p, Player p1) {
        int compareScore = p1.score - p.score;
        if (compareScore != 0) { return compareScore; }
        
        return p.name.compareTo(p1.name);
    }
}
