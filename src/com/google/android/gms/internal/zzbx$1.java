package com.google.android.gms.internal;

import android.os.Bundle;

final class zzbx$1
  extends zzbx<Boolean>
{
  zzbx$1(String paramString, Boolean paramBoolean)
  {
    super(paramString, paramBoolean, null);
  }
  
  public final Boolean zzb(Bundle paramBundle)
  {
    return Boolean.valueOf(paramBundle.getBoolean(getKey(), ((Boolean)zzbY()).booleanValue()));
  }
  
  public final zzki<Boolean> zzbZ()
  {
    return zzki.zzg(getKey(), ((Boolean)zzbY()).booleanValue());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzbx.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */