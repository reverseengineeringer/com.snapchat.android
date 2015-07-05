package com.google.android.gms.analytics;

public class HitBuilders$SocialBuilder
  extends HitBuilders.HitBuilder<SocialBuilder>
{
  public HitBuilders$SocialBuilder()
  {
    zzy.zzfV().zza(zzy.zza.zzDF);
    set("&t", "social");
  }
  
  public SocialBuilder setAction(String paramString)
  {
    set("&sa", paramString);
    return this;
  }
  
  public SocialBuilder setNetwork(String paramString)
  {
    set("&sn", paramString);
    return this;
  }
  
  public SocialBuilder setTarget(String paramString)
  {
    set("&st", paramString);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.HitBuilders.SocialBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */