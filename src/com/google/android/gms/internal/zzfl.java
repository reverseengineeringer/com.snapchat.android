package com.google.android.gms.internal;

import android.content.Intent;

@zzgi
public class zzfl
{
  private final String zzpH;
  
  public zzfl(String paramString)
  {
    zzpH = paramString;
  }
  
  public boolean zza(String paramString, int paramInt, Intent paramIntent)
  {
    if ((paramString == null) || (paramIntent == null)) {}
    String str;
    do
    {
      return false;
      str = zzab.zzaU().zze(paramIntent);
      paramIntent = zzab.zzaU().zzf(paramIntent);
    } while ((str == null) || (paramIntent == null));
    if (!paramString.equals(zzab.zzaU().zzL(str)))
    {
      zzhx.zzac("Developer payload not match.");
      return false;
    }
    if ((zzpH != null) && (!zzfm.zzc(zzpH, str, paramIntent)))
    {
      zzhx.zzac("Fail to verify signature.");
      return false;
    }
    return true;
  }
  
  public String zzdB()
  {
    return zzab.zzaM().zzeu();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */