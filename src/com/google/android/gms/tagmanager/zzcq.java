package com.google.android.gms.tagmanager;

import android.os.Build.VERSION;
import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zzcq
  extends zzaj
{
  private static final String ID = zza.zzU.toString();
  
  public zzcq()
  {
    super(ID, new String[0]);
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    return zzde.zzx(Integer.valueOf(Build.VERSION.SDK_INT));
  }
  
  public boolean zzsD()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzcq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */