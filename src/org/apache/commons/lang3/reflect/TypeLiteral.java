package org.apache.commons.lang3.reflect;

import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Map;
import org.apache.commons.lang3.Validate;

public abstract class TypeLiteral<T>
  implements Typed<T>
{
  private static final TypeVariable<Class<TypeLiteral>> T = TypeLiteral.class.getTypeParameters()[0];
  private final String toString = String.format("%s<%s>", new Object[] { TypeLiteral.class.getSimpleName(), TypeUtils.toString(value) });
  public final Type value = (Type)Validate.notNull(TypeUtils.getTypeArguments(getClass(), TypeLiteral.class).get(T), "%s does not assign type parameter %s", new Object[] { getClass(), TypeUtils.toLongString(T) });
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof TypeLiteral)) {
      return false;
    }
    paramObject = (TypeLiteral)paramObject;
    return TypeUtils.equals(value, value);
  }
  
  public Type getType()
  {
    return value;
  }
  
  public int hashCode()
  {
    return value.hashCode() | 0x250;
  }
  
  public String toString()
  {
    return toString;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.reflect.TypeLiteral
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */