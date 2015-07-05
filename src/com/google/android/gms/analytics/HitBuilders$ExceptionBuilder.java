package com.google.android.gms.analytics;

public class HitBuilders$ExceptionBuilder
  extends HitBuilders.HitBuilder<ExceptionBuilder>
{
  public HitBuilders$ExceptionBuilder()
  {
    zzy.zzfV().zza(zzy.zza.zzDC);
    set("&t", "exception");
  }
  
  public ExceptionBuilder setDescription(String paramString)
  {
    set("&exd", paramString);
    return this;
  }
  
  public ExceptionBuilder setFatal(boolean paramBoolean)
  {
    set("&exf", zzan.zzG(paramBoolean));
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.HitBuilders.ExceptionBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */