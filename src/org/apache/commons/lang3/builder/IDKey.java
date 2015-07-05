package org.apache.commons.lang3.builder;

final class IDKey
{
  private final int id;
  private final Object value;
  
  public IDKey(Object paramObject)
  {
    id = System.identityHashCode(paramObject);
    value = paramObject;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof IDKey)) {}
    do
    {
      return false;
      paramObject = (IDKey)paramObject;
    } while ((id != id) || (value != value));
    return true;
  }
  
  public final int hashCode()
  {
    return id;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.IDKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */