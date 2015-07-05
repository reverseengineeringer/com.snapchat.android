package com.google.android.gms.internal;

import bt.a;
import bt.b;
import bu;
import bv;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.zza;
import java.util.Date;
import java.util.HashSet;

@zzgi
public final class zzdz
{
  public static int zza(bt.a parama)
  {
    switch (1.zzsY[parama.ordinal()])
    {
    default: 
      return 0;
    case 2: 
      return 1;
    case 3: 
      return 2;
    }
    return 3;
  }
  
  public static bu zzb(zzba paramzzba)
  {
    int i = 0;
    bu[] arrayOfbu = new bu[6];
    arrayOfbu[0] = bu.b;
    arrayOfbu[1] = bu.c;
    arrayOfbu[2] = bu.d;
    arrayOfbu[3] = bu.e;
    arrayOfbu[4] = bu.f;
    arrayOfbu[5] = bu.g;
    while (i < 6)
    {
      if ((a.getWidth() == width) && (a.getHeight() == height)) {
        return arrayOfbu[i];
      }
      i += 1;
    }
    return new bu(zza.zza(width, height, zzpa));
  }
  
  public static bv zzd(zzax paramzzax)
  {
    if (zzoN != null) {}
    for (HashSet localHashSet = new HashSet(zzoN);; localHashSet = null) {
      return new bv(new Date(zzoL), zzn$14f54961(zzoM), localHashSet, zzoO, zzoT);
    }
  }
  
  public static int zzn$14f54961(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return bt.b.a;
    case 2: 
      return bt.b.c;
    }
    return bt.b.b;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */