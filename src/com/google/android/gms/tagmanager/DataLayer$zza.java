package com.google.android.gms.tagmanager;

import java.util.Arrays;

final class DataLayer$zza
{
  public final String zzqd;
  public final Object zzzt;
  
  DataLayer$zza(String paramString, Object paramObject)
  {
    zzqd = paramString;
    zzzt = paramObject;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof zza)) {}
    do
    {
      return false;
      paramObject = (zza)paramObject;
    } while ((!zzqd.equals(zzqd)) || (!zzzt.equals(zzzt)));
    return true;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Integer[] { Integer.valueOf(zzqd.hashCode()), Integer.valueOf(zzzt.hashCode()) });
  }
  
  public final String toString()
  {
    return "Key: " + zzqd + " value: " + zzzt.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.DataLayer.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */