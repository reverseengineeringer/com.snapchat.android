package org.apache.commons.lang3;

import java.io.Serializable;
import java.util.Comparator;

public final class Range<T>
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private final Comparator<T> comparator;
  private transient int hashCode;
  private final T maximum;
  private final T minimum;
  private transient String toString;
  
  private Range(T paramT1, T paramT2, Comparator<T> paramComparator)
  {
    if ((paramT1 == null) || (paramT2 == null)) {
      throw new IllegalArgumentException("Elements in a range must not be null: element1=" + paramT1 + ", element2=" + paramT2);
    }
    if (paramComparator == null) {}
    for (comparator = ComparableComparator.INSTANCE; comparator.compare(paramT1, paramT2) <= 0; comparator = paramComparator)
    {
      minimum = paramT1;
      maximum = paramT2;
      return;
    }
    minimum = paramT2;
    maximum = paramT1;
  }
  
  public static <T extends Comparable<T>> Range<T> between(T paramT1, T paramT2)
  {
    return between(paramT1, paramT2, null);
  }
  
  public static <T> Range<T> between(T paramT1, T paramT2, Comparator<T> paramComparator)
  {
    return new Range(paramT1, paramT2, paramComparator);
  }
  
  public static <T extends Comparable<T>> Range<T> is(T paramT)
  {
    return between(paramT, paramT, null);
  }
  
  public static <T> Range<T> is(T paramT, Comparator<T> paramComparator)
  {
    return between(paramT, paramT, paramComparator);
  }
  
  public final boolean contains(T paramT)
  {
    if (paramT == null) {}
    while ((comparator.compare(paramT, minimum) < 0) || (comparator.compare(paramT, maximum) > 0)) {
      return false;
    }
    return true;
  }
  
  public final boolean containsRange(Range<T> paramRange)
  {
    if (paramRange == null) {}
    while ((!contains(minimum)) || (!contains(maximum))) {
      return false;
    }
    return true;
  }
  
  public final int elementCompareTo(T paramT)
  {
    if (paramT == null) {
      throw new NullPointerException("Element is null");
    }
    if (isAfter(paramT)) {
      return -1;
    }
    if (isBefore(paramT)) {
      return 1;
    }
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if ((paramObject == null) || (paramObject.getClass() != getClass())) {
        return false;
      }
      paramObject = (Range)paramObject;
    } while ((minimum.equals(minimum)) && (maximum.equals(maximum)));
    return false;
  }
  
  public final Comparator<T> getComparator()
  {
    return comparator;
  }
  
  public final T getMaximum()
  {
    return (T)maximum;
  }
  
  public final T getMinimum()
  {
    return (T)minimum;
  }
  
  public final int hashCode()
  {
    int i = hashCode;
    if (hashCode == 0)
    {
      i = ((getClass().hashCode() + 629) * 37 + minimum.hashCode()) * 37 + maximum.hashCode();
      hashCode = i;
    }
    return i;
  }
  
  public final Range<T> intersectionWith(Range<T> paramRange)
  {
    if (!isOverlappedBy(paramRange)) {
      throw new IllegalArgumentException(String.format("Cannot calculate intersection with non-overlapping range %s", new Object[] { paramRange }));
    }
    if (equals(paramRange)) {
      return this;
    }
    Object localObject;
    if (getComparator().compare(minimum, minimum) < 0)
    {
      localObject = minimum;
      if (getComparator().compare(maximum, maximum) >= 0) {
        break label107;
      }
    }
    label107:
    for (paramRange = maximum;; paramRange = maximum)
    {
      return between(localObject, paramRange, getComparator());
      localObject = minimum;
      break;
    }
  }
  
  public final boolean isAfter(T paramT)
  {
    if (paramT == null) {}
    while (comparator.compare(paramT, minimum) >= 0) {
      return false;
    }
    return true;
  }
  
  public final boolean isAfterRange(Range<T> paramRange)
  {
    if (paramRange == null) {
      return false;
    }
    return isAfter(maximum);
  }
  
  public final boolean isBefore(T paramT)
  {
    if (paramT == null) {}
    while (comparator.compare(paramT, maximum) <= 0) {
      return false;
    }
    return true;
  }
  
  public final boolean isBeforeRange(Range<T> paramRange)
  {
    if (paramRange == null) {
      return false;
    }
    return isBefore(minimum);
  }
  
  public final boolean isEndedBy(T paramT)
  {
    if (paramT == null) {}
    while (comparator.compare(paramT, maximum) != 0) {
      return false;
    }
    return true;
  }
  
  public final boolean isNaturalOrdering()
  {
    return comparator == ComparableComparator.INSTANCE;
  }
  
  public final boolean isOverlappedBy(Range<T> paramRange)
  {
    if (paramRange == null) {}
    while ((!paramRange.contains(minimum)) && (!paramRange.contains(maximum)) && (!contains(minimum))) {
      return false;
    }
    return true;
  }
  
  public final boolean isStartedBy(T paramT)
  {
    if (paramT == null) {}
    while (comparator.compare(paramT, minimum) != 0) {
      return false;
    }
    return true;
  }
  
  public final String toString()
  {
    String str = toString;
    Object localObject = str;
    if (str == null)
    {
      localObject = new StringBuilder(32);
      ((StringBuilder)localObject).append('[');
      ((StringBuilder)localObject).append(minimum);
      ((StringBuilder)localObject).append("..");
      ((StringBuilder)localObject).append(maximum);
      ((StringBuilder)localObject).append(']');
      localObject = ((StringBuilder)localObject).toString();
      toString = ((String)localObject);
    }
    return (String)localObject;
  }
  
  public final String toString(String paramString)
  {
    return String.format(paramString, new Object[] { minimum, maximum, comparator });
  }
  
  static enum ComparableComparator
    implements Comparator
  {
    INSTANCE;
    
    private ComparableComparator() {}
    
    public final int compare(Object paramObject1, Object paramObject2)
    {
      return ((Comparable)paramObject1).compareTo(paramObject2);
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.Range
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */