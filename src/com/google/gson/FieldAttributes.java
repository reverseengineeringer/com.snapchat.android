package com.google.gson;

import com.google.gson.internal..Gson.Preconditions;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;

public final class FieldAttributes
{
  private final Field a;
  
  public FieldAttributes(Field paramField)
  {
    .Gson.Preconditions.checkNotNull(paramField);
    a = paramField;
  }
  
  public final <T extends Annotation> T getAnnotation(Class<T> paramClass)
  {
    return a.getAnnotation(paramClass);
  }
  
  public final Collection<Annotation> getAnnotations()
  {
    return Arrays.asList(a.getAnnotations());
  }
  
  public final Class<?> getDeclaredClass()
  {
    return a.getType();
  }
  
  public final Type getDeclaredType()
  {
    return a.getGenericType();
  }
  
  public final Class<?> getDeclaringClass()
  {
    return a.getDeclaringClass();
  }
  
  public final String getName()
  {
    return a.getName();
  }
  
  public final boolean hasModifier(int paramInt)
  {
    return (a.getModifiers() & paramInt) != 0;
  }
}

/* Location:
 * Qualified Name:     com.google.gson.FieldAttributes
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */