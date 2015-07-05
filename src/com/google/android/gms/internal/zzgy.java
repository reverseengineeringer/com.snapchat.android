package com.google.android.gms.internal;

import java.util.Map;
import java.util.concurrent.Future;

@zzgi
public final class zzgy
{
  zzic zzmu;
  private final Object zznh = new Object();
  public final zzcv zzxA = new zzcv()
  {
    public void zza(zzic paramAnonymouszzic, Map<String, String> paramAnonymousMap)
    {
      zzha localzzha;
      synchronized (zzgy.zza(zzgy.this))
      {
        if (zzgy.zzb(zzgy.this).isDone()) {
          return;
        }
        localzzha = new zzha(-2, paramAnonymousMap);
        if (!zzgy.zzc(zzgy.this).equals(localzzha.getRequestId()))
        {
          zzhx.zzac(localzzha.getRequestId() + " ==== " + zzgy.zzc(zzgy.this));
          return;
        }
      }
      String str = localzzha.getUrl();
      if (str == null)
      {
        zzhx.zzac("URL missing in loadAdUrl GMSG.");
        return;
      }
      if (str.contains("%40mediation_adapters%40"))
      {
        paramAnonymouszzic = str.replaceAll("%40mediation_adapters%40", zzhk.zza(paramAnonymouszzic.getContext(), (String)paramAnonymousMap.get("check_adapters"), zzgy.zzd(zzgy.this)));
        localzzha.setUrl(paramAnonymouszzic);
        zzhx.zzab("Ad request URL modified to " + paramAnonymouszzic);
      }
      zzgy.zzb(zzgy.this).zzb(localzzha);
    }
  };
  private String zzxv;
  private String zzxw;
  private zzhq<zzha> zzxx = new zzhq();
  zzia<zzah> zzxy;
  public final zzcv zzxz = new zzcv()
  {
    public void zza(zzic arg1, Map<String, String> paramAnonymousMap)
    {
      synchronized (zzgy.zza(zzgy.this))
      {
        if (zzgy.zzb(zzgy.this).isDone()) {
          return;
        }
        if (!zzgy.zzc(zzgy.this).equals(paramAnonymousMap.get("request_id"))) {
          return;
        }
      }
      paramAnonymousMap = new zzha(1, paramAnonymousMap);
      zzhx.zzac("Invalid " + paramAnonymousMap.getType() + " request error: " + paramAnonymousMap.zzdU());
      zzgy.zzb(zzgy.this).zzb(paramAnonymousMap);
    }
  };
  
  public zzgy(String paramString1, String paramString2)
  {
    zzxw = paramString2;
    zzxv = paramString1;
  }
  
  public final void zza(zzic paramzzic)
  {
    zzmu = paramzzic;
  }
  
  public final zzia<zzah> zzdR()
  {
    return zzxy;
  }
  
  public final Future<zzha> zzdS()
  {
    return zzxx;
  }
  
  public final void zzdT()
  {
    if (zzmu != null)
    {
      zzmu.destroy();
      zzmu = null;
    }
  }
  
  public final void zze(zzia<zzah> paramzzia)
  {
    zzxy = paramzzia;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */