package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

@zzgi
public class zzhe
{
  public final int errorCode;
  public final int orientation;
  public final zzdj zzsL;
  public final zzds zzsM;
  public final String zzsN;
  public final zzdm zzsO;
  public final List<String> zzst;
  public final List<String> zzsu;
  public final long zzsx;
  public final zzic zzuq;
  public final String zzwD;
  public final long zzwH;
  public final boolean zzwI;
  public final long zzwJ;
  public final List<String> zzwK;
  public final String zzwN;
  public final zzax zzwn;
  public final String zzwq;
  public final JSONObject zzys;
  public final zzdk zzyt;
  public final zzba zzyu;
  public final long zzyv;
  public final long zzyw;
  public final zzcn.zza zzyx;
  
  public zzhe(zzax paramzzax, zzic paramzzic, List<String> paramList1, int paramInt1, List<String> paramList2, List<String> paramList3, int paramInt2, long paramLong1, String paramString1, boolean paramBoolean, zzdj paramzzdj, zzds paramzzds, String paramString2, zzdk paramzzdk, zzdm paramzzdm, long paramLong2, zzba paramzzba, long paramLong3, long paramLong4, long paramLong5, String paramString3, JSONObject paramJSONObject, zzcn.zza paramzza, String paramString4)
  {
    zzwn = paramzzax;
    zzuq = paramzzic;
    if (paramList1 != null)
    {
      paramzzax = Collections.unmodifiableList(paramList1);
      zzst = paramzzax;
      errorCode = paramInt1;
      if (paramList2 == null) {
        break label180;
      }
      paramzzax = Collections.unmodifiableList(paramList2);
      label45:
      zzsu = paramzzax;
      if (paramList3 == null) {
        break label185;
      }
    }
    label180:
    label185:
    for (paramzzax = Collections.unmodifiableList(paramList3);; paramzzax = null)
    {
      zzwK = paramzzax;
      orientation = paramInt2;
      zzsx = paramLong1;
      zzwq = paramString1;
      zzwI = paramBoolean;
      zzsL = paramzzdj;
      zzsM = paramzzds;
      zzsN = paramString2;
      zzyt = paramzzdk;
      zzsO = paramzzdm;
      zzwJ = paramLong2;
      zzyu = paramzzba;
      zzwH = paramLong3;
      zzyv = paramLong4;
      zzyw = paramLong5;
      zzwN = paramString3;
      zzys = paramJSONObject;
      zzyx = paramzza;
      zzwD = paramString4;
      return;
      paramzzax = null;
      break;
      paramzzax = null;
      break label45;
    }
  }
  
  public zzhe(zza paramzza, zzic paramzzic, zzdj paramzzdj, zzds paramzzds, String paramString, zzdm paramzzdm, zzcn.zza paramzza1)
  {
    this(zzyy.zzwn, paramzzic, zzyz.zzst, errorCode, zzyz.zzsu, zzyz.zzwK, zzyz.orientation, zzyz.zzsx, zzyy.zzwq, zzyz.zzwI, paramzzdj, paramzzds, paramString, zzyt, paramzzdm, zzyz.zzwJ, zzlV, zzyz.zzwH, zzyv, zzyw, zzyz.zzwN, zzys, paramzza1, zzyy.zzwD);
  }
  
  public boolean zzba()
  {
    if ((zzuq == null) || (zzuq.zzeG() == null)) {
      return false;
    }
    return zzuq.zzeG().zzba();
  }
  
  @zzgi
  public static final class zza
  {
    public final int errorCode;
    public final zzba zzlV;
    public final JSONObject zzys;
    public final zzdk zzyt;
    public final long zzyv;
    public final long zzyw;
    public final zzgo zzyy;
    public final zzgq zzyz;
    
    public zza(zzgo paramzzgo, zzgq paramzzgq, zzdk paramzzdk, zzba paramzzba, int paramInt, long paramLong1, long paramLong2, JSONObject paramJSONObject)
    {
      zzyy = paramzzgo;
      zzyz = paramzzgq;
      zzyt = paramzzdk;
      zzlV = paramzzba;
      errorCode = paramInt;
      zzyv = paramLong1;
      zzyw = paramLong2;
      zzys = paramJSONObject;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */