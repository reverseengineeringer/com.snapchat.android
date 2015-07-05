package org.apache.commons.lang3.mutable;

public class MutableDouble
  extends Number
  implements Comparable<MutableDouble>, Mutable<Number>
{
  private static final long serialVersionUID = 1587163916L;
  private double value;
  
  public MutableDouble() {}
  
  public MutableDouble(double paramDouble)
  {
    value = paramDouble;
  }
  
  public MutableDouble(Number paramNumber)
  {
    value = paramNumber.doubleValue();
  }
  
  public MutableDouble(String paramString)
  {
    value = Double.parseDouble(paramString);
  }
  
  public void add(double paramDouble)
  {
    value += paramDouble;
  }
  
  public void add(Number paramNumber)
  {
    value += paramNumber.doubleValue();
  }
  
  public int compareTo(MutableDouble paramMutableDouble)
  {
    double d = value;
    return Double.compare(value, d);
  }
  
  public void decrement()
  {
    value -= 1.0D;
  }
  
  public double doubleValue()
  {
    return value;
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof MutableDouble)) && (Double.doubleToLongBits(value) == Double.doubleToLongBits(value));
  }
  
  public float floatValue()
  {
    return (float)value;
  }
  
  public Double getValue()
  {
    return Double.valueOf(value);
  }
  
  public int hashCode()
  {
    long l = Double.doubleToLongBits(value);
    return (int)(l ^ l >>> 32);
  }
  
  public void increment()
  {
    value += 1.0D;
  }
  
  public int intValue()
  {
    return (int)value;
  }
  
  public boolean isInfinite()
  {
    return Double.isInfinite(value);
  }
  
  public boolean isNaN()
  {
    return Double.isNaN(value);
  }
  
  public long longValue()
  {
    return value;
  }
  
  public void setValue(double paramDouble)
  {
    value = paramDouble;
  }
  
  public void setValue(Number paramNumber)
  {
    value = paramNumber.doubleValue();
  }
  
  public void subtract(double paramDouble)
  {
    value -= paramDouble;
  }
  
  public void subtract(Number paramNumber)
  {
    value -= paramNumber.doubleValue();
  }
  
  public Double toDouble()
  {
    return Double.valueOf(doubleValue());
  }
  
  public String toString()
  {
    return String.valueOf(value);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.mutable.MutableDouble
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */