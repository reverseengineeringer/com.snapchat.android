package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Intent;

final class zzn$zza
{
  private final ComponentName zzQh;
  private final String zzrc;
  
  public zzn$zza(ComponentName paramComponentName)
  {
    zzrc = null;
    zzQh = ((ComponentName)zzx.zzl(paramComponentName));
  }
  
  public zzn$zza(String paramString)
  {
    zzrc = zzx.zzbn(paramString);
    zzQh = null;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof zza)) {
        return false;
      }
      paramObject = (zza)paramObject;
    } while ((zzw.equal(zzrc, zzrc)) && (zzw.equal(zzQh, zzQh)));
    return false;
  }
  
  public final int hashCode()
  {
    return zzw.hashCode(new Object[] { zzrc, zzQh });
  }
  
  public final String toString()
  {
    if (zzrc == null) {
      return zzQh.flattenToString();
    }
    return zzrc;
  }
  
  public final Intent zzjj()
  {
    if (zzrc != null) {
      return new Intent(zzrc).setPackage("com.google.android.gms");
    }
    return new Intent().setComponent(zzQh);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzn.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */