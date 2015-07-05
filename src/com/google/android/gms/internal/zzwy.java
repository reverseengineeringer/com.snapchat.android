package com.google.android.gms.internal;

import java.io.IOException;

public abstract class zzwy
{
  protected volatile int zzaHM = -1;
  
  public static final <T extends zzwy> T zza(T paramT, byte[] paramArrayOfByte)
  {
    return zzb(paramT, paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static final void zza(zzwy paramzzwy, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramArrayOfByte = zzwr.zzb(paramArrayOfByte, paramInt1, paramInt2);
      paramzzwy.zza(paramArrayOfByte);
      paramArrayOfByte.zzvK();
      return;
    }
    catch (IOException paramzzwy)
    {
      throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", paramzzwy);
    }
  }
  
  public static final <T extends zzwy> T zzb(T paramT, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramArrayOfByte = zzwq.zza(paramArrayOfByte, paramInt1, paramInt2);
      paramT.zzb(paramArrayOfByte);
      paramArrayOfByte.zzim(0);
      return paramT;
    }
    catch (zzwx paramT)
    {
      throw paramT;
    }
    catch (IOException paramT)
    {
      throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
    }
  }
  
  public static final byte[] zzf(zzwy paramzzwy)
  {
    byte[] arrayOfByte = new byte[paramzzwy.zzvY()];
    zza(paramzzwy, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }
  
  public String toString()
  {
    return zzwz.zzg(this);
  }
  
  public void zza(zzwr paramzzwr) {}
  
  public abstract zzwy zzb(zzwq paramzzwq);
  
  protected int zzc()
  {
    return 0;
  }
  
  public zzwy zzvN()
  {
    return (zzwy)super.clone();
  }
  
  public int zzvX()
  {
    if (zzaHM < 0) {
      zzvY();
    }
    return zzaHM;
  }
  
  public int zzvY()
  {
    int i = zzc();
    zzaHM = i;
    return i;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzwy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */