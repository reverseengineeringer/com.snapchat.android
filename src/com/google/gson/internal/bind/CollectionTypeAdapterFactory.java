package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal..Gson.Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.reflect.TypeToken;
import es;
import java.lang.reflect.Type;
import java.util.Collection;

public final class CollectionTypeAdapterFactory
  implements TypeAdapterFactory
{
  private final ConstructorConstructor a;
  
  public CollectionTypeAdapterFactory(ConstructorConstructor paramConstructorConstructor)
  {
    a = paramConstructorConstructor;
  }
  
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    Type localType = paramTypeToken.getType();
    Class localClass = paramTypeToken.getRawType();
    if (!Collection.class.isAssignableFrom(localClass)) {
      return null;
    }
    localType = .Gson.Types.getCollectionElementType(localType, localClass);
    return new a(paramGson, localType, paramGson.getAdapter(TypeToken.get(localType)), a.get(paramTypeToken));
  }
  
  static final class a<E>
    extends TypeAdapter<Collection<E>>
  {
    private final TypeAdapter<E> a;
    private final ObjectConstructor<? extends Collection<E>> b;
    
    public a(Gson paramGson, Type paramType, TypeAdapter<E> paramTypeAdapter, ObjectConstructor<? extends Collection<E>> paramObjectConstructor)
    {
      a = new es(paramGson, paramTypeAdapter, paramType);
      b = paramObjectConstructor;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.CollectionTypeAdapterFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */