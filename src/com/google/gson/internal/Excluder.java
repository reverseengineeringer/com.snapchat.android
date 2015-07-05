package com.google.gson.internal;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class Excluder
  implements TypeAdapterFactory, Cloneable
{
  public static final Excluder DEFAULT = new Excluder();
  private double a = -1.0D;
  private int b = 136;
  private boolean c = true;
  private boolean d;
  private List<ExclusionStrategy> e = Collections.emptyList();
  private List<ExclusionStrategy> f = Collections.emptyList();
  
  private boolean a(Since paramSince, Until paramUntil)
  {
    if ((paramSince != null) && (paramSince.value() > a))
    {
      i = 0;
      if (i == 0) {
        break label60;
      }
      if ((paramUntil == null) || (paramUntil.value() > a)) {
        break label55;
      }
    }
    label55:
    for (int i = 0;; i = 1)
    {
      if (i == 0) {
        break label60;
      }
      return true;
      i = 1;
      break;
    }
    label60:
    return false;
  }
  
  private static boolean a(Class<?> paramClass)
  {
    return (!Enum.class.isAssignableFrom(paramClass)) && ((paramClass.isAnonymousClass()) || (paramClass.isLocalClass()));
  }
  
  private static boolean b(Class<?> paramClass)
  {
    if (paramClass.isMemberClass())
    {
      if ((paramClass.getModifiers() & 0x8) != 0) {}
      for (int i = 1; i == 0; i = 0) {
        return true;
      }
    }
    return false;
  }
  
  protected final Excluder clone()
  {
    try
    {
      Excluder localExcluder = (Excluder)super.clone();
      return localExcluder;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError();
    }
  }
  
  public final <T> TypeAdapter<T> create(final Gson paramGson, final TypeToken<T> paramTypeToken)
  {
    Class localClass = paramTypeToken.getRawType();
    final boolean bool1 = excludeClass(localClass, true);
    final boolean bool2 = excludeClass(localClass, false);
    if ((!bool1) && (!bool2)) {
      return null;
    }
    new TypeAdapter()
    {
      private TypeAdapter<T> f;
      
      private TypeAdapter<T> a()
      {
        TypeAdapter localTypeAdapter = f;
        if (localTypeAdapter != null) {
          return localTypeAdapter;
        }
        localTypeAdapter = paramGson.getDelegateAdapter(Excluder.this, paramTypeToken);
        f = localTypeAdapter;
        return localTypeAdapter;
      }
      
      public final T read(JsonReader paramAnonymousJsonReader)
      {
        if (bool2)
        {
          paramAnonymousJsonReader.skipValue();
          return null;
        }
        return (T)a().read(paramAnonymousJsonReader);
      }
      
      public final void write(JsonWriter paramAnonymousJsonWriter, T paramAnonymousT)
      {
        if (bool1)
        {
          paramAnonymousJsonWriter.nullValue();
          return;
        }
        a().write(paramAnonymousJsonWriter, paramAnonymousT);
      }
    };
  }
  
  public final Excluder disableInnerClassSerialization()
  {
    Excluder localExcluder = clone();
    c = false;
    return localExcluder;
  }
  
  public final boolean excludeClass(Class<?> paramClass, boolean paramBoolean)
  {
    if ((a != -1.0D) && (!a((Since)paramClass.getAnnotation(Since.class), (Until)paramClass.getAnnotation(Until.class)))) {
      return true;
    }
    if ((!c) && (b(paramClass))) {
      return true;
    }
    if (a(paramClass)) {
      return true;
    }
    if (paramBoolean) {}
    for (Object localObject = e;; localObject = f)
    {
      localObject = ((List)localObject).iterator();
      do
      {
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
      } while (!((ExclusionStrategy)((Iterator)localObject).next()).shouldSkipClass(paramClass));
      return true;
    }
    return false;
  }
  
  public final boolean excludeField(Field paramField, boolean paramBoolean)
  {
    if ((b & paramField.getModifiers()) != 0) {
      return true;
    }
    if ((a != -1.0D) && (!a((Since)paramField.getAnnotation(Since.class), (Until)paramField.getAnnotation(Until.class)))) {
      return true;
    }
    if (paramField.isSynthetic()) {
      return true;
    }
    if (d)
    {
      localObject = (Expose)paramField.getAnnotation(Expose.class);
      if (localObject != null)
      {
        if (!paramBoolean) {
          break label97;
        }
        if (((Expose)localObject).serialize()) {
          break label106;
        }
      }
      label97:
      while (!((Expose)localObject).deserialize()) {
        return true;
      }
    }
    label106:
    if ((!c) && (b(paramField.getType()))) {
      return true;
    }
    if (a(paramField.getType())) {
      return true;
    }
    if (paramBoolean) {}
    for (Object localObject = e; !((List)localObject).isEmpty(); localObject = f)
    {
      paramField = new FieldAttributes(paramField);
      localObject = ((List)localObject).iterator();
      do
      {
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
      } while (!((ExclusionStrategy)((Iterator)localObject).next()).shouldSkipField(paramField));
      return true;
    }
    return false;
  }
  
  public final Excluder excludeFieldsWithoutExposeAnnotation()
  {
    Excluder localExcluder = clone();
    d = true;
    return localExcluder;
  }
  
  public final Excluder withExclusionStrategy(ExclusionStrategy paramExclusionStrategy, boolean paramBoolean1, boolean paramBoolean2)
  {
    Excluder localExcluder = clone();
    if (paramBoolean1)
    {
      e = new ArrayList(e);
      e.add(paramExclusionStrategy);
    }
    if (paramBoolean2)
    {
      f = new ArrayList(f);
      f.add(paramExclusionStrategy);
    }
    return localExcluder;
  }
  
  public final Excluder withModifiers(int... paramVarArgs)
  {
    int i = 0;
    Excluder localExcluder = clone();
    b = 0;
    int j = paramVarArgs.length;
    while (i < j)
    {
      b = (paramVarArgs[i] | b);
      i += 1;
    }
    return localExcluder;
  }
  
  public final Excluder withVersion(double paramDouble)
  {
    Excluder localExcluder = clone();
    a = paramDouble;
    return localExcluder;
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.Excluder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */