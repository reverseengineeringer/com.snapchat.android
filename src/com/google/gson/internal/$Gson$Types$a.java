package com.google.gson.internal;

import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

final class $Gson$Types$a
  implements Serializable, GenericArrayType
{
  private final Type a;
  
  public $Gson$Types$a(Type paramType)
  {
    a = .Gson.Types.canonicalize(paramType);
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof GenericArrayType)) && (.Gson.Types.equals(this, (GenericArrayType)paramObject));
  }
  
  public final Type getGenericComponentType()
  {
    return a;
  }
  
  public final int hashCode()
  {
    return a.hashCode();
  }
  
  public final String toString()
  {
    return .Gson.Types.typeToString(a) + "[]";
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal..Gson.Types.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */