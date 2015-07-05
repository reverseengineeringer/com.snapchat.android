package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.Collections;
import java.util.List;

public class zzpy$zza
{
  private String mName;
  private String zzFA;
  private int zzFG = 0;
  private String zzYy;
  private LatLng zzant;
  private String zzanv;
  private Uri zzanw;
  private String zzaoA;
  private boolean zzaoB;
  private float zzaoC;
  private int zzaoD;
  private long zzaoE;
  private String zzaoG;
  private List<String> zzaoH;
  private boolean zzaoI;
  private Bundle zzaoM;
  private List<Integer> zzaoN;
  private float zzaoy;
  private LatLngBounds zzaoz;
  
  public zza zzX(boolean paramBoolean)
  {
    zzaoB = paramBoolean;
    return this;
  }
  
  public zza zzY(boolean paramBoolean)
  {
    zzaoI = paramBoolean;
    return this;
  }
  
  public zza zza(LatLng paramLatLng)
  {
    zzant = paramLatLng;
    return this;
  }
  
  public zza zza(LatLngBounds paramLatLngBounds)
  {
    zzaoz = paramLatLngBounds;
    return this;
  }
  
  public zza zzc(float paramFloat)
  {
    zzaoy = paramFloat;
    return this;
  }
  
  public zza zzco(String paramString)
  {
    zzFA = paramString;
    return this;
  }
  
  public zza zzcp(String paramString)
  {
    mName = paramString;
    return this;
  }
  
  public zza zzcq(String paramString)
  {
    zzYy = paramString;
    return this;
  }
  
  public zza zzcr(String paramString)
  {
    zzanv = paramString;
    return this;
  }
  
  public zza zzd(float paramFloat)
  {
    zzaoC = paramFloat;
    return this;
  }
  
  public zza zzfH(int paramInt)
  {
    zzaoD = paramInt;
    return this;
  }
  
  public zza zzk(Uri paramUri)
  {
    zzanw = paramUri;
    return this;
  }
  
  public zza zzo(List<Integer> paramList)
  {
    zzaoN = paramList;
    return this;
  }
  
  public zza zzp(List<String> paramList)
  {
    zzaoH = paramList;
    return this;
  }
  
  public zzpy zzpW()
  {
    return new zzpy(zzFG, zzFA, zzaoN, Collections.emptyList(), zzaoM, mName, zzYy, zzanv, zzaoG, zzaoH, zzant, zzaoy, zzaoz, zzaoA, zzanw, zzaoB, zzaoC, zzaoD, zzaoE, zzaoI, zzqd.zza(mName, zzYy, zzanv, zzaoG, zzaoH));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpy.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */