package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Messenger;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

@zzgi
public final class zzgo
  implements SafeParcelable
{
  public static final zzgp CREATOR = new zzgp();
  public final ApplicationInfo applicationInfo;
  public final int versionCode;
  public final String zzlM;
  public final zzhy zzlP;
  public final zzba zzlV;
  public final List<String> zzmf;
  public final String zzwA;
  public final boolean zzwB;
  public final int zzwC;
  public final String zzwD;
  public final long zzwE;
  public final String zzwF;
  public final Bundle zzwm;
  public final zzax zzwn;
  public final PackageInfo zzwo;
  public final String zzwp;
  public final String zzwq;
  public final String zzwr;
  public final Bundle zzws;
  public final int zzwt;
  public final Bundle zzwu;
  public final boolean zzwv;
  public final Messenger zzww;
  public final int zzwx;
  public final int zzwy;
  public final float zzwz;
  
  zzgo(int paramInt1, Bundle paramBundle1, zzax paramzzax, zzba paramzzba, String paramString1, ApplicationInfo paramApplicationInfo, PackageInfo paramPackageInfo, String paramString2, String paramString3, String paramString4, zzhy paramzzhy, Bundle paramBundle2, int paramInt2, List<String> paramList, Bundle paramBundle3, boolean paramBoolean1, Messenger paramMessenger, int paramInt3, int paramInt4, float paramFloat, String paramString5, boolean paramBoolean2, int paramInt5, String paramString6, long paramLong, String paramString7)
  {
    versionCode = paramInt1;
    zzwm = paramBundle1;
    zzwn = paramzzax;
    zzlV = paramzzba;
    zzlM = paramString1;
    applicationInfo = paramApplicationInfo;
    zzwo = paramPackageInfo;
    zzwp = paramString2;
    zzwq = paramString3;
    zzwr = paramString4;
    zzlP = paramzzhy;
    zzws = paramBundle2;
    zzwt = paramInt2;
    zzmf = paramList;
    zzwu = paramBundle3;
    zzwv = paramBoolean1;
    zzww = paramMessenger;
    zzwx = paramInt3;
    zzwy = paramInt4;
    zzwz = paramFloat;
    zzwA = paramString5;
    zzwB = paramBoolean2;
    zzwC = paramInt5;
    zzwD = paramString6;
    zzwE = paramLong;
    zzwF = paramString7;
  }
  
  public zzgo(Bundle paramBundle1, zzax paramzzax, zzba paramzzba, String paramString1, ApplicationInfo paramApplicationInfo, PackageInfo paramPackageInfo, String paramString2, String paramString3, String paramString4, zzhy paramzzhy, Bundle paramBundle2, int paramInt1, List<String> paramList, Bundle paramBundle3, boolean paramBoolean1, Messenger paramMessenger, int paramInt2, int paramInt3, float paramFloat, String paramString5, boolean paramBoolean2, int paramInt4, String paramString6, long paramLong, String paramString7)
  {
    this(7, paramBundle1, paramzzax, paramzzba, paramString1, paramApplicationInfo, paramPackageInfo, paramString2, paramString3, paramString4, paramzzhy, paramBundle2, paramInt1, paramList, paramBundle3, paramBoolean1, paramMessenger, paramInt2, paramInt3, paramFloat, paramString5, paramBoolean2, paramInt4, paramString6, paramLong, paramString7);
  }
  
  public zzgo(zza paramzza, String paramString1, String paramString2)
  {
    this(zzwm, zzwn, zzlV, zzlM, applicationInfo, zzwo, paramString1, zzwq, zzwr, zzlP, zzws, zzwt, zzmf, zzwu, zzwv, zzww, zzwx, zzwy, zzwz, zzwA, zzwB, zzwC, paramString2, zzwE, zzwF);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzgp.zza(this, paramParcel, paramInt);
  }
  
  @zzgi
  public static final class zza
  {
    public final ApplicationInfo applicationInfo;
    public final String zzlM;
    public final zzhy zzlP;
    public final zzba zzlV;
    public final List<String> zzmf;
    public final String zzwA;
    public final boolean zzwB;
    public final int zzwC;
    public final long zzwE;
    public final String zzwF;
    public final Bundle zzwm;
    public final zzax zzwn;
    public final PackageInfo zzwo;
    public final String zzwq;
    public final String zzwr;
    public final Bundle zzws;
    public final int zzwt;
    public final Bundle zzwu;
    public final boolean zzwv;
    public final Messenger zzww;
    public final int zzwx;
    public final int zzwy;
    public final float zzwz;
    
    public zza(Bundle paramBundle1, zzax paramzzax, zzba paramzzba, String paramString1, ApplicationInfo paramApplicationInfo, PackageInfo paramPackageInfo, String paramString2, String paramString3, zzhy paramzzhy, Bundle paramBundle2, List<String> paramList, Bundle paramBundle3, boolean paramBoolean1, Messenger paramMessenger, int paramInt1, int paramInt2, float paramFloat, String paramString4, boolean paramBoolean2, int paramInt3, long paramLong, String paramString5)
    {
      zzwm = paramBundle1;
      zzwn = paramzzax;
      zzlV = paramzzba;
      zzlM = paramString1;
      applicationInfo = paramApplicationInfo;
      zzwo = paramPackageInfo;
      zzwq = paramString2;
      zzwr = paramString3;
      zzlP = paramzzhy;
      zzws = paramBundle2;
      zzwv = paramBoolean1;
      zzww = paramMessenger;
      zzwx = paramInt1;
      zzwy = paramInt2;
      zzwz = paramFloat;
      if ((paramList != null) && (paramList.size() > 0)) {
        zzwt = 2;
      }
      for (zzmf = paramList;; zzmf = null)
      {
        zzwu = paramBundle3;
        zzwA = paramString4;
        zzwB = paramBoolean2;
        zzwC = paramInt3;
        zzwE = paramLong;
        zzwF = paramString5;
        return;
        zzwt = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */