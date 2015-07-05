package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.net.Uri.Builder;
import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzd.zza;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class zzi
  extends zzdc
{
  private static final String ID = zza.zzay.toString();
  private static final String URL = zzb.zzeX.toString();
  private static final String zzaxp = zzb.zzbl.toString();
  private static final String zzaxq = zzb.zzeW.toString();
  static final String zzaxr = "gtm_" + ID + "_unrepeatable";
  private static final Set<String> zzaxs = new HashSet();
  private final Context mContext;
  private final zza zzaxt;
  
  public zzi(Context paramContext)
  {
    this(paramContext, new zza()
    {
      public zzaq zzsE()
      {
        return zzy.zzak(zzi.this);
      }
    });
  }
  
  zzi(Context paramContext, zza paramzza)
  {
    super(ID, new String[] { URL });
    zzaxt = paramzza;
    mContext = paramContext;
  }
  
  private boolean zzcI(String paramString)
  {
    boolean bool1 = true;
    for (;;)
    {
      try
      {
        boolean bool2 = zzcK(paramString);
        if (bool2) {
          return bool1;
        }
        if (zzcJ(paramString)) {
          zzaxs.add(paramString);
        } else {
          bool1 = false;
        }
      }
      finally {}
    }
  }
  
  public void zzJ(Map<String, zzd.zza> paramMap)
  {
    String str;
    if (paramMap.get(zzaxq) != null)
    {
      str = zzde.zzg((zzd.zza)paramMap.get(zzaxq));
      if ((str == null) || (!zzcI(str))) {
        break label46;
      }
    }
    label46:
    do
    {
      return;
      str = null;
      break;
      Uri.Builder localBuilder = Uri.parse(zzde.zzg((zzd.zza)paramMap.get(URL))).buildUpon();
      paramMap = (zzd.zza)paramMap.get(zzaxp);
      if (paramMap != null)
      {
        paramMap = zzde.zzl(paramMap);
        if (!(paramMap instanceof List))
        {
          zzbf.zzZ("ArbitraryPixel: additional params not a list: not sending partial hit: " + localBuilder.build().toString());
          return;
        }
        paramMap = ((List)paramMap).iterator();
        while (paramMap.hasNext())
        {
          Object localObject = paramMap.next();
          if (!(localObject instanceof Map))
          {
            zzbf.zzZ("ArbitraryPixel: additional params contains non-map: not sending partial hit: " + localBuilder.build().toString());
            return;
          }
          localObject = ((Map)localObject).entrySet().iterator();
          while (((Iterator)localObject).hasNext())
          {
            Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
            localBuilder.appendQueryParameter(localEntry.getKey().toString(), localEntry.getValue().toString());
          }
        }
      }
      paramMap = localBuilder.build().toString();
      zzaxt.zzsE().zzcY(paramMap);
      zzbf.zzab("ArbitraryPixel: url = " + paramMap);
    } while (str == null);
    try
    {
      zzaxs.add(str);
      zzcu.zza(mContext, zzaxr, str, "true");
      return;
    }
    finally {}
  }
  
  boolean zzcJ(String paramString)
  {
    return mContext.getSharedPreferences(zzaxr, 0).contains(paramString);
  }
  
  boolean zzcK(String paramString)
  {
    return zzaxs.contains(paramString);
  }
  
  public static abstract interface zza
  {
    public abstract zzaq zzsE();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */