package com.google.android.gms.internal;

import java.util.Arrays;

final class zzxa
{
  final int tag;
  final byte[] zzaHN;
  
  zzxa(int paramInt, byte[] paramArrayOfByte)
  {
    tag = paramInt;
    zzaHN = paramArrayOfByte;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof zzxa)) {
        return false;
      }
      paramObject = (zzxa)paramObject;
    } while ((tag == tag) && (Arrays.equals(zzaHN, zzaHN)));
    return false;
  }
  
  public final int hashCode()
  {
    return (tag + 527) * 31 + Arrays.hashCode(zzaHN);
  }
  
  final void zza(zzwr paramzzwr)
  {
    paramzzwr.zziA(tag);
    paramzzwr.zzx(zzaHN);
  }
  
  final int zzc()
  {
    return zzwr.zziB(tag) + 0 + zzaHN.length;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzxa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */