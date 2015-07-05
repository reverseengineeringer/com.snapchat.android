package com.google.android.gms.ads.search;

import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.internal.zzbo.zza;

public final class SearchAdRequest$Builder
{
  private int zzAA;
  private int zzAB;
  private int zzAC;
  private int zzAD;
  private int zzAE = 0;
  private int zzAF;
  private String zzAG;
  private int zzAH;
  private String zzAI;
  private int zzAJ;
  private int zzAK;
  private String zzAL;
  private int zzAy;
  private int zzAz;
  private final zzbo.zza zzlh = new zzbo.zza();
  
  public final Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> paramClass, Bundle paramBundle)
  {
    zzlh.zzb(paramClass, paramBundle);
    return this;
  }
  
  public final Builder addNetworkExtras(NetworkExtras paramNetworkExtras)
  {
    zzlh.zza(paramNetworkExtras);
    return this;
  }
  
  public final Builder addNetworkExtrasBundle(Class<? extends MediationAdapter> paramClass, Bundle paramBundle)
  {
    zzlh.zza(paramClass, paramBundle);
    return this;
  }
  
  public final Builder addTestDevice(String paramString)
  {
    zzlh.zzs(paramString);
    return this;
  }
  
  public final SearchAdRequest build()
  {
    return new SearchAdRequest(this, null);
  }
  
  public final Builder setAnchorTextColor(int paramInt)
  {
    zzAy = paramInt;
    return this;
  }
  
  public final Builder setBackgroundColor(int paramInt)
  {
    zzAz = paramInt;
    zzAA = Color.argb(0, 0, 0, 0);
    zzAB = Color.argb(0, 0, 0, 0);
    return this;
  }
  
  public final Builder setBackgroundGradient(int paramInt1, int paramInt2)
  {
    zzAz = Color.argb(0, 0, 0, 0);
    zzAA = paramInt2;
    zzAB = paramInt1;
    return this;
  }
  
  public final Builder setBorderColor(int paramInt)
  {
    zzAC = paramInt;
    return this;
  }
  
  public final Builder setBorderThickness(int paramInt)
  {
    zzAD = paramInt;
    return this;
  }
  
  public final Builder setBorderType(int paramInt)
  {
    zzAE = paramInt;
    return this;
  }
  
  public final Builder setCallButtonColor(int paramInt)
  {
    zzAF = paramInt;
    return this;
  }
  
  public final Builder setCustomChannels(String paramString)
  {
    zzAG = paramString;
    return this;
  }
  
  public final Builder setDescriptionTextColor(int paramInt)
  {
    zzAH = paramInt;
    return this;
  }
  
  public final Builder setFontFace(String paramString)
  {
    zzAI = paramString;
    return this;
  }
  
  public final Builder setHeaderTextColor(int paramInt)
  {
    zzAJ = paramInt;
    return this;
  }
  
  public final Builder setHeaderTextSize(int paramInt)
  {
    zzAK = paramInt;
    return this;
  }
  
  public final Builder setLocation(Location paramLocation)
  {
    zzlh.zza(paramLocation);
    return this;
  }
  
  public final Builder setQuery(String paramString)
  {
    zzAL = paramString;
    return this;
  }
  
  public final Builder setRequestAgent(String paramString)
  {
    zzlh.zzw(paramString);
    return this;
  }
  
  public final Builder tagForChildDirectedTreatment(boolean paramBoolean)
  {
    zzlh.zzk(paramBoolean);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.search.SearchAdRequest.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */