import java.util.Iterator;
import java.util.SortedSet;

public final class atx
{
  public static <T extends Comparable<T>> int a(SortedSet<T> paramSortedSet1, SortedSet<T> paramSortedSet2, boolean paramBoolean)
  {
    int j = 0;
    int i = j;
    if (paramSortedSet1 != null)
    {
      i = j;
      if (paramSortedSet2 != null)
      {
        i = j;
        if (!paramSortedSet1.isEmpty())
        {
          if (!paramSortedSet2.isEmpty()) {
            break label43;
          }
          i = j;
        }
      }
    }
    return i;
    label43:
    Iterator localIterator1 = paramSortedSet1.iterator();
    Iterator localIterator2 = paramSortedSet2.iterator();
    paramSortedSet2 = (Comparable)localIterator1.next();
    paramSortedSet1 = (Comparable)localIterator2.next();
    i = 0;
    for (;;)
    {
      j = paramSortedSet2.compareTo(paramSortedSet1);
      if (j == 0)
      {
        if (paramBoolean) {
          return 1;
        }
        j = i + 1;
        i = j;
        if (!localIterator1.hasNext()) {
          break;
        }
        i = j;
        if (!localIterator2.hasNext()) {
          break;
        }
        paramSortedSet2 = (Comparable)localIterator1.next();
        paramSortedSet1 = (Comparable)localIterator2.next();
        i = j;
        continue;
      }
      if (j < 0)
      {
        if (!localIterator1.hasNext()) {
          return i;
        }
        paramSortedSet2 = (Comparable)localIterator1.next();
      }
      else
      {
        if (!localIterator2.hasNext()) {
          return i;
        }
        paramSortedSet1 = (Comparable)localIterator2.next();
      }
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     atx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */