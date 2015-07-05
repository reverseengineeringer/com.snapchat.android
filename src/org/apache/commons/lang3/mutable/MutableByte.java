package org.apache.commons.lang3.mutable;

public class MutableByte
  extends Number
  implements Comparable<MutableByte>, Mutable<Number>
{
  private static final long serialVersionUID = -1585823265L;
  private byte value;
  
  public MutableByte() {}
  
  public MutableByte(byte paramByte)
  {
    value = paramByte;
  }
  
  public MutableByte(Number paramNumber)
  {
    value = paramNumber.byteValue();
  }
  
  public MutableByte(String paramString)
  {
    value = Byte.parseByte(paramString);
  }
  
  public void add(byte paramByte)
  {
    value = ((byte)(value + paramByte));
  }
  
  public void add(Number paramNumber)
  {
    value = ((byte)(value + paramNumber.byteValue()));
  }
  
  public byte byteValue()
  {
    return value;
  }
  
  public int compareTo(MutableByte paramMutableByte)
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
    value = ((byte)(value - 1));
  }
  
  public double doubleValue()
  {
    return value;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof MutableByte))
    {
      bool1 = bool2;
      if (value == ((MutableByte)paramObject).byteValue()) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public float floatValue()
  {
    return value;
  }
  
  public Byte getValue()
  {
    return Byte.valueOf(value);
  }
  
  public int hashCode()
  {
    return value;
  }
  
  public void increment()
  {
    value = ((byte)(value + 1));
  }
  
  public int intValue()
  {
    return value;
  }
  
  public long longValue()
  {
    return value;
  }
  
  public void setValue(byte paramByte)
  {
    value = paramByte;
  }
  
  public void setValue(Number paramNumber)
  {
    value = paramNumber.byteValue();
  }
  
  public void subtract(byte paramByte)
  {
    value = ((byte)(value - paramByte));
  }
  
  public void subtract(Number paramNumber)
  {
    value = ((byte)(value - paramNumber.byteValue()));
  }
  
  public Byte toByte()
  {
    return Byte.valueOf(byteValue());
  }
  
  public String toString()
  {
    return String.valueOf(value);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.mutable.MutableByte
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */