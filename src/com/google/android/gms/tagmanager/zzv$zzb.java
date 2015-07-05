package com.google.android.gms.tagmanager;

import java.util.Arrays;

class zzv$zzb
{
  final byte[] zzayw;
  final String zzqd;
  
  zzv$zzb(String paramString, byte[] paramArrayOfByte)
  {
    zzqd = paramString;
    zzayw = paramArrayOfByte;
  }
  
  public String toString()
  {
    return "KeyAndSerialized: key = " + zzqd + " serialized hash = " + Arrays.hashCode(zzayw);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzv.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */