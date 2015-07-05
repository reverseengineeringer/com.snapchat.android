package com.google.android.gms.internal;

import com.google.android.gms.tagmanager.zzde;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class zzvl$zzd
{
  private String zzYw = "";
  private final List<zzvl.zze> zzaCk = new ArrayList();
  private final Map<String, List<zzvl.zza>> zzaCl = new HashMap();
  private int zzaCm = 0;
  
  public zzd zzb(zzvl.zze paramzze)
  {
    zzaCk.add(paramzze);
    return this;
  }
  
  public zzd zzc(zzvl.zza paramzza)
  {
    String str = zzde.zzg((zzd.zza)paramzza.zzuv().get(zzb.zzdf.toString()));
    List localList = (List)zzaCl.get(str);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      zzaCl.put(str, localObject);
    }
    ((List)localObject).add(paramzza);
    return this;
  }
  
  public zzd zzdy(String paramString)
  {
    zzYw = paramString;
    return this;
  }
  
  public zzd zzhk(int paramInt)
  {
    zzaCm = paramInt;
    return this;
  }
  
  public zzvl.zzc zzuA()
  {
    return new zzvl.zzc(zzaCk, zzaCl, zzYw, zzaCm, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvl.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */