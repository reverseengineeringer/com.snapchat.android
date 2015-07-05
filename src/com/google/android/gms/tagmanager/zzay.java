package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzd.zza;
import com.google.android.gms.internal.zzvl.zza;
import com.google.android.gms.internal.zzvl.zzb;
import com.google.android.gms.internal.zzvl.zzc;
import com.google.android.gms.internal.zzvl.zzd;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

class zzay
{
  public static zzvl.zzc zzdd(String paramString)
  {
    paramString = zzq(new JSONObject(paramString));
    zzvl.zzd localzzd = zzvl.zzc.zzux();
    int i = 0;
    while (i < zzgx.length)
    {
      localzzd.zzc(zzvl.zza.zzuu().zzb(zzb.zzdf.toString(), zzgx[i]).zzb(zzb.zzcU.toString(), zzde.zzdo(zzm.zzsG())).zzb(zzm.zzsH(), zzgy[i]).zzuw());
      i += 1;
    }
    return localzzd.zzuA();
  }
  
  private static zzd.zza zzq(Object paramObject)
  {
    return zzde.zzx(zzr(paramObject));
  }
  
  static Object zzr(Object paramObject)
  {
    if ((paramObject instanceof JSONArray)) {
      throw new RuntimeException("JSONArrays are not supported");
    }
    if (JSONObject.NULL.equals(paramObject)) {
      throw new RuntimeException("JSON nulls are not supported");
    }
    Object localObject = paramObject;
    if ((paramObject instanceof JSONObject))
    {
      paramObject = (JSONObject)paramObject;
      localObject = new HashMap();
      Iterator localIterator = ((JSONObject)paramObject).keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        ((Map)localObject).put(str, zzr(((JSONObject)paramObject).get(str)));
      }
    }
    return localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */