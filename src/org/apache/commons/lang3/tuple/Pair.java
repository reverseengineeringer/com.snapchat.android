package org.apache.commons.lang3.tuple;

import java.io.Serializable;
import java.util.Map.Entry;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.builder.CompareToBuilder;

public abstract class Pair<L, R>
  implements Serializable, Comparable<Pair<L, R>>, Map.Entry<L, R>
{
  private static final long serialVersionUID = 4954918890077093841L;
  
  public static <L, R> Pair<L, R> of(L paramL, R paramR)
  {
    return new ImmutablePair(paramL, paramR);
  }
  
  public int compareTo(Pair<L, R> paramPair)
  {
    return new CompareToBuilder().append(getLeft(), paramPair.getLeft()).append(getRight(), paramPair.getRight()).toComparison();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof Map.Entry)) {
        break;
      }
      paramObject = (Map.Entry)paramObject;
    } while ((ObjectUtils.equals(getKey(), ((Map.Entry)paramObject).getKey())) && (ObjectUtils.equals(getValue(), ((Map.Entry)paramObject).getValue())));
    return false;
    return false;
  }
  
  public final L getKey()
  {
    return (L)getLeft();
  }
  
  public abstract L getLeft();
  
  public abstract R getRight();
  
  public R getValue()
  {
    return (R)getRight();
  }
  
  public int hashCode()
  {
    int j = 0;
    int i;
    if (getKey() == null)
    {
      i = 0;
      if (getValue() != null) {
        break label33;
      }
    }
    for (;;)
    {
      return i ^ j;
      i = getKey().hashCode();
      break;
      label33:
      j = getValue().hashCode();
    }
  }
  
  public String toString()
  {
    return "(" + getLeft() + ',' + getRight() + ')';
  }
  
  public String toString(String paramString)
  {
    return String.format(paramString, new Object[] { getLeft(), getRight() });
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.tuple.Pair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */