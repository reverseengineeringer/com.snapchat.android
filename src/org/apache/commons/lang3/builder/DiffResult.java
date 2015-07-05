package org.apache.commons.lang3.builder;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class DiffResult
  implements Iterable<Diff<?>>
{
  private static final String DIFFERS_STRING = "differs from";
  public static final String OBJECTS_SAME_STRING = "";
  private final List<Diff<?>> diffs;
  private final Object lhs;
  private final Object rhs;
  private final ToStringStyle style;
  
  DiffResult(Object paramObject1, Object paramObject2, List<Diff<?>> paramList, ToStringStyle paramToStringStyle)
  {
    if (paramObject1 == null) {
      throw new IllegalArgumentException("Left hand object cannot be null");
    }
    if (paramObject2 == null) {
      throw new IllegalArgumentException("Right hand object cannot be null");
    }
    if (paramList == null) {
      throw new IllegalArgumentException("List of differences cannot be null");
    }
    diffs = paramList;
    lhs = paramObject1;
    rhs = paramObject2;
    if (paramToStringStyle == null)
    {
      style = ToStringStyle.DEFAULT_STYLE;
      return;
    }
    style = paramToStringStyle;
  }
  
  public List<Diff<?>> getDiffs()
  {
    return Collections.unmodifiableList(diffs);
  }
  
  public int getNumberOfDiffs()
  {
    return diffs.size();
  }
  
  public ToStringStyle getToStringStyle()
  {
    return style;
  }
  
  public Iterator<Diff<?>> iterator()
  {
    return diffs.iterator();
  }
  
  public String toString()
  {
    return toString(style);
  }
  
  public String toString(ToStringStyle paramToStringStyle)
  {
    if (diffs.size() == 0) {
      return "";
    }
    ToStringBuilder localToStringBuilder = new ToStringBuilder(lhs, paramToStringStyle);
    paramToStringStyle = new ToStringBuilder(rhs, paramToStringStyle);
    Iterator localIterator = diffs.iterator();
    while (localIterator.hasNext())
    {
      Diff localDiff = (Diff)localIterator.next();
      localToStringBuilder.append(localDiff.getFieldName(), localDiff.getLeft());
      paramToStringStyle.append(localDiff.getFieldName(), localDiff.getRight());
    }
    return String.format("%s %s %s", new Object[] { localToStringBuilder.build(), "differs from", paramToStringStyle.build() });
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.DiffResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */