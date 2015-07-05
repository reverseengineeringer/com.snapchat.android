package com.google.android.gms.internal;

import java.security.MessageDigest;

public class zzar
  extends zzao
{
  private MessageDigest zzoH;
  
  byte[] zza(String[] paramArrayOfString)
  {
    byte[] arrayOfByte = new byte[paramArrayOfString.length];
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      arrayOfByte[i] = zze(zzaq.zzo(paramArrayOfString[i]));
      i += 1;
    }
    return arrayOfByte;
  }
  
  byte zze(int paramInt)
  {
    return (byte)(paramInt & 0xFF ^ (0xFF00 & paramInt) >> 8 ^ (0xFF0000 & paramInt) >> 16 ^ (0xFF000000 & paramInt) >> 24);
  }
  
  public byte[] zzl(String arg1)
  {
    int i = 4;
    byte[] arrayOfByte1 = zza(???.split(" "));
    zzoH = zzby();
    for (;;)
    {
      synchronized (zznh)
      {
        if (zzoH == null) {
          return new byte[0];
        }
        zzoH.reset();
        zzoH.update(arrayOfByte1);
        arrayOfByte1 = zzoH.digest();
        if (arrayOfByte1.length > 4)
        {
          byte[] arrayOfByte2 = new byte[i];
          System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, arrayOfByte2.length);
          return arrayOfByte2;
        }
      }
      i = localObject.length;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */