package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

public final class zzpy
  implements SafeParcelable, Place
{
  public static final zzpz CREATOR = new zzpz();
  private final String mName;
  private final String zzFA;
  final int zzFG;
  private final String zzYy;
  private final LatLng zzant;
  private final List<Integer> zzanu;
  private final String zzanv;
  private final Uri zzanw;
  private final String zzaoA;
  private final boolean zzaoB;
  private final float zzaoC;
  private final int zzaoD;
  private final long zzaoE;
  private final List<Integer> zzaoF;
  private final String zzaoG;
  private final List<String> zzaoH;
  final boolean zzaoI;
  private final Map<Integer, String> zzaoJ;
  private final TimeZone zzaoK;
  private zzqf zzaoL;
  private Locale zzaoq;
  private final Bundle zzaow;
  @Deprecated
  private final zzqd zzaox;
  private final float zzaoy;
  private final LatLngBounds zzaoz;
  
  zzpy(int paramInt1, String paramString1, List<Integer> paramList1, List<Integer> paramList2, Bundle paramBundle, String paramString2, String paramString3, String paramString4, String paramString5, List<String> paramList, LatLng paramLatLng, float paramFloat1, LatLngBounds paramLatLngBounds, String paramString6, Uri paramUri, boolean paramBoolean1, float paramFloat2, int paramInt2, long paramLong, boolean paramBoolean2, zzqd paramzzqd)
  {
    zzFG = paramInt1;
    zzFA = paramString1;
    zzanu = Collections.unmodifiableList(paramList1);
    zzaoF = paramList2;
    if (paramBundle != null)
    {
      zzaow = paramBundle;
      mName = paramString2;
      zzYy = paramString3;
      zzanv = paramString4;
      zzaoG = paramString5;
      if (paramList == null) {
        break label182;
      }
      label68:
      zzaoH = paramList;
      zzant = paramLatLng;
      zzaoy = paramFloat1;
      zzaoz = paramLatLngBounds;
      if (paramString6 == null) {
        break label190;
      }
    }
    for (;;)
    {
      zzaoA = paramString6;
      zzanw = paramUri;
      zzaoB = paramBoolean1;
      zzaoC = paramFloat2;
      zzaoD = paramInt2;
      zzaoE = paramLong;
      zzaoJ = Collections.unmodifiableMap(new HashMap());
      zzaoK = null;
      zzaoq = null;
      zzaoI = paramBoolean2;
      zzaox = paramzzqd;
      return;
      paramBundle = new Bundle();
      break;
      label182:
      paramList = Collections.emptyList();
      break label68;
      label190:
      paramString6 = "UTC";
    }
  }
  
  private void zzcn(String paramString)
  {
    if ((zzaoI) && (zzaoL != null)) {
      zzaoL.zzy(zzFA, paramString);
    }
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof zzpy)) {
        return false;
      }
      paramObject = (zzpy)paramObject;
    } while ((zzFA.equals(zzFA)) && (zzw.equal(zzaoq, zzaoq)) && (zzaoE == zzaoE));
    return false;
  }
  
  public final String getAddress()
  {
    zzcn("getAddress");
    return zzYy;
  }
  
  public final String getId()
  {
    zzcn("getId");
    return zzFA;
  }
  
  public final LatLng getLatLng()
  {
    zzcn("getLatLng");
    return zzant;
  }
  
  public final Locale getLocale()
  {
    zzcn("getLocale");
    return zzaoq;
  }
  
  public final String getName()
  {
    zzcn("getName");
    return mName;
  }
  
  public final String getPhoneNumber()
  {
    zzcn("getPhoneNumber");
    return zzanv;
  }
  
  public final List<Integer> getPlaceTypes()
  {
    zzcn("getPlaceTypes");
    return zzanu;
  }
  
  public final int getPriceLevel()
  {
    zzcn("getPriceLevel");
    return zzaoD;
  }
  
  public final float getRating()
  {
    zzcn("getRating");
    return zzaoC;
  }
  
  public final LatLngBounds getViewport()
  {
    zzcn("getViewport");
    return zzaoz;
  }
  
  public final Uri getWebsiteUri()
  {
    zzcn("getWebsiteUri");
    return zzanw;
  }
  
  public final int hashCode()
  {
    return zzw.hashCode(new Object[] { zzFA, zzaoq, Long.valueOf(zzaoE) });
  }
  
  public final boolean isDataValid()
  {
    return true;
  }
  
  public final void setLocale(Locale paramLocale)
  {
    zzaoq = paramLocale;
  }
  
  public final String toString()
  {
    return zzw.zzk(this).zza("id", zzFA).zza("placeTypes", zzanu).zza("locale", zzaoq).zza("name", mName).zza("address", zzYy).zza("phoneNumber", zzanv).zza("latlng", zzant).zza("viewport", zzaoz).zza("websiteUri", zzanw).zza("isPermanentlyClosed", Boolean.valueOf(zzaoB)).zza("priceLevel", Integer.valueOf(zzaoD)).zza("timestampSecs", Long.valueOf(zzaoE)).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzpz.zza(this, paramParcel, paramInt);
  }
  
  public final void zza(zzqf paramzzqf)
  {
    zzaoL = paramzzqf;
  }
  
  public final boolean zzpI()
  {
    zzcn("isPermanentlyClosed");
    return zzaoB;
  }
  
  public final List<Integer> zzpN()
  {
    zzcn("getTypesDeprecated");
    return zzaoF;
  }
  
  public final float zzpO()
  {
    zzcn("getLevelNumber");
    return zzaoy;
  }
  
  public final String zzpP()
  {
    zzcn("getRegularOpenHours");
    return zzaoG;
  }
  
  public final List<String> zzpQ()
  {
    zzcn("getAttributions");
    return zzaoH;
  }
  
  public final long zzpR()
  {
    return zzaoE;
  }
  
  public final Bundle zzpS()
  {
    return zzaow;
  }
  
  public final String zzpT()
  {
    return zzaoA;
  }
  
  @Deprecated
  public final zzqd zzpU()
  {
    zzcn("getLocalization");
    return zzaox;
  }
  
  public final Place zzpV()
  {
    return this;
  }
  
  public static class zza
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */