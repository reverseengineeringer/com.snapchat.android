package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.annotations.SerializedName;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

final class TypeAdapters$a<T extends Enum<T>>
  extends TypeAdapter<T>
{
  private final Map<String, T> a = new HashMap();
  private final Map<T, String> b = new HashMap();
  
  public TypeAdapters$a(Class<T> paramClass)
  {
    for (;;)
    {
      try
      {
        Enum[] arrayOfEnum = (Enum[])paramClass.getEnumConstants();
        int j = arrayOfEnum.length;
        int i = 0;
        if (i < j)
        {
          Enum localEnum = arrayOfEnum[i];
          String str = localEnum.name();
          SerializedName localSerializedName = (SerializedName)paramClass.getField(str).getAnnotation(SerializedName.class);
          if (localSerializedName != null)
          {
            str = localSerializedName.value();
            a.put(str, localEnum);
            b.put(localEnum, str);
            i += 1;
          }
        }
        else
        {
          return;
        }
      }
      catch (NoSuchFieldException paramClass)
      {
        throw new AssertionError();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */