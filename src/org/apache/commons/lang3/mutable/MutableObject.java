package org.apache.commons.lang3.mutable;

import java.io.Serializable;

public class MutableObject<T>
  implements Serializable, Mutable<T>
{
  private static final long serialVersionUID = 86241875189L;
  private T value;
  
  public MutableObject() {}
  
  public MutableObject(T paramT)
  {
    value = paramT;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      return false;
      if (this == paramObject) {
        return true;
      }
    } while (getClass() != paramObject.getClass());
    paramObject = (MutableObject)paramObject;
    return value.equals(value);
  }
  
  public T getValue()
  {
    return (T)value;
  }
  
  public int hashCode()
  {
    if (value == null) {
      return 0;
    }
    return value.hashCode();
  }
  
  public void setValue(T paramT)
  {
    value = paramT;
  }
  
  public String toString()
  {
    if (value == null) {
      return "null";
    }
    return value.toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.mutable.MutableObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */