package org.apache.commons.lang3.reflect;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

final class TypeUtils$GenericArrayTypeImpl
  implements GenericArrayType
{
  private final Type componentType;
  
  private TypeUtils$GenericArrayTypeImpl(Type paramType)
  {
    componentType = paramType;
  }
  
  public final boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof GenericArrayType)) && (TypeUtils.access$100(this, (GenericArrayType)paramObject)));
  }
  
  public final Type getGenericComponentType()
  {
    return componentType;
  }
  
  public final int hashCode()
  {
    return componentType.hashCode() | 0x430;
  }
  
  public final String toString()
  {
    return TypeUtils.toString(this);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.reflect.TypeUtils.GenericArrayTypeImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */