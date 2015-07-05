package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import java.util.Map;

class zzd
  implements DataLayer.zzb
{
  private final Context zzlN;
  
  public zzd(Context paramContext)
  {
    zzlN = paramContext;
  }
  
  public void zzI(Map<String, Object> paramMap)
  {
    Object localObject = paramMap.get("gtm.url");
    if (localObject == null)
    {
      paramMap = paramMap.get("gtm");
      if ((paramMap == null) || (!(paramMap instanceof Map))) {}
    }
    for (paramMap = ((Map)paramMap).get("url");; paramMap = (Map<String, Object>)localObject)
    {
      if ((paramMap == null) || (!(paramMap instanceof String))) {}
      do
      {
        return;
        paramMap = Uri.parse((String)paramMap).getQueryParameter("referrer");
      } while (paramMap == null);
      zzaw.zzj(zzlN, paramMap);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */