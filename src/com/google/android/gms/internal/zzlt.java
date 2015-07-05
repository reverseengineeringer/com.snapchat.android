package com.google.android.gms.internal;

import android.util.Base64;

public final class zzlt
{
  public static String zze(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    return Base64.encodeToString(paramArrayOfByte, 0);
  }
  
  public static String zzf(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    return Base64.encodeToString(paramArrayOfByte, 10);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzlt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */