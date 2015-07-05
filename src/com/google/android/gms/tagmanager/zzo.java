package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.AbstractPendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzc.zzf;
import com.google.android.gms.internal.zzc.zzj;
import com.google.android.gms.internal.zzlv;
import com.google.android.gms.internal.zzlx;
import com.google.android.gms.internal.zzvd.zza;
import com.google.android.gms.internal.zzvg;
import com.google.android.gms.internal.zzvg.zza;
import com.google.android.gms.internal.zzvk;
import com.google.android.gms.internal.zzvk.zza;
import com.google.android.gms.internal.zzvl.zzc;

public class zzo
  extends AbstractPendingResult<ContainerHolder>
{
  private final Context mContext;
  private final Looper zzMc;
  private long zzaxB;
  private final TagManager zzaxI;
  private final zzd zzaxL;
  private final zzcc zzaxM;
  private final int zzaxN;
  private zzf zzaxO;
  private zzvg zzaxP;
  private volatile zzn zzaxQ;
  private volatile boolean zzaxR;
  private zzc.zzj zzaxS;
  private String zzaxT;
  private zze zzaxU;
  private zza zzaxV;
  private final String zzaxw;
  private final zzlv zzmW;
  
  zzo(Context paramContext, TagManager paramTagManager, Looper paramLooper, String paramString, int paramInt, zzf paramzzf, zze paramzze, zzvg paramzzvg, zzlv paramzzlv, zzcc paramzzcc) {}
  
  public zzo(Context paramContext, TagManager paramTagManager, Looper paramLooper, String paramString, int paramInt, zzr paramzzr)
  {
    this(paramContext, paramTagManager, paramLooper, paramString, paramInt, new zzcm(paramContext, paramString), new zzcl(paramContext, paramString, paramzzr), new zzvg(paramContext), zzlx.zzkc(), new zzbd(30, 900000L, 5000L, "refreshing", zzlx.zzkc()));
    zzaxP.zzdx(paramzzr.zzsT());
  }
  
  /* Error */
  private void zzF(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 89	com/google/android/gms/tagmanager/zzo:zzaxU	Lcom/google/android/gms/tagmanager/zzo$zze;
    //   6: ifnonnull +11 -> 17
    //   9: ldc -83
    //   11: invokestatic 178	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: getfield 89	com/google/android/gms/tagmanager/zzo:zzaxU	Lcom/google/android/gms/tagmanager/zzo$zze;
    //   21: lload_1
    //   22: aload_0
    //   23: getfield 103	com/google/android/gms/tagmanager/zzo:zzaxS	Lcom/google/android/gms/internal/zzc$zzj;
    //   26: getfield 181	com/google/android/gms/internal/zzc$zzj:zzgt	Ljava/lang/String;
    //   29: invokeinterface 184 4 0
    //   34: goto -20 -> 14
    //   37: astore_3
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_3
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	zzo
    //   0	42	1	paramLong	long
    //   37	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	37	finally
    //   17	34	37	finally
  }
  
  private void zza(zzc.zzj paramzzj)
  {
    try
    {
      if (zzaxO != null)
      {
        zzvd.zza localzza = new zzvd.zza();
        zzaBK = zzaxB;
        zzgs = new zzc.zzf();
        zzaBL = paramzzj;
        zzaxO.zzb(localzza);
      }
      return;
    }
    finally
    {
      paramzzj = finally;
      throw paramzzj;
    }
  }
  
  private void zza(zzc.zzj paramzzj, long paramLong, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        paramBoolean = zzaxR;
        if (paramBoolean) {
          return;
        }
        if (isReady()) {
          zzn localzzn = zzaxQ;
        }
        zzaxS = paramzzj;
        zzaxB = paramLong;
        zzF(Math.max(0L, Math.min(43200000L, zzaxB + 43200000L - zzmW.currentTimeMillis())));
        paramzzj = new Container(mContext, zzaxI.getDataLayer(), zzaxw, paramLong, paramzzj);
        if (zzaxQ == null)
        {
          zzaxQ = new zzn(zzaxI, zzMc, paramzzj, zzaxL);
          if ((!isReady()) && (zzaxV.zzb(paramzzj))) {
            setResult(zzaxQ);
          }
        }
        else
        {
          zzaxQ.zza(paramzzj);
        }
      }
      finally {}
    }
  }
  
  private void zzag(final boolean paramBoolean)
  {
    zzaxO.zza(new zzb(null));
    zzaxU.zza(new zzc(null));
    zzvl.zzc localzzc = zzaxO.zzhc(zzaxN);
    if (localzzc != null) {
      zzaxQ = new zzn(zzaxI, zzMc, new Container(mContext, zzaxI.getDataLayer(), zzaxw, 0L, localzzc), zzaxL);
    }
    zzaxV = new zza()
    {
      public boolean zzb(Container paramAnonymousContainer)
      {
        if (paramBoolean) {
          if (paramAnonymousContainer.getLastRefreshTime() + 43200000L < zzo.zzg(zzo.this).currentTimeMillis()) {}
        }
        while (!paramAnonymousContainer.isDefault())
        {
          return true;
          return false;
        }
        return false;
      }
    };
    if (zzsQ())
    {
      zzaxU.zze(0L, "");
      return;
    }
    zzaxO.zzsS();
  }
  
  private boolean zzsQ()
  {
    zzca localzzca = zzca.zztx();
    return ((localzzca.zzty() == zzca.zza.zzazC) || (localzzca.zzty() == zzca.zza.zzazD)) && (zzaxw.equals(localzzca.getContainerId()));
  }
  
  public void load(final String paramString)
  {
    if (zzaxN != -1) {}
    for (Integer localInteger = Integer.valueOf(zzaxN);; localInteger = null)
    {
      zzaxP.zza(zzaxw, localInteger, paramString, new zzvg.zza()
      {
        public void zza(zzvk paramAnonymouszzvk)
        {
          if (paramAnonymouszzvk.getStatus() != Status.zzNo)
          {
            zzbf.zzZ("Load request failed for the container " + zzo.zza(zzo.this));
            setResult(zzaN(Status.zzNq));
            return;
          }
          zzvl.zzc localzzc = paramAnonymouszzvk.zzuo().zzus();
          if (localzzc == null)
          {
            zzbf.zzZ("Response doesn't have the requested container");
            setResult(zzaN(new Status(8, "Response doesn't have the requested container", null)));
            return;
          }
          long l = paramAnonymouszzvk.zzuo().zzut();
          zzo.zza(zzo.this, new zzn(zzo.zzb(zzo.this), zzo.zzc(zzo.this), new Container(zzo.zzd(zzo.this), zzo.zzb(zzo.this).getDataLayer(), zzo.zza(zzo.this), l, localzzc), new zzn.zza()
          {
            public void zzcQ(String paramAnonymous2String)
            {
              zzo.this.zzcQ(paramAnonymous2String);
            }
            
            public String zzsK()
            {
              return zzo.this.zzsK();
            }
            
            public void zzsM()
            {
              if (zzo.zze(zzo.this).zzgv()) {
                load(zzaxW);
              }
            }
          }));
          setResult(zzo.zzf(zzo.this));
        }
      });
      return;
    }
  }
  
  protected ContainerHolder zzaN(Status paramStatus)
  {
    if (zzaxQ != null) {
      return zzaxQ;
    }
    if (paramStatus == Status.zzNr) {
      zzbf.zzZ("timer expired: setting result to failure");
    }
    return new zzn(paramStatus);
  }
  
  void zzcQ(String paramString)
  {
    try
    {
      zzaxT = paramString;
      if (zzaxU != null) {
        zzaxU.zzcT(paramString);
      }
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  String zzsK()
  {
    try
    {
      String str = zzaxT;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void zzsN()
  {
    Object localObject = zzaxO.zzhc(zzaxN);
    if (localObject != null)
    {
      localObject = new Container(mContext, zzaxI.getDataLayer(), zzaxw, 0L, (zzvl.zzc)localObject);
      setResult(new zzn(zzaxI, zzMc, (Container)localObject, new zzn.zza()
      {
        public void zzcQ(String paramAnonymousString)
        {
          zzo.this.zzcQ(paramAnonymousString);
        }
        
        public String zzsK()
        {
          return zzo.this.zzsK();
        }
        
        public void zzsM()
        {
          zzbf.zzac("Refresh ignored: container loaded as default only.");
        }
      }));
    }
    for (;;)
    {
      zzaxU = null;
      zzaxO = null;
      return;
      zzbf.zzZ("Default was requested, but no default container was found");
      setResult(zzaN(new Status(10, "Default was requested, but no default container was found", null)));
    }
  }
  
  public void zzsO()
  {
    zzag(false);
  }
  
  public void zzsP()
  {
    zzag(true);
  }
  
  static abstract interface zza
  {
    public abstract boolean zzb(Container paramContainer);
  }
  
  class zzb
    implements zzbe<zzvd.zza>
  {
    private zzb() {}
    
    public void zza(zzvd.zza paramzza)
    {
      zzc.zzj localzzj;
      if (zzaBL != null) {
        localzzj = zzaBL;
      }
      for (;;)
      {
        zzo.zza(zzo.this, localzzj, zzaBK, true);
        return;
        zzc.zzf localzzf = zzgs;
        localzzj = new zzc.zzj();
        zzgs = localzzf;
        zzgr = null;
        zzgt = version;
      }
    }
    
    public void zza(zzbe.zza paramzza)
    {
      if (!zzo.zzh(zzo.this)) {
        zzo.zza(zzo.this, 0L);
      }
    }
    
    public void zzsR() {}
  }
  
  class zzc
    implements zzbe<zzc.zzj>
  {
    private zzc() {}
    
    public void zza(zzbe.zza arg1)
    {
      synchronized (zzo.this)
      {
        if (!isReady())
        {
          if (zzo.zzf(zzo.this) != null) {
            setResult(zzo.zzf(zzo.this));
          }
        }
        else
        {
          zzo.zza(zzo.this, 3600000L);
          return;
        }
        setResult(zzaN(Status.zzNr));
      }
    }
    
    public void zzb(zzc.zzj paramzzj)
    {
      synchronized (zzo.this)
      {
        if (zzgs == null)
        {
          if (zzizzgs == null)
          {
            zzbf.zzZ("Current resource is null; network resource is also null");
            zzo.zza(zzo.this, 3600000L);
            return;
          }
          zzgs = zzizzgs;
        }
        zzo.zza(zzo.this, paramzzj, zzo.zzg(zzo.this).currentTimeMillis(), false);
        zzbf.zzab("setting refresh time to current time: " + zzo.zzj(zzo.this));
        if (!zzo.zzk(zzo.this)) {
          zzo.zza(zzo.this, paramzzj);
        }
        return;
      }
    }
    
    public void zzsR() {}
  }
  
  class zzd
    implements zzn.zza
  {
    private zzd() {}
    
    public void zzcQ(String paramString)
    {
      zzo.this.zzcQ(paramString);
    }
    
    public String zzsK()
    {
      return zzo.this.zzsK();
    }
    
    public void zzsM()
    {
      if (zzo.zze(zzo.this).zzgv()) {
        zzo.zza(zzo.this, 0L);
      }
    }
  }
  
  static abstract interface zze
    extends Releasable
  {
    public abstract void zza(zzbe<zzc.zzj> paramzzbe);
    
    public abstract void zzcT(String paramString);
    
    public abstract void zze(long paramLong, String paramString);
  }
  
  static abstract interface zzf
    extends Releasable
  {
    public abstract void zza(zzbe<zzvd.zza> paramzzbe);
    
    public abstract void zzb(zzvd.zza paramzza);
    
    public abstract zzvl.zzc zzhc(int paramInt);
    
    public abstract void zzsS();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */