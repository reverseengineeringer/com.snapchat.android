package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import java.util.HashSet;
import java.util.List;

@zzgi
class zzt$zzb
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  public final String zzlM;
  public final Context zzlN;
  public final zzk zzlO;
  public final zzhy zzlP;
  public zzhl zzlQ;
  public zzbg zzlR;
  public zzt.zza zzlS;
  public zzbh zzlT;
  public zzhl zzlU;
  public zzba zzlV;
  public zzhe zzlW;
  public zzhe.zza zzlX;
  public zzhf zzlY;
  public zzbk zzlZ;
  public zzfs zzma;
  public zzfo zzmb;
  public zzcq zzmc;
  public zzcr zzmd;
  public zzcj zzme;
  public List<String> zzmf;
  public zzfl zzmg;
  public zzhj zzmh = null;
  public View zzmi = null;
  public int zzmj = 0;
  public boolean zzmk = false;
  public boolean zzml = false;
  public zzbl zzmm;
  private HashSet<zzhf> zzmn = null;
  private int zzmo = -1;
  private int zzmp = -1;
  
  public zzt$zzb(Context paramContext, zzba paramzzba, String paramString, zzhy paramzzhy)
  {
    this(paramContext, paramzzba, paramString, paramzzhy, null);
  }
  
  zzt$zzb(Context paramContext, zzba paramzzba, String paramString, zzhy paramzzhy, zzk paramzzk)
  {
    if (zzpb)
    {
      zzlS = null;
      if ((paramContext != null) && ((paramContext instanceof Activity)) && (zzlS != null)) {
        zzab.zzaM().zza((Activity)paramContext, this);
      }
      zzlV = paramzzba;
      zzlM = paramString;
      zzlN = paramContext;
      zzlP = paramzzhy;
      if (paramzzk == null) {
        break label163;
      }
    }
    for (;;)
    {
      zzlO = paramzzk;
      return;
      zzlS = new zzt.zza(paramContext);
      zzlS.setMinimumWidth(widthPixels);
      zzlS.setMinimumHeight(heightPixels);
      zzlS.setVisibility(4);
      break;
      label163:
      paramzzk = new zzk(new zzw(this));
    }
  }
  
  public void destroy()
  {
    zzlT = null;
    zzlZ = null;
    zzma = null;
    zzmb = null;
    zzme = null;
    zzmm = null;
    if ((zzlN != null) && ((zzlN instanceof Activity)) && (zzlS != null)) {
      zzab.zzaO().zzb((Activity)zzlN, this);
    }
    zzf(false);
    if (zzlS != null) {
      zzlS.removeAllViews();
    }
    zzay();
    zzaA();
    zzlW = null;
  }
  
  public void onGlobalLayout()
  {
    if ((zzlS == null) || (zzlW == null) || (zzlW.zzuq == null) || (!zzlW.zzuq.zzeG().zzba())) {}
    int i;
    int j;
    do
    {
      return;
      int[] arrayOfInt = new int[2];
      zzlS.getLocationOnScreen(arrayOfInt);
      i = zzbe.zzbD().zzc(zzlN, arrayOfInt[0]);
      j = zzbe.zzbD().zzc(zzlN, arrayOfInt[1]);
    } while ((i == zzmo) && (j == zzmp));
    zzmo = i;
    zzmp = j;
    zzlW.zzuq.zzeG().zzb(zzmo, zzmp);
  }
  
  public void zza(HashSet<zzhf> paramHashSet)
  {
    zzmn = paramHashSet;
  }
  
  public void zzaA()
  {
    if ((zzlW != null) && (zzlW.zzsM != null)) {}
    try
    {
      zzlW.zzsM.destroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzac("Could not destroy mediation adapter.");
    }
  }
  
  public HashSet<zzhf> zzax()
  {
    return zzmn;
  }
  
  public void zzay()
  {
    if ((zzlW != null) && (zzlW.zzuq != null)) {
      zzlW.zzuq.destroy();
    }
  }
  
  public void zzaz()
  {
    if ((zzlW != null) && (zzlW.zzuq != null)) {
      zzlW.zzuq.stopLoading();
    }
  }
  
  public void zzf(boolean paramBoolean)
  {
    if (zzmj == 0) {
      zzaz();
    }
    if (zzlQ != null) {
      zzlQ.cancel();
    }
    if (zzlU != null) {
      zzlU.cancel();
    }
    if (paramBoolean) {
      zzlW = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzt.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */