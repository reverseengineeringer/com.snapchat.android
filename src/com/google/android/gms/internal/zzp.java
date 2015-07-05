package com.google.android.gms.internal;

import java.io.IOException;

class zzp
  implements zzn
{
  private zzwr zzlb;
  private byte[] zzlc;
  private final int zzld;
  
  public zzp(int paramInt)
  {
    zzld = paramInt;
    reset();
  }
  
  public void reset()
  {
    zzlc = new byte[zzld];
    zzlb = zzwr.zzu(zzlc);
  }
  
  public byte[] zzD()
  {
    int i = zzlb.zzvJ();
    if (i < 0) {
      throw new IOException();
    }
    if (i == 0) {
      return zzlc;
    }
    byte[] arrayOfByte = new byte[zzlc.length - i];
    System.arraycopy(zzlc, 0, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }
  
  public void zzb(int paramInt, long paramLong)
  {
    zzlb.zzb(paramInt, paramLong);
  }
  
  public void zzb(int paramInt, String paramString)
  {
    zzlb.zzb(paramInt, paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */