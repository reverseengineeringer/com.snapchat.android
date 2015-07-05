package com.google.gson;

import java.lang.reflect.Field;

 enum FieldNamingPolicy$2
{
  FieldNamingPolicy$2()
  {
    super(paramString, 1, (byte)0);
  }
  
  public final String translateName(Field paramField)
  {
    return FieldNamingPolicy.a(paramField.getName());
  }
}

/* Location:
 * Qualified Name:     com.google.gson.FieldNamingPolicy.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */