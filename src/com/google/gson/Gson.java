package com.google.gson;

import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.Primitives;
import com.google.gson.internal.Streams;
import com.google.gson.internal.bind.ArrayTypeAdapter;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.DateTypeAdapter;
import com.google.gson.internal.bind.JsonTreeReader;
import com.google.gson.internal.bind.JsonTreeWriter;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.ObjectTypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.internal.bind.SqlDateTypeAdapter;
import com.google.gson.internal.bind.TimeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class Gson
{
  public final JsonDeserializationContext a = new JsonDeserializationContext()
  {
    public final <T> T deserialize(JsonElement paramAnonymousJsonElement, Type paramAnonymousType)
    {
      return (T)fromJson(paramAnonymousJsonElement, paramAnonymousType);
    }
  };
  public final JsonSerializationContext b = new JsonSerializationContext()
  {
    public final JsonElement serialize(Object paramAnonymousObject)
    {
      return toJsonTree(paramAnonymousObject);
    }
    
    public final JsonElement serialize(Object paramAnonymousObject, Type paramAnonymousType)
    {
      return toJsonTree(paramAnonymousObject, paramAnonymousType);
    }
  };
  private final ThreadLocal<Map<TypeToken<?>, a<?>>> c = new ThreadLocal();
  private final Map<TypeToken<?>, TypeAdapter<?>> d = Collections.synchronizedMap(new HashMap());
  private final List<TypeAdapterFactory> e;
  private final ConstructorConstructor f;
  private final boolean g;
  private final boolean h;
  private final boolean i;
  private final boolean j;
  
  public Gson()
  {
    this(Excluder.DEFAULT, FieldNamingPolicy.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, LongSerializationPolicy.DEFAULT, Collections.emptyList());
  }
  
  Gson(Excluder paramExcluder, FieldNamingStrategy paramFieldNamingStrategy, Map<Type, InstanceCreator<?>> paramMap, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, LongSerializationPolicy paramLongSerializationPolicy, List<TypeAdapterFactory> paramList)
  {
    f = new ConstructorConstructor(paramMap);
    g = paramBoolean1;
    i = paramBoolean3;
    h = paramBoolean4;
    j = paramBoolean5;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(TypeAdapters.JSON_ELEMENT_FACTORY);
    localArrayList.add(ObjectTypeAdapter.FACTORY);
    localArrayList.add(paramExcluder);
    localArrayList.addAll(paramList);
    localArrayList.add(TypeAdapters.STRING_FACTORY);
    localArrayList.add(TypeAdapters.INTEGER_FACTORY);
    localArrayList.add(TypeAdapters.BOOLEAN_FACTORY);
    localArrayList.add(TypeAdapters.BYTE_FACTORY);
    localArrayList.add(TypeAdapters.SHORT_FACTORY);
    paramList = Long.TYPE;
    if (paramLongSerializationPolicy == LongSerializationPolicy.DEFAULT)
    {
      paramMap = TypeAdapters.LONG;
      localArrayList.add(TypeAdapters.newFactory(paramList, Long.class, paramMap));
      paramLongSerializationPolicy = Double.TYPE;
      if (!paramBoolean6) {
        break label600;
      }
      paramMap = TypeAdapters.DOUBLE;
      label241:
      localArrayList.add(TypeAdapters.newFactory(paramLongSerializationPolicy, Double.class, paramMap));
      paramLongSerializationPolicy = Float.TYPE;
      if (!paramBoolean6) {
        break label612;
      }
    }
    label600:
    label612:
    for (paramMap = TypeAdapters.FLOAT;; paramMap = new TypeAdapter() {})
    {
      localArrayList.add(TypeAdapters.newFactory(paramLongSerializationPolicy, Float.class, paramMap));
      localArrayList.add(TypeAdapters.NUMBER_FACTORY);
      localArrayList.add(TypeAdapters.CHARACTER_FACTORY);
      localArrayList.add(TypeAdapters.STRING_BUILDER_FACTORY);
      localArrayList.add(TypeAdapters.STRING_BUFFER_FACTORY);
      localArrayList.add(TypeAdapters.newFactory(BigDecimal.class, TypeAdapters.BIG_DECIMAL));
      localArrayList.add(TypeAdapters.newFactory(BigInteger.class, TypeAdapters.BIG_INTEGER));
      localArrayList.add(TypeAdapters.URL_FACTORY);
      localArrayList.add(TypeAdapters.URI_FACTORY);
      localArrayList.add(TypeAdapters.UUID_FACTORY);
      localArrayList.add(TypeAdapters.LOCALE_FACTORY);
      localArrayList.add(TypeAdapters.INET_ADDRESS_FACTORY);
      localArrayList.add(TypeAdapters.BIT_SET_FACTORY);
      localArrayList.add(DateTypeAdapter.FACTORY);
      localArrayList.add(TypeAdapters.CALENDAR_FACTORY);
      localArrayList.add(TimeTypeAdapter.FACTORY);
      localArrayList.add(SqlDateTypeAdapter.FACTORY);
      localArrayList.add(TypeAdapters.TIMESTAMP_FACTORY);
      localArrayList.add(ArrayTypeAdapter.FACTORY);
      localArrayList.add(TypeAdapters.ENUM_FACTORY);
      localArrayList.add(TypeAdapters.CLASS_FACTORY);
      localArrayList.add(new CollectionTypeAdapterFactory(f));
      localArrayList.add(new MapTypeAdapterFactory(f, paramBoolean2));
      localArrayList.add(new ReflectiveTypeAdapterFactory(f, paramFieldNamingStrategy, paramExcluder));
      e = Collections.unmodifiableList(localArrayList);
      return;
      paramMap = new TypeAdapter() {};
      break;
      paramMap = new TypeAdapter() {};
      break label241;
    }
  }
  
  private JsonWriter a(Writer paramWriter)
  {
    if (i) {
      paramWriter.write(")]}'\n");
    }
    paramWriter = new JsonWriter(paramWriter);
    if (j) {
      paramWriter.setIndent("  ");
    }
    paramWriter.setSerializeNulls(g);
    return paramWriter;
  }
  
  private static void a(Object paramObject, JsonReader paramJsonReader)
  {
    if (paramObject != null) {
      try
      {
        if (paramJsonReader.peek() != JsonToken.END_DOCUMENT) {
          throw new JsonIOException("JSON document was not fully consumed.");
        }
      }
      catch (MalformedJsonException paramObject)
      {
        throw new JsonSyntaxException((Throwable)paramObject);
      }
      catch (IOException paramObject)
      {
        throw new JsonIOException((Throwable)paramObject);
      }
    }
  }
  
  public final <T> T fromJson(JsonElement paramJsonElement, Class<T> paramClass)
  {
    paramJsonElement = fromJson(paramJsonElement, paramClass);
    return (T)Primitives.wrap(paramClass).cast(paramJsonElement);
  }
  
  public final <T> T fromJson(JsonElement paramJsonElement, Type paramType)
  {
    if (paramJsonElement == null) {
      return null;
    }
    return (T)fromJson(new JsonTreeReader(paramJsonElement), paramType);
  }
  
  /* Error */
  public final <T> T fromJson(JsonReader paramJsonReader, Type paramType)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_1
    //   3: invokevirtual 380	com/google/gson/stream/JsonReader:isLenient	()Z
    //   6: istore 4
    //   8: aload_1
    //   9: iconst_1
    //   10: invokevirtual 383	com/google/gson/stream/JsonReader:setLenient	(Z)V
    //   13: aload_1
    //   14: invokevirtual 328	com/google/gson/stream/JsonReader:peek	()Lcom/google/gson/stream/JsonToken;
    //   17: pop
    //   18: iconst_0
    //   19: istore_3
    //   20: aload_0
    //   21: aload_2
    //   22: invokestatic 389	com/google/gson/reflect/TypeToken:get	(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
    //   25: invokevirtual 393	com/google/gson/Gson:getAdapter	(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    //   28: aload_1
    //   29: invokevirtual 399	com/google/gson/TypeAdapter:read	(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    //   32: astore_2
    //   33: aload_1
    //   34: iload 4
    //   36: invokevirtual 383	com/google/gson/stream/JsonReader:setLenient	(Z)V
    //   39: aload_2
    //   40: areturn
    //   41: astore_2
    //   42: iload_3
    //   43: ifeq +11 -> 54
    //   46: aload_1
    //   47: iload 4
    //   49: invokevirtual 383	com/google/gson/stream/JsonReader:setLenient	(Z)V
    //   52: aconst_null
    //   53: areturn
    //   54: new 341	com/google/gson/JsonSyntaxException
    //   57: dup
    //   58: aload_2
    //   59: invokespecial 344	com/google/gson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   62: athrow
    //   63: astore_2
    //   64: aload_1
    //   65: iload 4
    //   67: invokevirtual 383	com/google/gson/stream/JsonReader:setLenient	(Z)V
    //   70: aload_2
    //   71: athrow
    //   72: astore_2
    //   73: new 341	com/google/gson/JsonSyntaxException
    //   76: dup
    //   77: aload_2
    //   78: invokespecial 344	com/google/gson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   81: athrow
    //   82: astore_2
    //   83: new 341	com/google/gson/JsonSyntaxException
    //   86: dup
    //   87: aload_2
    //   88: invokespecial 344	com/google/gson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   91: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	Gson
    //   0	92	1	paramJsonReader	JsonReader
    //   0	92	2	paramType	Type
    //   1	42	3	k	int
    //   6	60	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   13	18	41	java/io/EOFException
    //   20	33	41	java/io/EOFException
    //   13	18	63	finally
    //   20	33	63	finally
    //   54	63	63	finally
    //   73	82	63	finally
    //   83	92	63	finally
    //   13	18	72	java/lang/IllegalStateException
    //   20	33	72	java/lang/IllegalStateException
    //   13	18	82	java/io/IOException
    //   20	33	82	java/io/IOException
  }
  
  public final <T> T fromJson(Reader paramReader, Class<T> paramClass)
  {
    paramReader = new JsonReader(paramReader);
    Object localObject = fromJson(paramReader, paramClass);
    a(localObject, paramReader);
    return (T)Primitives.wrap(paramClass).cast(localObject);
  }
  
  public final <T> T fromJson(Reader paramReader, Type paramType)
  {
    paramReader = new JsonReader(paramReader);
    paramType = fromJson(paramReader, paramType);
    a(paramType, paramReader);
    return paramType;
  }
  
  public final <T> T fromJson(String paramString, Class<T> paramClass)
  {
    paramString = fromJson(paramString, paramClass);
    return (T)Primitives.wrap(paramClass).cast(paramString);
  }
  
  public final <T> T fromJson(String paramString, Type paramType)
  {
    if (paramString == null) {
      return null;
    }
    return (T)fromJson(new StringReader(paramString), paramType);
  }
  
  public final <T> TypeAdapter<T> getAdapter(TypeToken<T> paramTypeToken)
  {
    Object localObject1 = (TypeAdapter)d.get(paramTypeToken);
    if (localObject1 != null) {
      return (TypeAdapter<T>)localObject1;
    }
    Object localObject4 = (Map)c.get();
    int k = 0;
    if (localObject4 == null)
    {
      localObject4 = new HashMap();
      c.set(localObject4);
      k = 1;
    }
    for (;;)
    {
      Object localObject5 = (a)((Map)localObject4).get(paramTypeToken);
      localObject1 = localObject5;
      if (localObject5 != null) {
        break;
      }
      try
      {
        localObject1 = new a();
        ((Map)localObject4).put(paramTypeToken, localObject1);
        Iterator localIterator = e.iterator();
        do
        {
          if (!localIterator.hasNext()) {
            break;
          }
          localObject5 = ((TypeAdapterFactory)localIterator.next()).create(this, paramTypeToken);
        } while (localObject5 == null);
        if (a != null) {
          throw new AssertionError();
        }
      }
      finally
      {
        ((Map)localObject4).remove(paramTypeToken);
        if (k != 0) {
          c.remove();
        }
      }
      a = ((TypeAdapter)localObject5);
      d.put(paramTypeToken, localObject5);
      ((Map)localObject4).remove(paramTypeToken);
      Object localObject3 = localObject5;
      if (k == 0) {
        break;
      }
      c.remove();
      return (TypeAdapter<T>)localObject5;
      throw new IllegalArgumentException("GSON cannot handle " + paramTypeToken);
    }
  }
  
  public final <T> TypeAdapter<T> getAdapter(Class<T> paramClass)
  {
    return getAdapter(TypeToken.get(paramClass));
  }
  
  public final <T> TypeAdapter<T> getDelegateAdapter(TypeAdapterFactory paramTypeAdapterFactory, TypeToken<T> paramTypeToken)
  {
    Iterator localIterator = e.iterator();
    int k = 0;
    while (localIterator.hasNext())
    {
      Object localObject = (TypeAdapterFactory)localIterator.next();
      if (k == 0)
      {
        if (localObject == paramTypeAdapterFactory) {
          k = 1;
        }
      }
      else
      {
        localObject = ((TypeAdapterFactory)localObject).create(this, paramTypeToken);
        if (localObject != null) {
          return (TypeAdapter<T>)localObject;
        }
      }
    }
    throw new IllegalArgumentException("GSON cannot serialize " + paramTypeToken);
  }
  
  public final String toJson(JsonElement paramJsonElement)
  {
    StringWriter localStringWriter = new StringWriter();
    toJson(paramJsonElement, localStringWriter);
    return localStringWriter.toString();
  }
  
  public final String toJson(Object paramObject)
  {
    if (paramObject == null) {
      return toJson(JsonNull.INSTANCE);
    }
    return toJson(paramObject, paramObject.getClass());
  }
  
  public final String toJson(Object paramObject, Type paramType)
  {
    StringWriter localStringWriter = new StringWriter();
    toJson(paramObject, paramType, localStringWriter);
    return localStringWriter.toString();
  }
  
  public final void toJson(JsonElement paramJsonElement, JsonWriter paramJsonWriter)
  {
    boolean bool1 = paramJsonWriter.isLenient();
    paramJsonWriter.setLenient(true);
    boolean bool2 = paramJsonWriter.isHtmlSafe();
    paramJsonWriter.setHtmlSafe(h);
    boolean bool3 = paramJsonWriter.getSerializeNulls();
    paramJsonWriter.setSerializeNulls(g);
    try
    {
      Streams.write(paramJsonElement, paramJsonWriter);
      return;
    }
    catch (IOException paramJsonElement)
    {
      throw new JsonIOException(paramJsonElement);
    }
    finally
    {
      paramJsonWriter.setLenient(bool1);
      paramJsonWriter.setHtmlSafe(bool2);
      paramJsonWriter.setSerializeNulls(bool3);
    }
  }
  
  public final void toJson(JsonElement paramJsonElement, Appendable paramAppendable)
  {
    try
    {
      toJson(paramJsonElement, a(Streams.writerForAppendable(paramAppendable)));
      return;
    }
    catch (IOException paramJsonElement)
    {
      throw new RuntimeException(paramJsonElement);
    }
  }
  
  public final void toJson(Object paramObject, Appendable paramAppendable)
  {
    if (paramObject != null)
    {
      toJson(paramObject, paramObject.getClass(), paramAppendable);
      return;
    }
    toJson(JsonNull.INSTANCE, paramAppendable);
  }
  
  public final void toJson(Object paramObject, Type paramType, JsonWriter paramJsonWriter)
  {
    paramType = getAdapter(TypeToken.get(paramType));
    boolean bool1 = paramJsonWriter.isLenient();
    paramJsonWriter.setLenient(true);
    boolean bool2 = paramJsonWriter.isHtmlSafe();
    paramJsonWriter.setHtmlSafe(h);
    boolean bool3 = paramJsonWriter.getSerializeNulls();
    paramJsonWriter.setSerializeNulls(g);
    try
    {
      paramType.write(paramJsonWriter, paramObject);
      return;
    }
    catch (IOException paramObject)
    {
      throw new JsonIOException((Throwable)paramObject);
    }
    finally
    {
      paramJsonWriter.setLenient(bool1);
      paramJsonWriter.setHtmlSafe(bool2);
      paramJsonWriter.setSerializeNulls(bool3);
    }
  }
  
  public final void toJson(Object paramObject, Type paramType, Appendable paramAppendable)
  {
    try
    {
      toJson(paramObject, paramType, a(Streams.writerForAppendable(paramAppendable)));
      return;
    }
    catch (IOException paramObject)
    {
      throw new JsonIOException((Throwable)paramObject);
    }
  }
  
  public final JsonElement toJsonTree(Object paramObject)
  {
    if (paramObject == null) {
      return JsonNull.INSTANCE;
    }
    return toJsonTree(paramObject, paramObject.getClass());
  }
  
  public final JsonElement toJsonTree(Object paramObject, Type paramType)
  {
    JsonTreeWriter localJsonTreeWriter = new JsonTreeWriter();
    toJson(paramObject, paramType, localJsonTreeWriter);
    return localJsonTreeWriter.get();
  }
  
  public final String toString()
  {
    return "{serializeNulls:" + g + "factories:" + e + ",instanceCreators:" + f + "}";
  }
  
  static final class a<T>
    extends TypeAdapter<T>
  {
    TypeAdapter<T> a;
    
    public final T read(JsonReader paramJsonReader)
    {
      if (a == null) {
        throw new IllegalStateException();
      }
      return (T)a.read(paramJsonReader);
    }
    
    public final void write(JsonWriter paramJsonWriter, T paramT)
    {
      if (a == null) {
        throw new IllegalStateException();
      }
      a.write(paramJsonWriter, paramT);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.gson.Gson
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */