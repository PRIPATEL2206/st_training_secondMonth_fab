import java.util.stream.Stream;

public class lamdaInMap {
    public static void main(String[] args) {
        Stream stream = Stream.of("1", "2", "3", "4", "5", "6", "7").map(lamdaInMap::toIntPlusOne);
        stream.forEach(System.out::println);
    }

    public static int toIntPlusOne(String a) {
        return Integer.parseInt(a) + 1;
    }
}
