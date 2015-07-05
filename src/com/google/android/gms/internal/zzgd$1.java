package com.google.android.gms.internal;

class zzgd$1
  implements Runnable
{
  zzgd$1(zzgd paramzzgd) {}
  
  public void run()
  {
    synchronized (zzvS.zznh)
    {
      if (zzvS.zzvO.errorCode != -2) {
        return;
      }
      zzvS.zzmu.zzeG().zza(zzvS);
      zzvS.zzdG();
      zzhx.zzab("Loading HTML in WebView.");
      zzvS.zzmu.loadDataWithBaseURL(zzab.zzaM().zzS(zzvS.zzvO.zzus), zzvS.zzvO.zzwG, "text/html", "UTF-8", null);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgd.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */