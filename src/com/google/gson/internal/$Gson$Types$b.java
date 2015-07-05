package com.google.gson.internal;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

final class $Gson$Types$b
  implements Serializable, ParameterizedType
{
  private final Type a;
  private final Type b;
  private final Type[] c;
  
  public $Gson$Types$b(Type paramType1, Type paramType2, Type... paramVarArgs)
  {
    boolean bool1;
    if ((paramType2 instanceof Class))
    {
      Class localClass = (Class)paramType2;
      if ((paramType1 != null) || (localClass.getEnclosingClass() == null))
      {
        bool1 = true;
        .Gson.Preconditions.checkArgument(bool1);
        bool1 = bool2;
        if (paramType1 != null)
        {
          if (localClass.getEnclosingClass() == null) {
            break label161;
          }
          bool1 = bool2;
        }
        label63:
        .Gson.Preconditions.checkArgument(bool1);
      }
    }
    else
    {
      if (paramType1 != null) {
        break label167;
      }
    }
    label161:
    label167:
    for (paramType1 = null;; paramType1 = .Gson.Types.canonicalize(paramType1))
    {
      a = paramType1;
      b = .Gson.Types.canonicalize(paramType2);
      c = ((Type[])paramVarArgs.clone());
      while (i < c.length)
      {
        .Gson.Preconditions.checkNotNull(c[i]);
        .Gson.Types.a(c[i]);
        c[i] = .Gson.Types.canonicalize(c[i]);
        i += 1;
      }
      bool1 = false;
      break;
      bool1 = false;
      break label63;
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof ParameterizedType)) && (.Gson.Types.equals(this, (ParameterizedType)paramObject));
  }
  
  public final Type[] getActualTypeArguments()
  {
    return (Type[])c.clone();
  }
  
  public final Type getOwnerType()
  {
    return a;
  }
  
  public final Type getRawType()
  {
    return b;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(c) ^ b.hashCode() ^ .Gson.Types.a(a);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder((c.length + 1) * 30);
    localStringBuilder.append(.Gson.Types.typeToString(b));
    if (c.length == 0) {
      return localStringBuilder.toString();
    }
    localStringBuilder.append("<").append(.Gson.Types.typeToString(c[0]));
    int i = 1;
    while (i < c.length)
    {
      localStringBuilder.append(", ").append(.Gson.Types.typeToString(c[i]));
      i += 1;
    }
    return ">";
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal..Gson.Types.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */