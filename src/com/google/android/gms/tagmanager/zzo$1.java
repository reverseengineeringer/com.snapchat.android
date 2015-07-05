package com.google.android.gms.tagmanager;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzvg.zza;
import com.google.android.gms.internal.zzvk;
import com.google.android.gms.internal.zzvk.zza;
import com.google.android.gms.internal.zzvl.zzc;

class zzo$1
  implements zzvg.zza
{
  zzo$1(zzo paramzzo, String paramString) {}
  
  public void zza(zzvk paramzzvk)
  {
    if (paramzzvk.getStatus() != Status.zzNo)
    {
      zzbf.zzZ("Load request failed for the container " + zzo.zza(zzaxX));
      zzaxX.setResult(zzaxX.zzaN(Status.zzNq));
      return;
    }
    zzvl.zzc localzzc = paramzzvk.zzuo().zzus();
    if (localzzc == null)
    {
      zzbf.zzZ("Response doesn't have the requested container");
      zzaxX.setResult(zzaxX.zzaN(new Status(8, "Response doesn't have the requested container", null)));
      return;
    }
    long l = paramzzvk.zzuo().zzut();
    zzo.zza(zzaxX, new zzn(zzo.zzb(zzaxX), zzo.zzc(zzaxX), new Container(zzo.zzd(zzaxX), zzo.zzb(zzaxX).getDataLayer(), zzo.zza(zzaxX), l, localzzc), new zzn.zza()
    {
      public void zzcQ(String paramAnonymousString)
      {
        zzaxX.zzcQ(paramAnonymousString);
      }
      
      public String zzsK()
      {
        return zzaxX.zzsK();
      }
      
      public void zzsM()
      {
        if (zzo.zze(zzaxX).zzgv()) {
          zzaxX.load(zzaxW);
        }
      }
    }));
    zzaxX.setResult(zzo.zzf(zzaxX));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzo.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */