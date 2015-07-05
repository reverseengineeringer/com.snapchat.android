package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import java.sql.Timestamp;
import java.util.Date;

final class TypeAdapters$15
  implements TypeAdapterFactory
{
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    if (paramTypeToken.getRawType() != Timestamp.class) {
      return null;
    }
    new TypeAdapter() {};
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */