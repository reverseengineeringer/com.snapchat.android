package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.ObjectConstructor;
import es;
import java.lang.reflect.Type;
import java.util.Collection;

final class CollectionTypeAdapterFactory$a<E>
  extends TypeAdapter<Collection<E>>
{
  private final TypeAdapter<E> a;
  private final ObjectConstructor<? extends Collection<E>> b;
  
  public CollectionTypeAdapterFactory$a(Gson paramGson, Type paramType, TypeAdapter<E> paramTypeAdapter, ObjectConstructor<? extends Collection<E>> paramObjectConstructor)
  {
    a = new es(paramGson, paramTypeAdapter, paramType);
    b = paramObjectConstructor;
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.CollectionTypeAdapterFactory.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */