package com.addlive.impl;

public class Log
{
  private static boolean enabled = true;
  
  public static int d(String paramString1, String paramString2)
  {
    if (!enabled) {
      return 0;
    }
    return android.util.Log.d(paramString1, paramString2);
  }
  
  public static int d(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (!enabled) {
      return 0;
    }
    return android.util.Log.d(paramString1, paramString2, paramThrowable);
  }
  
  public static int e(String paramString1, String paramString2)
  {
    if (!enabled) {
      return 0;
    }
    return android.util.Log.e(paramString1, paramString2);
  }
  
  public static int e(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (!enabled) {
      return 0;
    }
    return android.util.Log.e(paramString1, paramString2, paramThrowable);
  }
  
  public static int i(String paramString1, String paramString2)
  {
    if (!enabled) {
      return 0;
    }
    return android.util.Log.i(paramString1, paramString2);
  }
  
  public static int i(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (!enabled) {
      return 0;
    }
    return android.util.Log.i(paramString1, paramString2, paramThrowable);
  }
  
  public static int println(int paramInt, String paramString1, String paramString2)
  {
    if (!enabled) {
      return 0;
    }
    return android.util.Log.println(paramInt, paramString1, paramString2);
  }
  
  public static void setEnabled(boolean paramBoolean)
  {
    enabled = paramBoolean;
  }
  
  public static int v(String paramString1, String paramString2)
  {
    if (!enabled) {
      return 0;
    }
    return android.util.Log.v(paramString1, paramString2);
  }
  
  public static int v(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (!enabled) {
      return 0;
    }
    return android.util.Log.v(paramString1, paramString2, paramThrowable);
  }
  
  public static int w(String paramString1, String paramString2)
  {
    if (!enabled) {
      return 0;
    }
    return android.util.Log.w(paramString1, paramString2);
  }
  
  public static int w(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (!enabled) {
      return 0;
    }
    return android.util.Log.w(paramString1, paramString2, paramThrowable);
  }
  
  public static int w(String paramString, Throwable paramThrowable)
  {
    if (!enabled) {
      return 0;
    }
    return android.util.Log.w(paramString, paramThrowable);
  }
  
  public static int wtf(String paramString1, String paramString2)
  {
    if (!enabled) {
      return 0;
    }
    return android.util.Log.wtf(paramString1, paramString2);
  }
  
  public static int wtf(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (!enabled) {
      return 0;
    }
    return android.util.Log.wtf(paramString1, paramString2, paramThrowable);
  }
  
  public static int wtf(String paramString, Throwable paramThrowable)
  {
    if (!enabled) {
      return 0;
    }
    return android.util.Log.wtf(paramString, paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.Log
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */