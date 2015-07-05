package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzx;

public class zzve
{
  private final Integer zzaBM;
  private final String zzaBN;
  private final boolean zzaBO;
  private final String zzaxw;
  private final String zzazP;
  
  public zzve(String paramString1, Integer paramInteger, String paramString2, boolean paramBoolean)
  {
    this(paramString1, paramInteger, paramString2, paramBoolean, "");
  }
  
  public zzve(String paramString1, Integer paramInteger, String paramString2, boolean paramBoolean, String paramString3)
  {
    zzx.zzl(paramString1);
    zzx.zzl(paramString3);
    zzaxw = paramString1;
    zzaBM = paramInteger;
    zzaBN = paramString2;
    zzaBO = paramBoolean;
    zzazP = paramString3;
  }
  
  public String getContainerId()
  {
    return zzaxw;
  }
  
  public Integer zzuh()
  {
    return zzaBM;
  }
  
  public String zzui()
  {
    return zzaBN;
  }
  
  public String zzuj()
  {
    if (zzaBN != null) {
      return zzaBN + "_" + zzaxw;
    }
    return zzaxw;
  }
  
  public boolean zzuk()
  {
    return zzaBO;
  }
  
  public String zzul()
  {
    return zzazP;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzve
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */