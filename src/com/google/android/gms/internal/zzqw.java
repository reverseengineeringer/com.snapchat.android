package com.google.android.gms.internal;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.util.LogPrinter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public final class zzqw
  implements zzrc
{
  private static final Uri zzarS;
  private final LogPrinter zzarT = new LogPrinter(4, "GA/LogCatTransport");
  
  static
  {
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme("uri");
    localBuilder.authority("local");
    zzarS = localBuilder.build();
  }
  
  public final void zza(zzqx paramzzqx)
  {
    Object localObject = new ArrayList(paramzzqx.zzqQ());
    Collections.sort((List)localObject, new Comparator()
    {
      public int zza(zzqy paramAnonymouszzqy1, zzqy paramAnonymouszzqy2)
      {
        return paramAnonymouszzqy1.getClass().getCanonicalName().compareTo(paramAnonymouszzqy2.getClass().getCanonicalName());
      }
    });
    paramzzqx = new StringBuilder();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = ((zzqy)((Iterator)localObject).next()).toString();
      if (!TextUtils.isEmpty(str))
      {
        if (paramzzqx.length() != 0) {
          paramzzqx.append(", ");
        }
        paramzzqx.append(str);
      }
    }
    zzarT.println(paramzzqx.toString());
  }
  
  public final Uri zzqP()
  {
    return zzarS;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */