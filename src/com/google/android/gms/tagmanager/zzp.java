package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zzp
  extends zzaj
{
  private static final String ID = zza.zzD.toString();
  private final String zzYw;
  
  public zzp(String paramString)
  {
    super(ID, new String[0]);
    zzYw = paramString;
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    if (zzYw == null) {
      return zzde.zzuf();
    }
    return zzde.zzx(zzYw);
  }
  
  public boolean zzsD()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */