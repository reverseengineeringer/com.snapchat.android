package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal..Gson.Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.reflect.TypeToken;
import ej;
import java.lang.reflect.Type;
import java.util.Map;

public final class MapTypeAdapterFactory
  implements TypeAdapterFactory
{
  private final ConstructorConstructor a;
  private final boolean b;
  
  public MapTypeAdapterFactory(ConstructorConstructor paramConstructorConstructor, boolean paramBoolean)
  {
    a = paramConstructorConstructor;
    b = paramBoolean;
  }
  
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    Object localObject = paramTypeToken.getType();
    if (!Map.class.isAssignableFrom(paramTypeToken.getRawType())) {
      return null;
    }
    Type[] arrayOfType = .Gson.Types.getMapKeyAndValueTypes((Type)localObject, .Gson.Types.getRawType((Type)localObject));
    localObject = arrayOfType[0];
    if ((localObject == Boolean.TYPE) || (localObject == Boolean.class)) {}
    for (localObject = TypeAdapters.BOOLEAN_AS_STRING;; localObject = paramGson.getAdapter(TypeToken.get((Type)localObject)))
    {
      TypeAdapter localTypeAdapter = paramGson.getAdapter(TypeToken.get(arrayOfType[1]));
      paramTypeToken = a.get(paramTypeToken);
      return new a(paramGson, arrayOfType[0], (TypeAdapter)localObject, arrayOfType[1], localTypeAdapter, paramTypeToken);
    }
  }
  
  final class a<K, V>
    extends TypeAdapter<Map<K, V>>
  {
    private final TypeAdapter<K> b;
    private final TypeAdapter<V> c;
    private final ObjectConstructor<? extends Map<K, V>> d;
    
    public a(Type paramType1, TypeAdapter<K> paramTypeAdapter, Type paramType2, TypeAdapter<V> paramTypeAdapter1, ObjectConstructor<? extends Map<K, V>> paramObjectConstructor)
    {
      b = new ej(paramType1, paramType2, paramTypeAdapter);
      c = new ej(paramType1, paramObjectConstructor, paramTypeAdapter1);
      ObjectConstructor localObjectConstructor;
      d = localObjectConstructor;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.MapTypeAdapterFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */