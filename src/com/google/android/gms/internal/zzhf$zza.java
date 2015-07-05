package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.SystemClock;

@zzgi
final class zzhf$zza
{
  private long zzyJ = -1L;
  private long zzyK = -1L;
  
  public final Bundle toBundle()
  {
    Bundle localBundle = new Bundle();
    localBundle.putLong("topen", zzyJ);
    localBundle.putLong("tclose", zzyK);
    return localBundle;
  }
  
  public final long zzea()
  {
    return zzyK;
  }
  
  public final void zzeb()
  {
    zzyK = SystemClock.elapsedRealtime();
  }
  
  public final void zzec()
  {
    zzyJ = SystemClock.elapsedRealtime();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhf.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */