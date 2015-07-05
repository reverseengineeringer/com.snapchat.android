package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzd.zza;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class zzw
  extends zzdc
{
  private static final String ID = zza.zzah.toString();
  private static final String VALUE = zzb.zzff.toString();
  private static final String zzayx = zzb.zzbS.toString();
  private final DataLayer zzaxx;
  
  public zzw(DataLayer paramDataLayer)
  {
    super(ID, new String[] { VALUE });
    zzaxx = paramDataLayer;
  }
  
  private void zza(zzd.zza paramzza)
  {
    if ((paramzza == null) || (paramzza == zzde.zztZ())) {}
    do
    {
      return;
      paramzza = zzde.zzg(paramzza);
    } while (paramzza == zzde.zzue());
    zzaxx.zzcU(paramzza);
  }
  
  private void zzb(zzd.zza paramzza)
  {
    if ((paramzza == null) || (paramzza == zzde.zztZ())) {}
    for (;;)
    {
      return;
      paramzza = zzde.zzl(paramzza);
      if ((paramzza instanceof List))
      {
        paramzza = ((List)paramzza).iterator();
        while (paramzza.hasNext())
        {
          Object localObject = paramzza.next();
          if ((localObject instanceof Map))
          {
            localObject = (Map)localObject;
            zzaxx.push((Map)localObject);
          }
        }
      }
    }
  }
  
  public void zzJ(Map<String, zzd.zza> paramMap)
  {
    zzb((zzd.zza)paramMap.get(VALUE));
    zza((zzd.zza)paramMap.get(zzayx));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */