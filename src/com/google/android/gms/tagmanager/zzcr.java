package com.google.android.gms.tagmanager;

class zzcr
  implements zzcc
{
  private final long zzEI;
  private final int zzEJ;
  private double zzEK;
  private final Object zzEM = new Object();
  private long zzaAu;
  
  public zzcr()
  {
    this(60, 2000L);
  }
  
  public zzcr(int paramInt, long paramLong)
  {
    zzEJ = paramInt;
    zzEK = zzEJ;
    zzEI = paramLong;
  }
  
  public boolean zzgv()
  {
    synchronized (zzEM)
    {
      long l = System.currentTimeMillis();
      if (zzEK < zzEJ)
      {
        double d = (l - zzaAu) / zzEI;
        if (d > 0.0D) {
          zzEK = Math.min(zzEJ, d + zzEK);
        }
      }
      zzaAu = l;
      if (zzEK >= 1.0D)
      {
        zzEK -= 1.0D;
        return true;
      }
      zzbf.zzac("No more tokens available.");
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzcr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */