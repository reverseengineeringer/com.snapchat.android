package com.google.android.gms.common;

import java.lang.ref.WeakReference;

abstract class zzb$zzc
  extends zzb.zza
{
  private static final WeakReference<byte[]> zzLB = new WeakReference(null);
  private WeakReference<byte[]> zzLA = zzLB;
  
  zzb$zzc(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
  }
  
  byte[] getBytes()
  {
    try
    {
      byte[] arrayOfByte2 = (byte[])zzLA.get();
      byte[] arrayOfByte1 = arrayOfByte2;
      if (arrayOfByte2 == null)
      {
        arrayOfByte1 = zzhN();
        zzLA = new WeakReference(arrayOfByte1);
      }
      return arrayOfByte1;
    }
    finally {}
  }
  
  protected abstract byte[] zzhN();
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.zzb.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */