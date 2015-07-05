package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.tagmanager.ContainerHolder;
import com.google.android.gms.tagmanager.TagManager;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class zztb
{
  private static zztb zzatE;
  private Context mContext;
  private boolean mStarted;
  private final Set<zza> zzatF = new HashSet();
  private TagManager zzatG = null;
  private zzta zzmB;
  
  zztb(Context paramContext, TagManager paramTagManager)
  {
    mContext = paramContext;
    zzatG = paramTagManager;
  }
  
  public static zztb zzah(Context paramContext)
  {
    zzx.zzl(paramContext);
    if (zzatE == null) {}
    try
    {
      if (zzatE == null) {
        zzatE = new zztb(paramContext, TagManager.getInstance(paramContext.getApplicationContext()));
      }
      return zzatE;
    }
    finally {}
  }
  
  private void zzrC()
  {
    try
    {
      Iterator localIterator = zzatF.iterator();
      while (localIterator.hasNext()) {
        ((zza)localIterator.next()).zzaE();
      }
    }
    finally {}
  }
  
  public void start()
  {
    try
    {
      if (mStarted) {
        throw new IllegalStateException("Method start() has already been called");
      }
    }
    finally {}
    if (zzmB == null) {
      throw new IllegalStateException("No settings configured");
    }
    mStarted = true;
    zzatG.zzc(zzmB.zzrx(), -1, "admob").setResultCallback(new ResultCallback()
    {
      public void zza(ContainerHolder paramAnonymousContainerHolder)
      {
        if (paramAnonymousContainerHolder.getStatus().isSuccess()) {}
        for (paramAnonymousContainerHolder = paramAnonymousContainerHolder.getContainer();; paramAnonymousContainerHolder = null)
        {
          paramAnonymousContainerHolder = new zzsz(zztb.zza(zztb.this), paramAnonymousContainerHolder, zzrB());
          zztb.zza(zztb.this, paramAnonymousContainerHolder.zzrv());
          zztb.zzb(zztb.this);
          return;
        }
      }
    });
  }
  
  public void zza(zzta paramzzta)
  {
    try
    {
      if (mStarted) {
        throw new IllegalStateException("Settings can't be changed after TagManager has been started");
      }
    }
    finally {}
    zzmB = paramzzta;
  }
  
  public void zza(zza paramzza)
  {
    try
    {
      zzatF.add(paramzza);
      return;
    }
    finally {}
  }
  
  public zzta zzrB()
  {
    try
    {
      zzta localzzta = zzmB;
      return localzzta;
    }
    finally {}
  }
  
  public static abstract interface zza
  {
    public abstract void zzaE();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zztb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */