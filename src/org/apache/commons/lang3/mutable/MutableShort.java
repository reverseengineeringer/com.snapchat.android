package org.apache.commons.lang3.mutable;

public class MutableShort
  extends Number
  implements Comparable<MutableShort>, Mutable<Number>
{
  private static final long serialVersionUID = -2135791679L;
  private short value;
  
  public MutableShort() {}
  
  public MutableShort(Number paramNumber)
  {
    value = paramNumber.shortValue();
  }
  
  public MutableShort(String paramString)
  {
    value = Short.parseShort(paramString);
  }
  
  public MutableShort(short paramShort)
  {
    value = paramShort;
  }
  
  public void add(Number paramNumber)
  {
    value = ((short)(value + paramNumber.shortValue()));
  }
  
  public void add(short paramShort)
  {
    value = ((short)(value + paramShort));
  }
  
  public int compareTo(MutableShort paramMutableShort)
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
    value = ((short)(value - 1));
  }
  
  public double doubleValue()
  {
    return value;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof MutableShort))
    {
      bool1 = bool2;
      if (value == ((MutableShort)paramObject).shortValue()) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public float floatValue()
  {
    return value;
  }
  
  public Short getValue()
  {
    return Short.valueOf(value);
  }
  
  public int hashCode()
  {
    return value;
  }
  
  public void increment()
  {
    value = ((short)(value + 1));
  }
  
  public int intValue()
  {
    return value;
  }
  
  public long longValue()
  {
    return value;
  }
  
  public void setValue(Number paramNumber)
  {
    value = paramNumber.shortValue();
  }
  
  public void setValue(short paramShort)
  {
    value = paramShort;
  }
  
  public short shortValue()
  {
    return value;
  }
  
  public void subtract(Number paramNumber)
  {
    value = ((short)(value - paramNumber.shortValue()));
  }
  
  public void subtract(short paramShort)
  {
    value = ((short)(value - paramShort));
  }
  
  public Short toShort()
  {
    return Short.valueOf(shortValue());
  }
  
  public String toString()
  {
    return String.valueOf(value);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.mutable.MutableShort
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */