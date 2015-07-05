package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.tagmanager.zzbf;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class zzvv
{
  private boolean mClosed;
  private final ScheduledExecutorService zzasc;
  private String zzaya = null;
  private ScheduledFuture<?> zzazR = null;
  
  public zzvv()
  {
    this(Executors.newSingleThreadScheduledExecutor());
  }
  
  public zzvv(String paramString)
  {
    this(Executors.newSingleThreadScheduledExecutor());
    zzaya = paramString;
  }
  
  zzvv(ScheduledExecutorService paramScheduledExecutorService)
  {
    zzasc = paramScheduledExecutorService;
    mClosed = false;
  }
  
  public void zza(Context paramContext, zzvj paramzzvj, long paramLong, zzvt paramzzvt)
  {
    for (;;)
    {
      try
      {
        zzbf.zzab("ResourceLoaderScheduler: Loading new resource.");
        if (zzazR != null) {
          return;
        }
        if (zzaya != null)
        {
          paramContext = new zzvu(paramContext, paramzzvj, paramzzvt, zzaya);
          zzazR = zzasc.schedule(paramContext, paramLong, TimeUnit.MILLISECONDS);
          return;
        }
      }
      finally {}
      paramContext = new zzvu(paramContext, paramzzvj, paramzzvt);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */