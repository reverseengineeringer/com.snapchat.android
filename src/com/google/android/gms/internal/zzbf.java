package com.google.android.gms.internal;

import java.util.Random;

public class zzbf
  extends zzbl.zza
{
  private Object zznh = new Object();
  private final Random zzpl = new Random();
  private long zzpm;
  
  public zzbf()
  {
    zzbG();
  }
  
  public long getValue()
  {
    return zzpm;
  }
  
  public void zzbG()
  {
    Object localObject1 = zznh;
    int i = 3;
    long l1 = 0L;
    for (;;)
    {
      int j = i - 1;
      if (j > 0) {}
      try
      {
        long l2 = zzpl.nextInt() + 2147483648L;
        l1 = l2;
        i = j;
        if (l2 == zzpm) {
          continue;
        }
        l1 = l2;
        i = j;
        if (l2 == 0L) {
          continue;
        }
        l1 = l2;
        zzpm = l1;
        return;
      }
      finally {}
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzbf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */