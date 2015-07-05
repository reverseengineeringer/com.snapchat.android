package com.google.android.gms.internal;

import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.internal.zzx;
import java.util.Map;
import java.util.UUID;

public final class zzrh
  extends zzqy<zzrh>
{
  private String zzasq;
  private int zzasr;
  private int zzass;
  private String zzast;
  private String zzasu;
  private boolean zzasv;
  private boolean zzasw;
  private boolean zzasx;
  
  public zzrh()
  {
    this(false);
  }
  
  public zzrh(boolean paramBoolean)
  {
    this(paramBoolean, zzrd());
  }
  
  public zzrh(boolean paramBoolean, int paramInt)
  {
    zzx.zzaL(paramInt);
    zzasr = paramInt;
    zzasw = paramBoolean;
  }
  
  static int zzrd()
  {
    UUID localUUID = UUID.randomUUID();
    int i = (int)(localUUID.getLeastSignificantBits() & 0x7FFFFFFF);
    if (i != 0) {}
    int j;
    do
    {
      return i;
      j = (int)(localUUID.getMostSignificantBits() & 0x7FFFFFFF);
      i = j;
    } while (j != 0);
    return Integer.MAX_VALUE;
  }
  
  private void zzrj()
  {
    if (zzasx) {
      throw new IllegalStateException("ScreenViewInfo is immutable");
    }
  }
  
  public final boolean isMutable()
  {
    return !zzasx;
  }
  
  public final void setScreenName(String paramString)
  {
    zzrj();
    zzasq = paramString;
  }
  
  public final String toString()
  {
    ArrayMap localArrayMap = new ArrayMap();
    localArrayMap.put("screenName", zzasq);
    localArrayMap.put("interstitial", Boolean.valueOf(zzasv));
    localArrayMap.put("automatic", Boolean.valueOf(zzasw));
    localArrayMap.put("screenId", Integer.valueOf(zzasr));
    localArrayMap.put("referrerScreenId", Integer.valueOf(zzass));
    localArrayMap.put("referrerScreenName", zzast);
    localArrayMap.put("referrerUri", zzasu);
    return zzG(localArrayMap);
  }
  
  public final int zzaF()
  {
    return zzasr;
  }
  
  public final void zzaa(boolean paramBoolean)
  {
    zzrj();
    zzasv = paramBoolean;
  }
  
  public final void zzcv(String paramString)
  {
    zzrj();
    zzast = paramString;
  }
  
  public final void zzgr(int paramInt)
  {
    zzrj();
    zzass = paramInt;
  }
  
  public final String zzre()
  {
    return zzasq;
  }
  
  public final int zzrf()
  {
    return zzass;
  }
  
  public final String zzrg()
  {
    return zzast;
  }
  
  public final void zzrh()
  {
    zzasx = true;
  }
  
  public final boolean zzri()
  {
    return zzasv;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzrh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */