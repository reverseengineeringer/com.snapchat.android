package com.google.android.gms.internal;

class zzga$1
  implements Runnable
{
  zzga$1(zzga paramzzga, zzfz paramzzfz) {}
  
  public void run()
  {
    synchronized (zzvK.zznh)
    {
      if (zzvK.zzvO.errorCode != -2) {
        return;
      }
      zzvK.zzmu.zzeG().zza(zzvK);
      zzvJ.zza(zzvK.zzvO);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzga.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */