package com.google.android.gms.tagmanager;

import java.util.Map;

class Container$zzb
  implements zzs.zza
{
  private Container$zzb(Container paramContainer) {}
  
  public Object zzc(String paramString, Map<String, Object> paramMap)
  {
    Container.FunctionCallTagCallback localFunctionCallTagCallback = zzaxD.zzcN(paramString);
    if (localFunctionCallTagCallback != null) {
      localFunctionCallTagCallback.execute(paramString, paramMap);
    }
    return zzde.zzue();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.Container.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */