package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@zzgi
public final class zzbs
  implements SafeParcelable
{
  public static final zzbt CREATOR = new zzbt();
  public final int backgroundColor;
  public final int versionCode;
  public final int zzpN;
  public final int zzpO;
  public final int zzpP;
  public final int zzpQ;
  public final int zzpR;
  public final int zzpS;
  public final int zzpT;
  public final String zzpU;
  public final int zzpV;
  public final String zzpW;
  public final int zzpX;
  public final int zzpY;
  public final String zzpZ;
  
  zzbs(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, String paramString1, int paramInt10, String paramString2, int paramInt11, int paramInt12, String paramString3)
  {
    versionCode = paramInt1;
    zzpN = paramInt2;
    backgroundColor = paramInt3;
    zzpO = paramInt4;
    zzpP = paramInt5;
    zzpQ = paramInt6;
    zzpR = paramInt7;
    zzpS = paramInt8;
    zzpT = paramInt9;
    zzpU = paramString1;
    zzpV = paramInt10;
    zzpW = paramString2;
    zzpX = paramInt11;
    zzpY = paramInt12;
    zzpZ = paramString3;
  }
  
  public zzbs(SearchAdRequest paramSearchAdRequest)
  {
    versionCode = 1;
    zzpN = paramSearchAdRequest.getAnchorTextColor();
    backgroundColor = paramSearchAdRequest.getBackgroundColor();
    zzpO = paramSearchAdRequest.getBackgroundGradientBottom();
    zzpP = paramSearchAdRequest.getBackgroundGradientTop();
    zzpQ = paramSearchAdRequest.getBorderColor();
    zzpR = paramSearchAdRequest.getBorderThickness();
    zzpS = paramSearchAdRequest.getBorderType();
    zzpT = paramSearchAdRequest.getCallButtonColor();
    zzpU = paramSearchAdRequest.getCustomChannels();
    zzpV = paramSearchAdRequest.getDescriptionTextColor();
    zzpW = paramSearchAdRequest.getFontFace();
    zzpX = paramSearchAdRequest.getHeaderTextColor();
    zzpY = paramSearchAdRequest.getHeaderTextSize();
    zzpZ = paramSearchAdRequest.getQuery();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzbt.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzbs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */