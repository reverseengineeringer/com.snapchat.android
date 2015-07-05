package com.google.android.gms.ads.mediation.customevent;

import ca;
import java.util.HashMap;

@Deprecated
public final class CustomEventExtras
  implements ca
{
  private final HashMap<String, Object> zzAw = new HashMap();
  
  public final Object getExtra(String paramString)
  {
    return zzAw.get(paramString);
  }
  
  public final void setExtra(String paramString, Object paramObject)
  {
    zzAw.put(paramString, paramObject);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.mediation.customevent.CustomEventExtras
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */