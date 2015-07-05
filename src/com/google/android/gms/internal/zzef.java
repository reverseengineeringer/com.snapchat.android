package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

@zzgi
public class zzef
  extends zzeg
{
  private final Context mContext;
  private final zzic zzmu;
  private final WindowManager zznu;
  private final zzbu zztF;
  DisplayMetrics zztG;
  private float zztH;
  int zztI = -1;
  int zztJ = -1;
  private int zztK;
  int zztL = -1;
  int zztM = -1;
  int zztN = -1;
  int zztO = -1;
  
  public zzef(zzic paramzzic, Context paramContext, zzbu paramzzbu)
  {
    super(paramzzic);
    zzmu = paramzzic;
    mContext = paramContext;
    zztF = paramzzbu;
    zznu = ((WindowManager)paramContext.getSystemService("window"));
  }
  
  private void zzcS()
  {
    zztG = new DisplayMetrics();
    Display localDisplay = zznu.getDefaultDisplay();
    localDisplay.getMetrics(zztG);
    zztH = zztG.density;
    zztK = localDisplay.getRotation();
  }
  
  private void zzcX()
  {
    int[] arrayOfInt = new int[2];
    zzmu.getLocationOnScreen(arrayOfInt);
    zzf(zzbe.zzbD().zzc(mContext, arrayOfInt[0]), zzbe.zzbD().zzc(mContext, arrayOfInt[1]));
  }
  
  private zzee zzda()
  {
    return new zzee.zza().zzo(zztF.zzbP()).zzn(zztF.zzbQ()).zzp(zztF.zzbU()).zzq(zztF.zzbR()).zzr(zztF.zzbS()).zzcR();
  }
  
  void zzcT()
  {
    zztI = zzbe.zzbD().zzb(zztG, zztG.widthPixels);
    zztJ = zzbe.zzbD().zzb(zztG, zztG.heightPixels);
    Object localObject = zzmu.zzeD();
    if ((localObject == null) || (((Activity)localObject).getWindow() == null))
    {
      zztL = zztI;
      zztM = zztJ;
      return;
    }
    localObject = zzab.zzaM().zzg((Activity)localObject);
    zztL = zzbe.zzbD().zzb(zztG, localObject[0]);
    zztM = zzbe.zzbD().zzb(zztG, localObject[1]);
  }
  
  void zzcU()
  {
    if (zzmu.zzad().zzpb)
    {
      zztN = zztI;
      zztO = zztJ;
      return;
    }
    zzmu.measure(0, 0);
    zztN = zzbe.zzbD().zzc(mContext, zzmu.getMeasuredWidth());
    zztO = zzbe.zzbD().zzc(mContext, zzmu.getMeasuredHeight());
  }
  
  public void zzcV()
  {
    zzcS();
    zzcT();
    zzcU();
    zzcY();
    zzcZ();
    zzcX();
    zzcW();
  }
  
  void zzcW()
  {
    if (zzhx.zzA(2)) {
      zzhx.zzaa("Dispatching Ready Event.");
    }
    zzI(zzmu.zzeJ().zzzH);
  }
  
  void zzcY()
  {
    zza(zztI, zztJ, zztL, zztM, zztH, zztK);
  }
  
  void zzcZ()
  {
    zzee localzzee = zzda();
    zzmu.zzb("onDeviceFeaturesReceived", localzzee.toJson());
  }
  
  public void zzf(int paramInt1, int paramInt2)
  {
    if ((mContext instanceof Activity)) {}
    for (int i = zzab.zzaM().zzj((Activity)mContext)[0];; i = 0)
    {
      zzc(paramInt1, paramInt2 - i, zztN, zztO);
      zzmu.zzeG().zze(paramInt1, paramInt2);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */