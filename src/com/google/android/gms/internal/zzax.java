package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

@zzgi
public final class zzax
  implements SafeParcelable
{
  public static final zzay CREATOR = new zzay();
  public final Bundle extras;
  public final int versionCode;
  public final long zzoL;
  public final int zzoM;
  public final List<String> zzoN;
  public final boolean zzoO;
  public final int zzoP;
  public final boolean zzoQ;
  public final String zzoR;
  public final zzbs zzoS;
  public final Location zzoT;
  public final String zzoU;
  public final Bundle zzoV;
  public final Bundle zzoW;
  public final List<String> zzoX;
  public final String zzoY;
  
  public zzax(int paramInt1, long paramLong, Bundle paramBundle1, int paramInt2, List<String> paramList1, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, String paramString1, zzbs paramzzbs, Location paramLocation, String paramString2, Bundle paramBundle2, Bundle paramBundle3, List<String> paramList2, String paramString3)
  {
    versionCode = paramInt1;
    zzoL = paramLong;
    extras = paramBundle1;
    zzoM = paramInt2;
    zzoN = paramList1;
    zzoO = paramBoolean1;
    zzoP = paramInt3;
    zzoQ = paramBoolean2;
    zzoR = paramString1;
    zzoS = paramzzbs;
    zzoT = paramLocation;
    zzoU = paramString2;
    zzoV = paramBundle2;
    zzoW = paramBundle3;
    zzoX = paramList2;
    zzoY = paramString3;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzay.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */