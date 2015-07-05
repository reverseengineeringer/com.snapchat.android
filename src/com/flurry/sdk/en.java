package com.flurry.sdk;

import android.os.Build.VERSION;
import android.text.TextUtils;

public final class en
  extends ep
{
  private final int a;
  
  public en(String paramString, int paramInt)
  {
    super(a(paramString, paramInt));
    a = paramInt;
  }
  
  private static eq a(String paramString, int paramInt)
  {
    eq localeq = null;
    if (b(paramString, paramInt)) {
      localeq = eo.a(paramString);
    }
    return localeq;
  }
  
  private static boolean b(String paramString, int paramInt)
  {
    return (!TextUtils.isEmpty(paramString)) && (Build.VERSION.SDK_INT >= paramInt);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.en
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */