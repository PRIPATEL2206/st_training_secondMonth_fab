import java.util.stream.Stream;

public class MapCollectAndReduseInStreems {
    public static void main(String[] args) {
        Stream stream = Stream.of(1, 2, 3, 45, 6, 7, 8, 9, 0, 2, 3).map(String::valueOf);
        // System.out.println(stream.collect(Collectors.joining(" ", "Pre", "suf")));
        System.out.println(stream.reduce((s1, s2) -> (s1.equals(s2))));
    }
}
