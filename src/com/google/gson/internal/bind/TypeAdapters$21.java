package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

final class TypeAdapters$21
  implements TypeAdapterFactory
{
  TypeAdapters$21(Class paramClass, TypeAdapter paramTypeAdapter) {}
  
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    if (paramTypeToken.getRawType() == a) {
      return b;
    }
    return null;
  }
  
  public final String toString()
  {
    return "Factory[type=" + a.getName() + ",adapter=" + b + "]";
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */