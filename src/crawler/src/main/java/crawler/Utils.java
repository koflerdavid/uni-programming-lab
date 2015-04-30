package crawler;

import java.util.ArrayList;
import java.util.List;

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

    public class Range<DataT, RangeV extends Comparable<RangeV>>
    {
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
     * @param ranges A sorted iterable.
     * @param <DataT> Data associated with the range.
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
