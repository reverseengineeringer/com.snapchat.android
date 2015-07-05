package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzvl.zza;
import com.google.android.gms.internal.zzvl.zze;
import java.util.List;
import java.util.Map;
import java.util.Set;

class zzco$3
  implements zzco.zza
{
  zzco$3(zzco paramzzco, Map paramMap1, Map paramMap2, Map paramMap3, Map paramMap4) {}
  
  public void zza(zzvl.zze paramzze, Set<zzvl.zza> paramSet1, Set<zzvl.zza> paramSet2, zzcj paramzzcj)
  {
    List localList1 = (List)zzaAj.get(paramzze);
    List localList2 = (List)zzaAk.get(paramzze);
    if (localList1 != null)
    {
      paramSet1.addAll(localList1);
      paramzzcj.zzto().zzc(localList1, localList2);
    }
    paramSet1 = (List)zzaAl.get(paramzze);
    paramzze = (List)zzaAm.get(paramzze);
    if (paramSet1 != null)
    {
      paramSet2.addAll(paramSet1);
      paramzzcj.zztp().zzc(paramSet1, paramzze);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzco.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */