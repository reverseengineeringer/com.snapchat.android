package org.apache.commons.lang3.mutable;

public class MutableInt
  extends Number
  implements Comparable<MutableInt>, Mutable<Number>
{
  private static final long serialVersionUID = 512176391864L;
  private int value;
  
  public MutableInt() {}
  
  public MutableInt(int paramInt)
  {
    value = paramInt;
  }
  
  public MutableInt(Number paramNumber)
  {
    value = paramNumber.intValue();
  }
  
  public MutableInt(String paramString)
  {
    value = Integer.parseInt(paramString);
  }
  
  public void add(int paramInt)
  {
    value += paramInt;
  }
  
  public void add(Number paramNumber)
  {
    value += paramNumber.intValue();
  }
  
  public int compareTo(MutableInt paramMutableInt)
  {
    int i = value;
    if (value < i) {
      return -1;
    }
    if (value == i) {
      return 0;
    }
    return 1;
  }
  
  public void decrement()
  {
    value -= 1;
  }
  
  public double doubleValue()
  {
    return value;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof MutableInt))
    {
      bool1 = bool2;
      if (value == ((MutableInt)paramObject).intValue()) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public float floatValue()
  {
    return value;
  }
  
  public Integer getValue()
  {
    return Integer.valueOf(value);
  }
  
  public int hashCode()
  {
    return value;
  }
  
  public void increment()
  {
    value += 1;
  }
  
  public int intValue()
  {
    return value;
  }
  
  public long longValue()
  {
    return value;
  }
  
  public void setValue(int paramInt)
  {
    value = paramInt;
  }
  
  public void setValue(Number paramNumber)
  {
    value = paramNumber.intValue();
  }
  
  public void subtract(int paramInt)
  {
    value -= paramInt;
  }
  
  public void subtract(Number paramNumber)
  {
    value -= paramNumber.intValue();
  }
  
  public Integer toInteger()
  {
    return Integer.valueOf(intValue());
  }
  
  public String toString()
  {
    return String.valueOf(value);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.mutable.MutableInt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */