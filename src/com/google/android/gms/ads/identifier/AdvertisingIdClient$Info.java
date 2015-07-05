package com.google.android.gms.ads.identifier;

public final class AdvertisingIdClient$Info
{
  private final String zzlx;
  private final boolean zzly;
  
  public AdvertisingIdClient$Info(String paramString, boolean paramBoolean)
  {
    zzlx = paramString;
    zzly = paramBoolean;
  }
  
  public final String getId()
  {
    return zzlx;
  }
  
  public final boolean isLimitAdTrackingEnabled()
  {
    return zzly;
  }
  
  public final String toString()
  {
    return "{" + zzlx + "}" + zzly;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.identifier.AdvertisingIdClient.Info
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */