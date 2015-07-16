package com.snapchat.android.analytics.framework;

import android.content.Context;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import chd;
import java.io.UnsupportedEncodingException;
import java.util.UUID;

public class UniqueDeviceIdBuilder
{
  public static UUID a(Context paramContext)
  {
    UUID localUUID = b(paramContext);
    if (localUUID == null) {
      c(paramContext);
    }
    paramContext = localUUID;
    if (localUUID == null) {
      paramContext = UUID.randomUUID();
    }
    return paramContext;
  }
  
  @chd
  private static UUID b(Context paramContext)
  {
    paramContext = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    if ((TextUtils.equals(paramContext, "9774d56d682e549c")) || (paramContext == null)) {
      return null;
    }
    try
    {
      paramContext = UUID.nameUUIDFromBytes(paramContext.getBytes("utf8"));
      return paramContext;
    }
    catch (UnsupportedEncodingException paramContext) {}
    return null;
  }
  
  @chd
  private static UUID c(Context paramContext)
  {
    paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
    if (paramContext == null) {
      return null;
    }
    try
    {
      paramContext = UUID.nameUUIDFromBytes(paramContext.getBytes("utf8"));
      return paramContext;
    }
    catch (UnsupportedEncodingException paramContext) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.UniqueDeviceIdBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */