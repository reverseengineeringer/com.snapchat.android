package com.google.android.gms.internal;

import android.content.Context;
import cb;
import java.util.List;

@zzgi
public class zzgf
  extends zzgb
{
  private zzdr zzlD;
  private zzdk zzsf;
  private zzdi zzvW;
  protected zzdo zzvX;
  
  zzgf(Context paramContext, zzhe.zza paramzza, zzic paramzzic, zzdr paramzzdr, zzgc.zza paramzza1)
  {
    super(paramContext, paramzza, paramzzic, paramzza1);
    zzlD = paramzzdr;
    zzsf = zzyt;
  }
  
  public void onStop()
  {
    synchronized (zzvM)
    {
      super.onStop();
      if (zzvW != null) {
        zzvW.cancel();
      }
      return;
    }
  }
  
  protected void zzg(long paramLong)
  {
    synchronized (zzvM)
    {
      zzvW = new zzdi(mContext, zzvN.zzyy, zzlD, zzsf);
      zzvX = zzvW.zza(paramLong, 60000L);
      switch (zzvX.zzsK)
      {
      default: 
        throw new zzgb.zza("Unexpected mediation result: " + zzvX.zzsK, 0);
      }
    }
    throw new zzgb.zza("No fill from any mediation ad networks.", 3);
  }
  
  protected zzhe zzt(int paramInt)
  {
    zzgo localzzgo = zzvN.zzyy;
    zzax localzzax = zzwn;
    zzic localzzic = zzmu;
    List localList1 = zzvO.zzst;
    List localList2 = zzvO.zzsu;
    List localList3 = zzvO.zzwK;
    int i = zzvO.orientation;
    long l = zzvO.zzsx;
    String str2 = zzwq;
    boolean bool = zzvO.zzwI;
    zzdj localzzdj;
    zzds localzzds;
    label113:
    String str1;
    label129:
    zzdk localzzdk;
    if (zzvX != null)
    {
      localzzdj = zzvX.zzsL;
      if (zzvX == null) {
        break label247;
      }
      localzzds = zzvX.zzsM;
      if (zzvX == null) {
        break label253;
      }
      str1 = zzvX.zzsN;
      localzzdk = zzsf;
      if (zzvX == null) {
        break label263;
      }
    }
    label247:
    label253:
    label263:
    for (zzdm localzzdm = zzvX.zzsO;; localzzdm = null)
    {
      return new zzhe(localzzax, localzzic, localList1, paramInt, localList2, localList3, i, l, str2, bool, localzzdj, localzzds, str1, localzzdk, localzzdm, zzvO.zzwJ, zzvN.zzlV, zzvO.zzwH, zzvN.zzyv, zzvO.zzwM, zzvO.zzwN, zzvN.zzys, null, zzwD);
      localzzdj = null;
      break;
      localzzds = null;
      break label113;
      str1 = cb.class.getName();
      break label129;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */