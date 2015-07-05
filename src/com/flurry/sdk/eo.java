package com.flurry.sdk;

import android.text.TextUtils;
import java.lang.reflect.Method;

public final class eo
{
  private static final String a = eo.class.getSimpleName();
  
  public static eq a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    try
    {
      eq localeq = (eq)Class.forName(paramString).getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
      paramString = localeq;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        el.a(5, a, "FlurryModule " + paramString + " is not available:", localException);
        paramString = null;
      }
    }
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.eo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */