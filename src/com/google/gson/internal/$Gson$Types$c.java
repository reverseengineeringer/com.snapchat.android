package com.google.gson.internal;

import java.io.Serializable;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

final class $Gson$Types$c
  implements Serializable, WildcardType
{
  private final Type a;
  private final Type b;
  
  public $Gson$Types$c(Type[] paramArrayOfType1, Type[] paramArrayOfType2)
  {
    if (paramArrayOfType2.length <= 1)
    {
      bool1 = true;
      .Gson.Preconditions.checkArgument(bool1);
      if (paramArrayOfType1.length != 1) {
        break label87;
      }
      bool1 = true;
      label27:
      .Gson.Preconditions.checkArgument(bool1);
      if (paramArrayOfType2.length != 1) {
        break label97;
      }
      .Gson.Preconditions.checkNotNull(paramArrayOfType2[0]);
      .Gson.Types.a(paramArrayOfType2[0]);
      if (paramArrayOfType1[0] != Object.class) {
        break label92;
      }
    }
    label87:
    label92:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      .Gson.Preconditions.checkArgument(bool1);
      b = .Gson.Types.canonicalize(paramArrayOfType2[0]);
      a = Object.class;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label27;
    }
    label97:
    .Gson.Preconditions.checkNotNull(paramArrayOfType1[0]);
    .Gson.Types.a(paramArrayOfType1[0]);
    b = null;
    a = .Gson.Types.canonicalize(paramArrayOfType1[0]);
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof WildcardType)) && (.Gson.Types.equals(this, (WildcardType)paramObject));
  }
  
  public final Type[] getLowerBounds()
  {
    if (b != null) {
      return new Type[] { b };
    }
    return .Gson.Types.a;
  }
  
  public final Type[] getUpperBounds()
  {
    return new Type[] { a };
  }
  
  public final int hashCode()
  {
    if (b != null) {}
    for (int i = b.hashCode() + 31;; i = 1) {
      return i ^ a.hashCode() + 31;
    }
  }
  
  public final String toString()
  {
    if (b != null) {
      return "? super " + .Gson.Types.typeToString(b);
    }
    if (a == Object.class) {
      return "?";
    }
    return "? extends " + .Gson.Types.typeToString(a);
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal..Gson.Types.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */