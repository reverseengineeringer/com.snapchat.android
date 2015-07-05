package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

@zzgi
public class zzhf
{
  private final zzhg zzmV;
  private final Object zznh = new Object();
  private boolean zzxJ = false;
  private final LinkedList<zza> zzyA;
  private final String zzyB;
  private final String zzyC;
  private long zzyD = -1L;
  private long zzyE = -1L;
  private long zzyF = -1L;
  private long zzyG = 0L;
  private long zzyH = -1L;
  private long zzyI = -1L;
  
  public zzhf(zzhg paramzzhg, String paramString1, String paramString2)
  {
    zzmV = paramzzhg;
    zzyB = paramString1;
    zzyC = paramString2;
    zzyA = new LinkedList();
  }
  
  public zzhf(String paramString1, String paramString2)
  {
    this(zzab.zzaP(), paramString1, paramString2);
  }
  
  public Bundle toBundle()
  {
    ArrayList localArrayList;
    synchronized (zznh)
    {
      Bundle localBundle1 = new Bundle();
      localBundle1.putString("seq_num", zzyB);
      localBundle1.putString("slotid", zzyC);
      localBundle1.putBoolean("ismediation", zzxJ);
      localBundle1.putLong("treq", zzyH);
      localBundle1.putLong("tresponse", zzyI);
      localBundle1.putLong("timp", zzyE);
      localBundle1.putLong("tload", zzyF);
      localBundle1.putLong("pcc", zzyG);
      localBundle1.putLong("tfetch", zzyD);
      localArrayList = new ArrayList();
      Iterator localIterator = zzyA.iterator();
      if (localIterator.hasNext()) {
        localArrayList.add(((zza)localIterator.next()).toBundle());
      }
    }
    localBundle2.putParcelableArrayList("tclick", localArrayList);
    return localBundle2;
  }
  
  public void zzdX()
  {
    synchronized (zznh)
    {
      if ((zzyI != -1L) && (zzyE == -1L))
      {
        zzyE = SystemClock.elapsedRealtime();
        zzmV.zza(this);
      }
      zzmV.zzef().zzdX();
      return;
    }
  }
  
  public void zzdY()
  {
    synchronized (zznh)
    {
      if (zzyI != -1L)
      {
        zza localzza = new zza();
        localzza.zzec();
        zzyA.add(localzza);
        zzyG += 1L;
        zzmV.zzef().zzdY();
        zzmV.zza(this);
      }
      return;
    }
  }
  
  public void zzdZ()
  {
    synchronized (zznh)
    {
      if ((zzyI != -1L) && (!zzyA.isEmpty()))
      {
        zza localzza = (zza)zzyA.getLast();
        if (localzza.zzea() == -1L)
        {
          localzza.zzeb();
          zzmV.zza(this);
        }
      }
      return;
    }
  }
  
  public void zze(zzax paramzzax)
  {
    synchronized (zznh)
    {
      zzyH = SystemClock.elapsedRealtime();
      zzmV.zzef().zzb(paramzzax, zzyH);
      return;
    }
  }
  
  public void zzj(long paramLong)
  {
    synchronized (zznh)
    {
      zzyI = paramLong;
      if (zzyI != -1L) {
        zzmV.zza(this);
      }
      return;
    }
  }
  
  public void zzk(long paramLong)
  {
    synchronized (zznh)
    {
      if (zzyI != -1L)
      {
        zzyD = paramLong;
        zzmV.zza(this);
      }
      return;
    }
  }
  
  public void zzx(boolean paramBoolean)
  {
    synchronized (zznh)
    {
      if (zzyI != -1L)
      {
        zzyF = SystemClock.elapsedRealtime();
        if (!paramBoolean)
        {
          zzyE = zzyF;
          zzmV.zza(this);
        }
      }
      return;
    }
  }
  
  public void zzy(boolean paramBoolean)
  {
    synchronized (zznh)
    {
      if (zzyI != -1L)
      {
        zzxJ = paramBoolean;
        zzmV.zza(this);
      }
      return;
    }
  }
  
  @zzgi
  static final class zza
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */