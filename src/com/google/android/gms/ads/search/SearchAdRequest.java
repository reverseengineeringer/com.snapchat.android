package com.google.android.gms.ads.search;

import android.content.Context;
import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.internal.zzbo;
import com.google.android.gms.internal.zzbo.zza;

public final class SearchAdRequest
{
  public static final int BORDER_TYPE_DASHED = 1;
  public static final int BORDER_TYPE_DOTTED = 2;
  public static final int BORDER_TYPE_NONE = 0;
  public static final int BORDER_TYPE_SOLID = 3;
  public static final int CALL_BUTTON_COLOR_DARK = 2;
  public static final int CALL_BUTTON_COLOR_LIGHT = 0;
  public static final int CALL_BUTTON_COLOR_MEDIUM = 1;
  public static final String DEVICE_ID_EMULATOR = zzbo.DEVICE_ID_EMULATOR;
  public static final int ERROR_CODE_INTERNAL_ERROR = 0;
  public static final int ERROR_CODE_INVALID_REQUEST = 1;
  public static final int ERROR_CODE_NETWORK_ERROR = 2;
  public static final int ERROR_CODE_NO_FILL = 3;
  private final int zzAA;
  private final int zzAB;
  private final int zzAC;
  private final int zzAD;
  private final int zzAE;
  private final int zzAF;
  private final String zzAG;
  private final int zzAH;
  private final String zzAI;
  private final int zzAJ;
  private final int zzAK;
  private final String zzAL;
  private final int zzAy;
  private final int zzAz;
  private final zzbo zzlg;
  
  private SearchAdRequest(Builder paramBuilder)
  {
    zzAy = Builder.zza(paramBuilder);
    zzAz = Builder.zzb(paramBuilder);
    zzAA = Builder.zzc(paramBuilder);
    zzAB = Builder.zzd(paramBuilder);
    zzAC = Builder.zze(paramBuilder);
    zzAD = Builder.zzf(paramBuilder);
    zzAE = Builder.zzg(paramBuilder);
    zzAF = Builder.zzh(paramBuilder);
    zzAG = Builder.zzi(paramBuilder);
    zzAH = Builder.zzj(paramBuilder);
    zzAI = Builder.zzk(paramBuilder);
    zzAJ = Builder.zzl(paramBuilder);
    zzAK = Builder.zzm(paramBuilder);
    zzAL = Builder.zzn(paramBuilder);
    zzlg = new zzbo(Builder.zzo(paramBuilder), this);
  }
  
  public final int getAnchorTextColor()
  {
    return zzAy;
  }
  
  public final int getBackgroundColor()
  {
    return zzAz;
  }
  
  public final int getBackgroundGradientBottom()
  {
    return zzAA;
  }
  
  public final int getBackgroundGradientTop()
  {
    return zzAB;
  }
  
  public final int getBorderColor()
  {
    return zzAC;
  }
  
  public final int getBorderThickness()
  {
    return zzAD;
  }
  
  public final int getBorderType()
  {
    return zzAE;
  }
  
  public final int getCallButtonColor()
  {
    return zzAF;
  }
  
  public final String getCustomChannels()
  {
    return zzAG;
  }
  
  public final <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> paramClass)
  {
    return zzlg.getCustomEventExtrasBundle(paramClass);
  }
  
  public final int getDescriptionTextColor()
  {
    return zzAH;
  }
  
  public final String getFontFace()
  {
    return zzAI;
  }
  
  public final int getHeaderTextColor()
  {
    return zzAJ;
  }
  
  public final int getHeaderTextSize()
  {
    return zzAK;
  }
  
  public final Location getLocation()
  {
    return zzlg.getLocation();
  }
  
  @Deprecated
  public final <T extends NetworkExtras> T getNetworkExtras(Class<T> paramClass)
  {
    return zzlg.getNetworkExtras(paramClass);
  }
  
  public final <T extends MediationAdapter> Bundle getNetworkExtrasBundle(Class<T> paramClass)
  {
    return zzlg.getNetworkExtrasBundle(paramClass);
  }
  
  public final String getQuery()
  {
    return zzAL;
  }
  
  public final boolean isTestDevice(Context paramContext)
  {
    return zzlg.isTestDevice(paramContext);
  }
  
  final zzbo zzY()
  {
    return zzlg;
  }
  
  public static final class Builder
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.search.SearchAdRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */