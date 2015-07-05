package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzw;

public final class zzkm$zza
{
  public final int zzPk;
  public final int zzPl;
  
  public zzkm$zza(int paramInt1, int paramInt2)
  {
    zzPk = paramInt1;
    zzPl = paramInt2;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof zza)) {}
    do
    {
      return false;
      if (this == paramObject) {
        return true;
      }
      paramObject = (zza)paramObject;
    } while ((zzPk != zzPk) || (zzPl != zzPl));
    return true;
  }
  
  public final int hashCode()
  {
    return zzw.hashCode(new Object[] { Integer.valueOf(zzPk), Integer.valueOf(zzPl) });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzkm.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */