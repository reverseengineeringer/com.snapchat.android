package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.ObjectConstructor;
import es;
import java.lang.reflect.Type;
import java.util.Map;

final class MapTypeAdapterFactory$a<K, V>
  extends TypeAdapter<Map<K, V>>
{
  private final TypeAdapter<K> b;
  private final TypeAdapter<V> c;
  private final ObjectConstructor<? extends Map<K, V>> d;
  
  public MapTypeAdapterFactory$a(Gson paramGson, Type paramType1, TypeAdapter<K> paramTypeAdapter, Type paramType2, TypeAdapter<V> paramTypeAdapter1, ObjectConstructor<? extends Map<K, V>> paramObjectConstructor)
  {
    b = new es(paramType1, paramType2, paramTypeAdapter);
    c = new es(paramType1, paramObjectConstructor, paramTypeAdapter1);
    ObjectConstructor localObjectConstructor;
    d = localObjectConstructor;
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.MapTypeAdapterFactory.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */