package com.google.android.gms.analytics;

class zzad
  implements zzah
{
  private final long zzEI;
  private final int zzEJ;
  private double zzEK;
  private long zzEL;
  private final Object zzEM = new Object();
  private final String zzrc;
  
  public zzad(int paramInt, long paramLong, String paramString)
  {
    zzEJ = paramInt;
    zzEK = zzEJ;
    zzEI = paramLong;
    zzrc = paramString;
  }
  
  public zzad(String paramString)
  {
    this(60, 2000L, paramString);
  }
  
  public boolean zzgv()
  {
    synchronized (zzEM)
    {
      long l = System.currentTimeMillis();
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
      zzae.zzac("Excessive " + zzrc + " detected; call ignored.");
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */