package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@zzgi
public final class zzdj
{
  public final String zzsk;
  public final String zzsl;
  public final List<String> zzsm;
  public final String zzsn;
  public final String zzso;
  public final List<String> zzsp;
  public final String zzsq;
  
  public zzdj(JSONObject paramJSONObject)
  {
    zzsl = paramJSONObject.getString("id");
    Object localObject1 = paramJSONObject.getJSONArray("adapters");
    ArrayList localArrayList = new ArrayList(((JSONArray)localObject1).length());
    int i = 0;
    while (i < ((JSONArray)localObject1).length())
    {
      localArrayList.add(((JSONArray)localObject1).getString(i));
      i += 1;
    }
    zzsm = Collections.unmodifiableList(localArrayList);
    zzsn = paramJSONObject.optString("allocation_id", null);
    zzsp = zzab.zzaV().zza(paramJSONObject, "imp_urls");
    localObject1 = paramJSONObject.optJSONObject("ad");
    if (localObject1 != null)
    {
      localObject1 = ((JSONObject)localObject1).toString();
      zzsk = ((String)localObject1);
      localObject1 = paramJSONObject.optJSONObject("data");
      if (localObject1 == null) {
        break label167;
      }
    }
    label167:
    for (paramJSONObject = ((JSONObject)localObject1).toString();; paramJSONObject = null)
    {
      zzsq = paramJSONObject;
      paramJSONObject = (JSONObject)localObject2;
      if (localObject1 != null) {
        paramJSONObject = ((JSONObject)localObject1).optString("class_name");
      }
      zzso = paramJSONObject;
      return;
      localObject1 = null;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */