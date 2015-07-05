package com.google.android.gms.internal;

import java.util.Map;

class zzdf$2
  implements zzcv
{
  zzdf$2(zzdf paramzzdf, zzia paramzzia) {}
  
  public void zza(zzic arg1, Map<String, String> paramMap)
  {
    synchronized (zzdf.zza(zzrZ))
    {
      if ((zzrY.getStatus() == -1) || (zzrY.getStatus() == 1)) {
        return;
      }
      zzrY.zzc(zzdf.zzb(zzrZ));
      zzrY.zza(zzdf.zzc(zzrZ), new zzia.zzb());
      zzdf.zza(zzrZ, 0);
      if (zzrY != zzdf.zzd(zzrZ)) {
        zzrZ.zzd(zzdf.zzd(zzrZ));
      }
      zzdf.zza(zzrZ, zzrY);
      zzrZ.zzc(zzdf.zzd(zzrZ));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdf.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */