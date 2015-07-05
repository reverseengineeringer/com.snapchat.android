package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzd.zza;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

abstract class zzaj
{
  private final Set<String> zzayG;
  private final String zzayH;
  
  public zzaj(String paramString, String... paramVarArgs)
  {
    zzayH = paramString;
    zzayG = new HashSet(paramVarArgs.length);
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      paramString = paramVarArgs[i];
      zzayG.add(paramString);
      i += 1;
    }
  }
  
  public abstract zzd.zza zzH(Map<String, zzd.zza> paramMap);
  
  boolean zzb(Set<String> paramSet)
  {
    return paramSet.containsAll(zzayG);
  }
  
  public abstract boolean zzsD();
  
  public String zzth()
  {
    return zzayH;
  }
  
  public Set<String> zzti()
  {
    return zzayG;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzaj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */