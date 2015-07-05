package com.google.android.gms.internal;

import java.util.Map;

@zzgi
public class zzec
{
  private final zzic zzmu;
  private final boolean zztv;
  private final String zztw;
  
  public zzec(zzic paramzzic, Map<String, String> paramMap)
  {
    zzmu = paramzzic;
    zztw = ((String)paramMap.get("forceOrientation"));
    if (paramMap.containsKey("allowOrientationChange"))
    {
      zztv = Boolean.parseBoolean((String)paramMap.get("allowOrientationChange"));
      return;
    }
    zztv = true;
  }
  
  public void execute()
  {
    if (zzmu == null)
    {
      zzhx.zzac("AdWebView is null");
      return;
    }
    int i;
    if ("portrait".equalsIgnoreCase(zztw)) {
      i = zzab.zzaO().zzey();
    }
    for (;;)
    {
      zzmu.setRequestedOrientation(i);
      return;
      if ("landscape".equalsIgnoreCase(zztw)) {
        i = zzab.zzaO().zzex();
      } else if (zztv) {
        i = -1;
      } else {
        i = zzab.zzaO().zzez();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */