package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

final class TypeAdapters$20
  implements TypeAdapterFactory
{
  TypeAdapters$20(TypeToken paramTypeToken, TypeAdapter paramTypeAdapter) {}
  
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    if (paramTypeToken.equals(a)) {
      return b;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */