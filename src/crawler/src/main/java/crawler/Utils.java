package crawler;

import javax.json.Json;
import javax.json.JsonStructure;
import javax.json.JsonValue;
import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public class Utils {
    public static int HTTP_SLEEP = 4000;
    public static int HTTP_TIMEOUT = 3000;

    // C-style printf
    public static void println(String msg, Object... args) {
        System.out.printf(msg + '\n', args);
    }

    public static String trim(String s, int width) {
        if (s.length() > width)
            return s.substring(0, width - 1);
        else
            return s;
    }

    public static void forEachLineAsJson(InputStream inputStream, Consumer<JsonValue> action) throws UnsupportedEncodingException {
        BufferedReader teamFileReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        teamFileReader.lines().forEachOrdered(line -> {
            String trimmedLine = line.trim();
            if (trimmedLine.length() == 0) {
                return;
            }

            JsonValue jsonValue = Json.createReader(new StringReader(trimmedLine)).read();
            action.accept(jsonValue);
        });
    }

    public static void forEachLineAsJson(InputStream inputStream, BiConsumer<Integer, JsonValue> action) throws UnsupportedEncodingException {
        // Little trick to pass the integer into the closure. It is initialized to `0`.
        final int[] currentLineNumber = new int[]{0};

        BufferedReader teamFileReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        teamFileReader.lines().forEachOrdered(line -> {
            ++currentLineNumber[0];
            String trimmedLine = line.trim();

            if (trimmedLine.length() == 0) {
                return;
            }

            JsonStructure jsonValue = Json.createReader(new StringReader(trimmedLine)).read();
            action.accept(currentLineNumber[0], jsonValue);
        });
    }

    public static String trim(String s) {
        return s != null ? s.trim() : null;
    }

    public class Range<DataT, RangeV extends Comparable<RangeV>> {
        public final DataT data;
        public final RangeV from;
        public final RangeV to;

        public Range(DataT data, RangeV from, RangeV to) {
            this.data = data;
            this.from = from;
            this.to = to;
        }
    }

    /**
     * Computes overlaps in an ordered iterable of ranges. The order is assumed to be the ascending lexicographic order
     * of the ranges.
     *
     * @param ranges   A sorted iterable.
     * @param <DataT>  Data associated with the range.
     * @param <RangeV> The value type which defines the range.
     * @return The list of overlaps in the iterable.
     */
    public static <DataT, RangeV extends Comparable<RangeV>> List<Range<DataT, RangeV>> calculateOverlaps(Iterable<Range<DataT, RangeV>> ranges) {
        ArrayList<Range<DataT, RangeV>> overlaps = new ArrayList<>();

        ArrayList<Range<DataT, RangeV>> rangeStack = new ArrayList<>();

        for (Range<DataT, RangeV> range : ranges) {
            if (rangeStack.isEmpty()) {
                rangeStack.add(range);
            } else {
                for (int i = rangeStack.size() - 1; i >= 0; --i) {
                    Range<DataT, RangeV> lastRange = rangeStack.get(i);
                    if (lastRange.to.compareTo(range.from) >= 0) {
                        // Overlap
                    } else {
                        // No overlap. Since the ranges are sorted there are no other ranges which could overlap.
                        overlaps.add(lastRange);

                    }
                }
            }
        }

        return overlaps;
    }
}
