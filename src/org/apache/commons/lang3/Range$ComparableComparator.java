package org.apache.commons.lang3;

import java.util.Comparator;

 enum Range$ComparableComparator
  implements Comparator
{
  INSTANCE;
  
  private Range$ComparableComparator() {}
  
  public final int compare(Object paramObject1, Object paramObject2)
  {
    return ((Comparable)paramObject1).compareTo(paramObject2);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.Range.ComparableComparator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */