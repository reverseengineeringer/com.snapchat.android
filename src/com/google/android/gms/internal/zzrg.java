package com.google.android.gms.internal;

import android.support.v4.util.ArrayMap;
import java.util.Map;

public final class zzrg
  extends zzqy<zzrg>
{
  private String zzIO;
  public int zzasn;
  public int zzaso;
  public int zzasp;
  public int zztI;
  public int zztJ;
  
  public final void setLanguage(String paramString)
  {
    zzIO = paramString;
  }
  
  public final String toString()
  {
    ArrayMap localArrayMap = new ArrayMap();
    localArrayMap.put("language", zzIO);
    localArrayMap.put("screenColors", Integer.valueOf(zzasn));
    localArrayMap.put("screenWidth", Integer.valueOf(zztI));
    localArrayMap.put("screenHeight", Integer.valueOf(zztJ));
    localArrayMap.put("viewportWidth", Integer.valueOf(zzaso));
    localArrayMap.put("viewportHeight", Integer.valueOf(zzasp));
    return zzG(localArrayMap);
  }
  
  public final void zzgp(int paramInt)
  {
    zztI = paramInt;
  }
  
  public final void zzgq(int paramInt)
  {
    zztJ = paramInt;
  }
  
  public final int zzrb()
  {
    return zztI;
  }
  
  public final int zzrc()
  {
    return zztJ;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzrg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */