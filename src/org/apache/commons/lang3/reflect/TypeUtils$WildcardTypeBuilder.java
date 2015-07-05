package org.apache.commons.lang3.reflect;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import org.apache.commons.lang3.builder.Builder;

public class TypeUtils$WildcardTypeBuilder
  implements Builder<WildcardType>
{
  private Type[] lowerBounds;
  private Type[] upperBounds;
  
  public WildcardType build()
  {
    return new TypeUtils.WildcardTypeImpl(upperBounds, lowerBounds, null);
  }
  
  public WildcardTypeBuilder withLowerBounds(Type... paramVarArgs)
  {
    lowerBounds = paramVarArgs;
    return this;
  }
  
  public WildcardTypeBuilder withUpperBounds(Type... paramVarArgs)
  {
    upperBounds = paramVarArgs;
    return this;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.reflect.TypeUtils.WildcardTypeBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */