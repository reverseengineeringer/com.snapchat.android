package org.apache.commons.lang3.reflect;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import org.apache.commons.lang3.ObjectUtils;

final class TypeUtils$WildcardTypeImpl
  implements WildcardType
{
  private static final Type[] EMPTY_BOUNDS = new Type[0];
  private final Type[] lowerBounds;
  private final Type[] upperBounds;
  
  private TypeUtils$WildcardTypeImpl(Type[] paramArrayOfType1, Type[] paramArrayOfType2)
  {
    upperBounds = ((Type[])ObjectUtils.defaultIfNull(paramArrayOfType1, EMPTY_BOUNDS));
    lowerBounds = ((Type[])ObjectUtils.defaultIfNull(paramArrayOfType2, EMPTY_BOUNDS));
  }
  
  public final boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof WildcardType)) && (TypeUtils.access$300(this, (WildcardType)paramObject)));
  }
  
  public final Type[] getLowerBounds()
  {
    return (Type[])lowerBounds.clone();
  }
  
  public final Type[] getUpperBounds()
  {
    return (Type[])upperBounds.clone();
  }
  
  public final int hashCode()
  {
    return (Arrays.hashCode(upperBounds) | 0x4900) << 8 | Arrays.hashCode(lowerBounds);
  }
  
  public final String toString()
  {
    return TypeUtils.toString(this);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.reflect.TypeUtils.WildcardTypeImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */