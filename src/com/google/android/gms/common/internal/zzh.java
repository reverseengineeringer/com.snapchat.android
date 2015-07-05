package com.google.android.gms.common.internal;

import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.lang.reflect.Field;

public abstract class zzh
  implements SafeParcelable
{
  private static final Object zzPv = new Object();
  private static ClassLoader zzPw = null;
  private static Integer zzPx = null;
  private boolean zzPy = false;
  
  private static boolean zza(Class<?> paramClass)
  {
    try
    {
      boolean bool = "SAFE_PARCELABLE_NULL_STRING".equals(paramClass.getField("NULL").get(null));
      return bool;
    }
    catch (IllegalAccessException paramClass)
    {
      return false;
    }
    catch (NoSuchFieldException paramClass) {}
    return false;
  }
  
  protected static boolean zzbf(String paramString)
  {
    ClassLoader localClassLoader = zziW();
    if (localClassLoader == null) {
      return true;
    }
    try
    {
      boolean bool = zza(localClassLoader.loadClass(paramString));
      return bool;
    }
    catch (Exception paramString) {}
    return false;
  }
  
  protected static ClassLoader zziW()
  {
    synchronized (zzPv)
    {
      ClassLoader localClassLoader = zzPw;
      return localClassLoader;
    }
  }
  
  protected static Integer zziX()
  {
    synchronized (zzPv)
    {
      Integer localInteger = zzPx;
      return localInteger;
    }
  }
  
  protected boolean zziY()
  {
    return zzPy;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */