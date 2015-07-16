package com.google.gson;

import com.google.gson.internal..Gson.Preconditions;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.reflect.TypeToken;
import eq;
import er;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class GsonBuilder
{
  private Excluder a = Excluder.DEFAULT;
  private LongSerializationPolicy b = LongSerializationPolicy.DEFAULT;
  private FieldNamingStrategy c = FieldNamingPolicy.IDENTITY;
  private final Map<Type, InstanceCreator<?>> d = new HashMap();
  private final List<TypeAdapterFactory> e = new ArrayList();
  private final List<TypeAdapterFactory> f = new ArrayList();
  private boolean g;
  private String h;
  private int i = 2;
  private int j = 2;
  private boolean k;
  private boolean l;
  private boolean m = true;
  private boolean n;
  private boolean o;
  
  public final GsonBuilder addDeserializationExclusionStrategy(ExclusionStrategy paramExclusionStrategy)
  {
    a = a.withExclusionStrategy(paramExclusionStrategy, false, true);
    return this;
  }
  
  public final GsonBuilder addSerializationExclusionStrategy(ExclusionStrategy paramExclusionStrategy)
  {
    a = a.withExclusionStrategy(paramExclusionStrategy, true, false);
    return this;
  }
  
  public final Gson create()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(e);
    Collections.reverse(localArrayList);
    localArrayList.addAll(f);
    Object localObject = h;
    int i1 = i;
    int i2 = j;
    if ((localObject != null) && (!"".equals(((String)localObject).trim()))) {}
    for (localObject = new eq((String)localObject);; localObject = new eq(i1, i2))
    {
      localArrayList.add(er.a(TypeToken.get(java.util.Date.class), localObject));
      localArrayList.add(er.a(TypeToken.get(Timestamp.class), localObject));
      localArrayList.add(er.a(TypeToken.get(java.sql.Date.class), localObject));
      do
      {
        return new Gson(a, c, d, g, k, o, m, n, l, b, localArrayList);
      } while ((i1 == 2) || (i2 == 2));
    }
  }
  
  public final GsonBuilder disableHtmlEscaping()
  {
    m = false;
    return this;
  }
  
  public final GsonBuilder disableInnerClassSerialization()
  {
    a = a.disableInnerClassSerialization();
    return this;
  }
  
  public final GsonBuilder enableComplexMapKeySerialization()
  {
    k = true;
    return this;
  }
  
  public final GsonBuilder excludeFieldsWithModifiers(int... paramVarArgs)
  {
    a = a.withModifiers(paramVarArgs);
    return this;
  }
  
  public final GsonBuilder excludeFieldsWithoutExposeAnnotation()
  {
    a = a.excludeFieldsWithoutExposeAnnotation();
    return this;
  }
  
  public final GsonBuilder generateNonExecutableJson()
  {
    o = true;
    return this;
  }
  
  public final GsonBuilder registerTypeAdapter(Type paramType, Object paramObject)
  {
    if (((paramObject instanceof JsonSerializer)) || ((paramObject instanceof JsonDeserializer)) || ((paramObject instanceof InstanceCreator)) || ((paramObject instanceof TypeAdapter))) {}
    for (boolean bool = true;; bool = false)
    {
      .Gson.Preconditions.checkArgument(bool);
      if ((paramObject instanceof InstanceCreator)) {
        d.put(paramType, (InstanceCreator)paramObject);
      }
      if (((paramObject instanceof JsonSerializer)) || ((paramObject instanceof JsonDeserializer)))
      {
        TypeToken localTypeToken = TypeToken.get(paramType);
        e.add(er.b(localTypeToken, paramObject));
      }
      if ((paramObject instanceof TypeAdapter)) {
        e.add(TypeAdapters.newFactory(TypeToken.get(paramType), (TypeAdapter)paramObject));
      }
      return this;
    }
  }
  
  public final GsonBuilder registerTypeAdapterFactory(TypeAdapterFactory paramTypeAdapterFactory)
  {
    e.add(paramTypeAdapterFactory);
    return this;
  }
  
  public final GsonBuilder registerTypeHierarchyAdapter(Class<?> paramClass, Object paramObject)
  {
    if (((paramObject instanceof JsonSerializer)) || ((paramObject instanceof JsonDeserializer)) || ((paramObject instanceof TypeAdapter))) {}
    for (boolean bool = true;; bool = false)
    {
      .Gson.Preconditions.checkArgument(bool);
      if (((paramObject instanceof JsonDeserializer)) || ((paramObject instanceof JsonSerializer))) {
        f.add(0, er.a(paramClass, paramObject));
      }
      if ((paramObject instanceof TypeAdapter)) {
        e.add(TypeAdapters.newTypeHierarchyFactory(paramClass, (TypeAdapter)paramObject));
      }
      return this;
    }
  }
  
  public final GsonBuilder serializeNulls()
  {
    g = true;
    return this;
  }
  
  public final GsonBuilder serializeSpecialFloatingPointValues()
  {
    l = true;
    return this;
  }
  
  public final GsonBuilder setDateFormat(int paramInt)
  {
    i = paramInt;
    h = null;
    return this;
  }
  
  public final GsonBuilder setDateFormat(int paramInt1, int paramInt2)
  {
    i = paramInt1;
    j = paramInt2;
    h = null;
    return this;
  }
  
  public final GsonBuilder setDateFormat(String paramString)
  {
    h = paramString;
    return this;
  }
  
  public final GsonBuilder setExclusionStrategies(ExclusionStrategy... paramVarArgs)
  {
    int i2 = paramVarArgs.length;
    int i1 = 0;
    while (i1 < i2)
    {
      ExclusionStrategy localExclusionStrategy = paramVarArgs[i1];
      a = a.withExclusionStrategy(localExclusionStrategy, true, true);
      i1 += 1;
    }
    return this;
  }
  
  public final GsonBuilder setFieldNamingPolicy(FieldNamingPolicy paramFieldNamingPolicy)
  {
    c = paramFieldNamingPolicy;
    return this;
  }
  
  public final GsonBuilder setFieldNamingStrategy(FieldNamingStrategy paramFieldNamingStrategy)
  {
    c = paramFieldNamingStrategy;
    return this;
  }
  
  public final GsonBuilder setLongSerializationPolicy(LongSerializationPolicy paramLongSerializationPolicy)
  {
    b = paramLongSerializationPolicy;
    return this;
  }
  
  public final GsonBuilder setPrettyPrinting()
  {
    n = true;
    return this;
  }
  
  public final GsonBuilder setVersion(double paramDouble)
  {
    a = a.withVersion(paramDouble);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.gson.GsonBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */