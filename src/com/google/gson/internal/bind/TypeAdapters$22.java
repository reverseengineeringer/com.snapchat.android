package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

final class TypeAdapters$22
  implements TypeAdapterFactory
{
  TypeAdapters$22(Class paramClass1, Class paramClass2, TypeAdapter paramTypeAdapter) {}
  
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    paramGson = paramTypeToken.getRawType();
    if ((paramGson == a) || (paramGson == b)) {
      return c;
    }
    return null;
  }
  
  public final String toString()
  {
    return "Factory[type=" + b.getName() + "+" + a.getName() + ",adapter=" + c + "]";
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.22
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */