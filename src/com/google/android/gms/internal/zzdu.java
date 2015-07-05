package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.Set;

@zzgi
public final class zzdu
  implements MediationAdRequest
{
  private final Date zzd;
  private final Set<String> zzf;
  private final boolean zzg;
  private final Location zzh;
  private final int zzpo;
  private final int zzsQ;
  
  public zzdu(Date paramDate, int paramInt1, Set<String> paramSet, Location paramLocation, boolean paramBoolean, int paramInt2)
  {
    zzd = paramDate;
    zzpo = paramInt1;
    zzf = paramSet;
    zzh = paramLocation;
    zzg = paramBoolean;
    zzsQ = paramInt2;
  }
  
  public final Date getBirthday()
  {
    return zzd;
  }
  
  public final int getGender()
  {
    return zzpo;
  }
  
  public final Set<String> getKeywords()
  {
    return zzf;
  }
  
  public final Location getLocation()
  {
    return zzh;
  }
  
  public final boolean isTesting()
  {
    return zzg;
  }
  
  public final int taggedForChildDirectedTreatment()
  {
    return zzsQ;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */