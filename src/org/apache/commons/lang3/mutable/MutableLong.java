package org.apache.commons.lang3.mutable;

public class MutableLong
  extends Number
  implements Comparable<MutableLong>, Mutable<Number>
{
  private static final long serialVersionUID = 62986528375L;
  private long value;
  
  public MutableLong() {}
  
  public MutableLong(long paramLong)
  {
    value = paramLong;
  }
  
  public MutableLong(Number paramNumber)
  {
    value = paramNumber.longValue();
  }
  
  public MutableLong(String paramString)
  {
    value = Long.parseLong(paramString);
  }
  
  public void add(long paramLong)
  {
    value += paramLong;
  }
  
  public void add(Number paramNumber)
  {
    value += paramNumber.longValue();
  }
  
  public int compareTo(MutableLong paramMutableLong)
  {
    long l = value;
    if (value < l) {
      return -1;
    }
    if (value == l) {
      return 0;
    }
    return 1;
  }
  
  public void decrement()
  {
    value -= 1L;
  }
  
  public double doubleValue()
  {
    return value;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof MutableLong))
    {
      bool1 = bool2;
      if (value == ((MutableLong)paramObject).longValue()) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public float floatValue()
  {
    return (float)value;
  }
  
  public Long getValue()
  {
    return Long.valueOf(value);
  }
  
  public int hashCode()
  {
    return (int)(value ^ value >>> 32);
  }
  
  public void increment()
  {
    value += 1L;
  }
  
  public int intValue()
  {
    return (int)value;
  }
  
  public long longValue()
  {
    return value;
  }
  
  public void setValue(long paramLong)
  {
    value = paramLong;
  }
  
  public void setValue(Number paramNumber)
  {
    value = paramNumber.longValue();
  }
  
  public void subtract(long paramLong)
  {
    value -= paramLong;
  }
  
  public void subtract(Number paramNumber)
  {
    value -= paramNumber.longValue();
  }
  
  public Long toLong()
  {
    return Long.valueOf(longValue());
  }
  
  public String toString()
  {
    return String.valueOf(value);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.mutable.MutableLong
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */