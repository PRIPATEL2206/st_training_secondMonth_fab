import java.util.stream.Stream;

public class StreemOfIntAndString {
    public static void main(String[] args) {
        Stream stream = Stream.of(1, 2, 3, 4, 5, 6, 7);
        stream
                .forEach(System.out::println);
        ;
        Stream stream2 = Stream.of("1", "2", "3", "4", "5", "6", "7");
        stream2
                .forEach(System.out::println);
        ;
    }

}