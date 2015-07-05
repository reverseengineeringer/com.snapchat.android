package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzvl.zza;
import com.google.android.gms.internal.zzvl.zze;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

class zzco$zzc
{
  private final Set<zzvl.zze> zzaAe = new HashSet();
  private final Map<zzvl.zze, List<zzvl.zza>> zzaAp = new HashMap();
  private final Map<zzvl.zze, List<zzvl.zza>> zzaAq = new HashMap();
  private final Map<zzvl.zze, List<String>> zzaAr = new HashMap();
  private final Map<zzvl.zze, List<String>> zzaAs = new HashMap();
  private zzvl.zza zzaAt;
  
  public void zza(zzvl.zze paramzze)
  {
    zzaAe.add(paramzze);
  }
  
  public void zza(zzvl.zze paramzze, zzvl.zza paramzza)
  {
    List localList = (List)zzaAp.get(paramzze);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      zzaAp.put(paramzze, localObject);
    }
    ((List)localObject).add(paramzza);
  }
  
  public void zza(zzvl.zze paramzze, String paramString)
  {
    List localList = (List)zzaAr.get(paramzze);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      zzaAr.put(paramzze, localObject);
    }
    ((List)localObject).add(paramString);
  }
  
  public void zzb(zzvl.zza paramzza)
  {
    zzaAt = paramzza;
  }
  
  public void zzb(zzvl.zze paramzze, zzvl.zza paramzza)
  {
    List localList = (List)zzaAq.get(paramzze);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      zzaAq.put(paramzze, localObject);
    }
    ((List)localObject).add(paramzza);
  }
  
  public void zzb(zzvl.zze paramzze, String paramString)
  {
    List localList = (List)zzaAs.get(paramzze);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      zzaAs.put(paramzze, localObject);
    }
    ((List)localObject).add(paramString);
  }
  
  public Set<zzvl.zze> zztL()
  {
    return zzaAe;
  }
  
  public Map<zzvl.zze, List<zzvl.zza>> zztM()
  {
    return zzaAp;
  }
  
  public Map<zzvl.zze, List<String>> zztN()
  {
    return zzaAr;
  }
  
  public Map<zzvl.zze, List<String>> zztO()
  {
    return zzaAs;
  }
  
  public Map<zzvl.zze, List<zzvl.zza>> zztP()
  {
    return zzaAq;
  }
  
  public zzvl.zza zztQ()
  {
    return zzaAt;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzco.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */