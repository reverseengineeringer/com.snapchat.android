package com.google.android.gms.analytics;

import android.util.Pair;
import com.google.android.gms.internal.zzik;
import java.util.Collection;
import java.util.Map;

abstract interface zzd
{
  public abstract void dispatch();
  
  public abstract void setDryRun(boolean paramBoolean);
  
  public abstract void zza(Map<String, String> paramMap, long paramLong, String paramString, Collection<zzik> paramCollection);
  
  public abstract zzr zzff();
  
  public abstract Pair<Long, Long> zzfg();
  
  public abstract void zzl(long paramLong);
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */