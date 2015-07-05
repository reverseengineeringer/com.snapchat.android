package com.google.android.gms.common;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.util.Base64;
import android.util.Log;
import java.util.Set;

public class zzc
{
  private static final zzc zzLH = new zzc();
  
  private boolean zza(PackageInfo paramPackageInfo, boolean paramBoolean)
  {
    if (signatures.length != 1) {
      return false;
    }
    zzb.zzb localzzb = new zzb.zzb(signatures[0].toByteArray());
    if (paramBoolean) {}
    for (paramPackageInfo = zzb.zzhL(); paramPackageInfo.contains(localzzb); paramPackageInfo = zzb.zzhM()) {
      return true;
    }
    if (Log.isLoggable("GoogleSignatureVerifier", 2)) {
      new StringBuilder("Signature not valid.  Found: \n").append(Base64.encodeToString(localzzb.getBytes(), 0));
    }
    return false;
  }
  
  public static zzc zzhP()
  {
    return zzLH;
  }
  
  zzb.zza zza(PackageInfo paramPackageInfo, zzb.zza... paramVarArgs)
  {
    if (signatures.length != 1) {
      return null;
    }
    paramPackageInfo = new zzb.zzb(signatures[0].toByteArray());
    int i = 0;
    while (i < paramVarArgs.length)
    {
      if (paramVarArgs[i].equals(paramPackageInfo)) {
        return paramVarArgs[i];
      }
      i += 1;
    }
    if (Log.isLoggable("GoogleSignatureVerifier", 2)) {
      new StringBuilder("Signature not valid.  Found: \n").append(Base64.encodeToString(paramPackageInfo.getBytes(), 0));
    }
    return null;
  }
  
  public boolean zza(PackageManager paramPackageManager, PackageInfo paramPackageInfo)
  {
    boolean bool1 = false;
    if (paramPackageInfo == null) {}
    boolean bool2;
    do
    {
      return bool1;
      if (GooglePlayServicesUtil.zzc(paramPackageManager)) {
        return zza(paramPackageInfo, true);
      }
      bool2 = zza(paramPackageInfo, false);
      bool1 = bool2;
    } while (bool2);
    zza(paramPackageInfo, true);
    return bool2;
  }
  
  public boolean zzb(PackageManager paramPackageManager, String paramString)
  {
    try
    {
      PackageInfo localPackageInfo = paramPackageManager.getPackageInfo(paramString, 64);
      return zza(paramPackageManager, localPackageInfo);
    }
    catch (PackageManager.NameNotFoundException paramPackageManager)
    {
      if (Log.isLoggable("GoogleSignatureVerifier", 3)) {
        new StringBuilder("Package manager can't find package ").append(paramString).append(", defaulting to false");
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */