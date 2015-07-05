package org.apache.commons.lang3.mutable;

public class MutableFloat
  extends Number
  implements Comparable<MutableFloat>, Mutable<Number>
{
  private static final long serialVersionUID = 5787169186L;
  private float value;
  
  public MutableFloat() {}
  
  public MutableFloat(float paramFloat)
  {
    value = paramFloat;
  }
  
  public MutableFloat(Number paramNumber)
  {
    value = paramNumber.floatValue();
  }
  
  public MutableFloat(String paramString)
  {
    value = Float.parseFloat(paramString);
  }
  
  public void add(float paramFloat)
  {
    value += paramFloat;
  }
  
  public void add(Number paramNumber)
  {
    value += paramNumber.floatValue();
  }
  
  public int compareTo(MutableFloat paramMutableFloat)
  {
    float f = value;
    return Float.compare(value, f);
  }
  
  public void decrement()
  {
    value -= 1.0F;
  }
  
  public double doubleValue()
  {
    return value;
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof MutableFloat)) && (Float.floatToIntBits(value) == Float.floatToIntBits(value));
  }
  
  public float floatValue()
  {
    return value;
  }
  
  public Float getValue()
  {
    return Float.valueOf(value);
  }
  
  public int hashCode()
  {
    return Float.floatToIntBits(value);
  }
  
  public void increment()
  {
    value += 1.0F;
  }
  
  public int intValue()
  {
    return (int)value;
  }
  
  public boolean isInfinite()
  {
    return Float.isInfinite(value);
  }
  
  public boolean isNaN()
  {
    return Float.isNaN(value);
  }
  
  public long longValue()
  {
    return value;
  }
  
  public void setValue(float paramFloat)
  {
    value = paramFloat;
  }
  
  public void setValue(Number paramNumber)
  {
    value = paramNumber.floatValue();
  }
  
  public void subtract(float paramFloat)
  {
    value -= paramFloat;
  }
  
  public void subtract(Number paramNumber)
  {
    value -= paramNumber.floatValue();
  }
  
  public Float toFloat()
  {
    return Float.valueOf(floatValue());
  }
  
  public String toString()
  {
    return String.valueOf(value);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.mutable.MutableFloat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */