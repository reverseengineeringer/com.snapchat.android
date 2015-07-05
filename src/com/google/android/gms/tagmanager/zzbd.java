package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzlv;

class zzbd
  implements zzcc
{
  private final long zzEI;
  private final int zzEJ;
  private double zzEK;
  private long zzEL;
  private final Object zzEM = new Object();
  private final long zzazf;
  private final zzlv zzmW;
  private final String zzrc;
  
  public zzbd(int paramInt, long paramLong1, long paramLong2, String paramString, zzlv paramzzlv)
  {
    zzEJ = paramInt;
    zzEK = zzEJ;
    zzEI = paramLong1;
    zzazf = paramLong2;
    zzrc = paramString;
    zzmW = paramzzlv;
  }
  
  public boolean zzgv()
  {
    synchronized (zzEM)
    {
      long l = zzmW.currentTimeMillis();
      if (l - zzEL < zzazf)
      {
        zzbf.zzac("Excessive " + zzrc + " detected; call ignored.");
        return false;
      }
      if (zzEK < zzEJ)
      {
        double d = (l - zzEL) / zzEI;
        if (d > 0.0D) {
          zzEK = Math.min(zzEJ, d + zzEK);
        }
      }
      zzEL = l;
      if (zzEK >= 1.0D)
      {
        zzEK -= 1.0D;
        return true;
      }
    }
    zzbf.zzac("Excessive " + zzrc + " detected; call ignored.");
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzbd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */