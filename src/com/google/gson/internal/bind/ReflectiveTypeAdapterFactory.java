package com.google.gson.internal.bind;

import com.google.gson.FieldNamingStrategy;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal..Gson.Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Primitives;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import es;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public final class ReflectiveTypeAdapterFactory
  implements TypeAdapterFactory
{
  private final ConstructorConstructor a;
  private final FieldNamingStrategy b;
  private final Excluder c;
  
  public ReflectiveTypeAdapterFactory(ConstructorConstructor paramConstructorConstructor, FieldNamingStrategy paramFieldNamingStrategy, Excluder paramExcluder)
  {
    a = paramConstructorConstructor;
    b = paramFieldNamingStrategy;
    c = paramExcluder;
  }
  
  private Map<String, a> a(final Gson paramGson, TypeToken<?> paramTypeToken, Class<?> paramClass)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    if (paramClass.isInterface()) {
      return localLinkedHashMap;
    }
    Type localType = paramTypeToken.getType();
    while (paramClass != Object.class)
    {
      Field[] arrayOfField = paramClass.getDeclaredFields();
      int j = arrayOfField.length;
      int i = 0;
      while (i < j)
      {
        final Field localField = arrayOfField[i];
        boolean bool1 = excludeField(localField, true);
        boolean bool2 = excludeField(localField, false);
        if ((bool1) || (bool2))
        {
          localField.setAccessible(true);
          final Object localObject2 = .Gson.Types.resolve(paramTypeToken.getType(), paramClass, localField.getGenericType());
          Object localObject1 = (SerializedName)localField.getAnnotation(SerializedName.class);
          if (localObject1 == null) {}
          for (localObject1 = b.translateName(localField);; localObject1 = ((SerializedName)localObject1).value())
          {
            localObject2 = TypeToken.get((Type)localObject2);
            localObject1 = new a((String)localObject1, bool1, bool2)
            {
              final TypeAdapter<?> a = paramGson.getAdapter(localObject2);
              
              final void a(JsonReader paramAnonymousJsonReader, Object paramAnonymousObject)
              {
                paramAnonymousJsonReader = a.read(paramAnonymousJsonReader);
                if ((paramAnonymousJsonReader != null) || (!e)) {
                  localField.set(paramAnonymousObject, paramAnonymousJsonReader);
                }
              }
              
              final void a(JsonWriter paramAnonymousJsonWriter, Object paramAnonymousObject)
              {
                paramAnonymousObject = localField.get(paramAnonymousObject);
                new es(paramGson, a, localObject2.getType()).write(paramAnonymousJsonWriter, paramAnonymousObject);
              }
            };
            localObject1 = (a)localLinkedHashMap.put(g, localObject1);
            if (localObject1 == null) {
              break;
            }
            throw new IllegalArgumentException(localType + " declares multiple JSON fields named " + g);
          }
        }
        i += 1;
      }
      paramTypeToken = TypeToken.get(.Gson.Types.resolve(paramTypeToken.getType(), paramClass, paramClass.getGenericSuperclass()));
      paramClass = paramTypeToken.getRawType();
    }
    return localLinkedHashMap;
  }
  
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    Class localClass = paramTypeToken.getRawType();
    if (!Object.class.isAssignableFrom(localClass)) {
      return null;
    }
    return new Adapter(a.get(paramTypeToken), a(paramGson, paramTypeToken, localClass), (byte)0);
  }
  
  public final boolean excludeField(Field paramField, boolean paramBoolean)
  {
    return (!c.excludeClass(paramField.getType(), paramBoolean)) && (!c.excludeField(paramField, paramBoolean));
  }
  
  public static final class Adapter<T>
    extends TypeAdapter<T>
  {
    private final ObjectConstructor<T> a;
    private final Map<String, ReflectiveTypeAdapterFactory.a> b;
    
    private Adapter(ObjectConstructor<T> paramObjectConstructor, Map<String, ReflectiveTypeAdapterFactory.a> paramMap)
    {
      a = paramObjectConstructor;
      b = paramMap;
    }
    
    public final T read(JsonReader paramJsonReader)
    {
      if (paramJsonReader.peek() == JsonToken.NULL)
      {
        paramJsonReader.nextNull();
        return null;
      }
      Object localObject1 = a.construct();
      try
      {
        paramJsonReader.beginObject();
        for (;;)
        {
          if (!paramJsonReader.hasNext()) {
            break label103;
          }
          localObject2 = paramJsonReader.nextName();
          localObject2 = (ReflectiveTypeAdapterFactory.a)b.get(localObject2);
          if ((localObject2 != null) && (i)) {
            break;
          }
          paramJsonReader.skipValue();
        }
      }
      catch (IllegalStateException paramJsonReader)
      {
        for (;;)
        {
          Object localObject2;
          throw new JsonSyntaxException(paramJsonReader);
          ((ReflectiveTypeAdapterFactory.a)localObject2).a(paramJsonReader, localObject1);
        }
      }
      catch (IllegalAccessException paramJsonReader)
      {
        throw new AssertionError(paramJsonReader);
      }
      label103:
      paramJsonReader.endObject();
      return (T)localObject1;
    }
    
    public final void write(JsonWriter paramJsonWriter, T paramT)
    {
      if (paramT == null)
      {
        paramJsonWriter.nullValue();
        return;
      }
      paramJsonWriter.beginObject();
      try
      {
        Iterator localIterator = b.values().iterator();
        while (localIterator.hasNext())
        {
          ReflectiveTypeAdapterFactory.a locala = (ReflectiveTypeAdapterFactory.a)localIterator.next();
          if (h)
          {
            paramJsonWriter.name(g);
            locala.a(paramJsonWriter, paramT);
          }
        }
        paramJsonWriter.endObject();
      }
      catch (IllegalAccessException paramJsonWriter)
      {
        throw new AssertionError();
      }
    }
  }
  
  static abstract class a
  {
    final String g;
    final boolean h;
    final boolean i;
    
    protected a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
    {
      g = paramString;
      h = paramBoolean1;
      i = paramBoolean2;
    }
    
    abstract void a(JsonReader paramJsonReader, Object paramObject);
    
    abstract void a(JsonWriter paramJsonWriter, Object paramObject);
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.ReflectiveTypeAdapterFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */