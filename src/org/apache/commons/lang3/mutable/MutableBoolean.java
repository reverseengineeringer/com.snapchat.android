package org.apache.commons.lang3.mutable;

import java.io.Serializable;

public class MutableBoolean
  implements Serializable, Comparable<MutableBoolean>, Mutable<Boolean>
{
  private static final long serialVersionUID = -4830728138360036487L;
  private boolean value;
  
  public MutableBoolean() {}
  
  public MutableBoolean(Boolean paramBoolean)
  {
    value = paramBoolean.booleanValue();
  }
  
  public MutableBoolean(boolean paramBoolean)
  {
    value = paramBoolean;
  }
  
  public boolean booleanValue()
  {
    return value;
  }
  
  public int compareTo(MutableBoolean paramMutableBoolean)
  {
    boolean bool = value;
    if (value == bool) {
      return 0;
    }
    if (value) {
      return 1;
    }
    return -1;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof MutableBoolean))
    {
      bool1 = bool2;
      if (value == ((MutableBoolean)paramObject).booleanValue()) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public Boolean getValue()
  {
    return Boolean.valueOf(value);
  }
  
  public int hashCode()
  {
    if (value) {
      return Boolean.TRUE.hashCode();
    }
    return Boolean.FALSE.hashCode();
  }
  
  public boolean isFalse()
  {
    return !value;
  }
  
  public boolean isTrue()
  {
    return value == true;
  }
  
  public void setFalse()
  {
    value = false;
  }
  
  public void setTrue()
  {
    value = true;
  }
  
  public void setValue(Boolean paramBoolean)
  {
    value = paramBoolean.booleanValue();
  }
  
  public void setValue(boolean paramBoolean)
  {
    value = paramBoolean;
  }
  
  public Boolean toBoolean()
  {
    return Boolean.valueOf(booleanValue());
  }
  
  public String toString()
  {
    return String.valueOf(value);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.mutable.MutableBoolean
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */