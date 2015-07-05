package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import cb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;

@zzgi
public class zzaz
{
  public static final zzaz zzoZ = new zzaz();
  
  public static zzaz zzbA()
  {
    return zzoZ;
  }
  
  public zzax zza(Context paramContext, zzbo paramzzbo)
  {
    Object localObject = paramzzbo.getBirthday();
    long l;
    String str1;
    int i;
    label59:
    boolean bool1;
    int j;
    Location localLocation;
    Bundle localBundle;
    boolean bool2;
    String str2;
    if (localObject != null)
    {
      l = ((Date)localObject).getTime();
      str1 = paramzzbo.getContentUrl();
      i = paramzzbo.getGender();
      localObject = paramzzbo.getKeywords();
      if (((Set)localObject).isEmpty()) {
        break label179;
      }
      localObject = Collections.unmodifiableList(new ArrayList((Collection)localObject));
      bool1 = paramzzbo.isTestDevice(paramContext);
      j = paramzzbo.zzbL();
      localLocation = paramzzbo.getLocation();
      localBundle = paramzzbo.getNetworkExtrasBundle(cb.class);
      bool2 = paramzzbo.getManualImpressionsEnabled();
      str2 = paramzzbo.getPublisherProvidedId();
      paramContext = paramzzbo.zzbI();
      if (paramContext == null) {
        break label185;
      }
    }
    label179:
    label185:
    for (paramContext = new zzbs(paramContext);; paramContext = null)
    {
      return new zzax(5, l, localBundle, i, (List)localObject, bool1, j, bool2, str2, paramContext, localLocation, str1, paramzzbo.zzbK(), paramzzbo.getCustomTargeting(), Collections.unmodifiableList(new ArrayList(paramzzbo.zzbM())), paramzzbo.zzbH());
      l = -1L;
      break;
      localObject = null;
      break label59;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzaz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */