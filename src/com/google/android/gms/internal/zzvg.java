package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.tagmanager.zzbf;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class zzvg
{
  private final Context mContext;
  private final zzvn zzaBP;
  Map<String, zzc<zzvl.zzc>> zzaBQ = new HashMap();
  private final Map<String, zzvv> zzaBR;
  private String zzaya = null;
  private final zzlv zzmW;
  
  public zzvg(Context paramContext)
  {
    this(paramContext, new HashMap(), new zzvn(paramContext), zzlx.zzkc());
  }
  
  zzvg(Context paramContext, Map<String, zzvv> paramMap, zzvn paramzzvn, zzlv paramzzlv)
  {
    mContext = paramContext;
    zzmW = paramzzlv;
    zzaBP = paramzzvn;
    zzaBR = paramMap;
  }
  
  private void zza(zzvj paramzzvj, zza paramzza)
  {
    boolean bool = true;
    paramzzvj = paramzzvj.zzun();
    if (paramzzvj.size() == 1) {}
    for (;;)
    {
      zzx.zzO(bool);
      zza((zzve)paramzzvj.get(0), paramzza);
      return;
      bool = false;
    }
  }
  
  void zza(final zzve paramzzve, final zza paramzza)
  {
    zzaBP.zza(paramzzve.zzuj(), paramzzve.zzuh(), zzvi.zzaBX, new zzvm()
    {
      public void zza(Status paramAnonymousStatus, Object paramAnonymousObject, Integer paramAnonymousInteger, long paramAnonymousLong)
      {
        if (paramAnonymousStatus.isSuccess()) {
          if (paramAnonymousInteger == zzvn.zzaCx) {
            paramAnonymousStatus = zzvk.zza.zza.zzaCh;
          }
        }
        for (paramAnonymousStatus = new zzvk.zza(Status.zzNo, paramzzve, null, (zzvl.zzc)paramAnonymousObject, paramAnonymousStatus, paramAnonymousLong);; paramAnonymousStatus = new zzvk.zza(new Status(16, "There is no valid resource for the container: " + paramzzve.getContainerId()), null, zzvk.zza.zza.zzaCg))
        {
          paramzza.zza(new zzvk(paramAnonymousStatus));
          return;
          paramAnonymousStatus = zzvk.zza.zza.zzaCg;
          break;
        }
      }
    });
  }
  
  void zza(zzvj paramzzvj, zza paramzza, zzvt paramzzvt)
  {
    Iterator localIterator = paramzzvj.zzun().iterator();
    int i = 0;
    zzve localzzve;
    long l;
    if (localIterator.hasNext())
    {
      localzzve = (zzve)localIterator.next();
      zzc localzzc = (zzc)zzaBQ.get(localzzve.getContainerId());
      if (localzzc != null)
      {
        l = localzzc.zzum();
        label67:
        if (l + 900000L >= zzmW.currentTimeMillis()) {
          break label202;
        }
        i = 1;
      }
    }
    label199:
    label202:
    for (;;)
    {
      break;
      l = zzaBP.zzdD(localzzve.getContainerId());
      break label67;
      if (i != 0)
      {
        paramzza = (zzvv)zzaBR.get(paramzzvj.getId());
        if (paramzza != null) {
          break label199;
        }
        if (zzaya == null)
        {
          paramzza = new zzvv();
          zzaBR.put(paramzzvj.getId(), paramzza);
        }
      }
      for (;;)
      {
        paramzza.zza(mContext, paramzzvj, 0L, paramzzvt);
        return;
        paramzza = new zzvv(zzaya);
        break;
        zza(paramzzvj, paramzza);
        return;
      }
    }
  }
  
  void zza(zzvk.zza paramzza)
  {
    Object localObject = paramzza.zzur().getContainerId();
    Status localStatus = paramzza.getStatus();
    paramzza = paramzza.zzus();
    if (zzaBQ.containsKey(localObject))
    {
      localObject = (zzc)zzaBQ.get(localObject);
      ((zzc)localObject).zzJ(zzmW.currentTimeMillis());
      if (localStatus == Status.zzNo)
      {
        ((zzc)localObject).zzaO(localStatus);
        ((zzc)localObject).zzD(paramzza);
      }
      return;
    }
    zzaBQ.put(localObject, new zzc(localStatus, paramzza, zzmW.currentTimeMillis()));
  }
  
  public void zza(String paramString1, Integer paramInteger, String paramString2, zza paramzza)
  {
    paramString1 = new zzvj().zzb(new zzve(paramString1, paramInteger, paramString2, false));
    zza(paramString1, paramzza, new zzb(paramString1, zzvi.zzaBX, paramzza));
  }
  
  public void zzdx(String paramString)
  {
    zzaya = paramString;
  }
  
  public static abstract interface zza
  {
    public abstract void zza(zzvk paramzzvk);
  }
  
  class zzb
    extends zzvt
  {
    private final zzvg.zza zzaBV;
    
    zzb(zzvj paramzzvj, zzvh paramzzvh, zzvg.zza paramzza)
    {
      super(paramzzvh);
      zzaBV = paramzza;
    }
    
    protected zzvt.zzb zza(zzve paramzzve)
    {
      return null;
    }
    
    protected void zza(zzvk paramzzvk)
    {
      zzvk.zza localzza = paramzzvk.zzuo();
      zza(localzza);
      if ((localzza.getStatus() == Status.zzNo) && (localzza.zzup() == zzvk.zza.zza.zzaCf) && (localzza.zzuq() != null) && (localzza.zzuq().length > 0))
      {
        zzvg.zza(zzvg.this).zzf(localzza.zzur().zzuj(), localzza.zzuq());
        zzbf.zzab("Resource successfully load from Network.");
        zzaBV.zza(paramzzvk);
        return;
      }
      StringBuilder localStringBuilder = new StringBuilder("Response status: ");
      if (localzza.getStatus().isSuccess()) {}
      for (paramzzvk = "SUCCESS";; paramzzvk = "FAILURE")
      {
        zzbf.zzab(paramzzvk);
        if (localzza.getStatus().isSuccess())
        {
          zzbf.zzab("Response source: " + localzza.zzup().toString());
          zzbf.zzab("Response size: " + localzza.zzuq().length);
        }
        zza(localzza.zzur(), zzaBV);
        return;
      }
    }
  }
  
  static class zzc<T>
  {
    private T mData;
    private Status zzHb;
    private long zzaBW;
    
    public zzc(Status paramStatus, T paramT, long paramLong)
    {
      zzHb = paramStatus;
      mData = paramT;
      zzaBW = paramLong;
    }
    
    public void zzD(T paramT)
    {
      mData = paramT;
    }
    
    public void zzJ(long paramLong)
    {
      zzaBW = paramLong;
    }
    
    public void zzaO(Status paramStatus)
    {
      zzHb = paramStatus;
    }
    
    public long zzum()
    {
      return zzaBW;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */