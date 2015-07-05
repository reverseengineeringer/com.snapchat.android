package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Messenger;
import java.util.List;

@zzgi
public final class zzgo$zza
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
  
  public zzgo$zza(Bundle paramBundle1, zzax paramzzax, zzba paramzzba, String paramString1, ApplicationInfo paramApplicationInfo, PackageInfo paramPackageInfo, String paramString2, String paramString3, zzhy paramzzhy, Bundle paramBundle2, List<String> paramList, Bundle paramBundle3, boolean paramBoolean1, Messenger paramMessenger, int paramInt1, int paramInt2, float paramFloat, String paramString4, boolean paramBoolean2, int paramInt3, long paramLong, String paramString5)
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

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgo.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */