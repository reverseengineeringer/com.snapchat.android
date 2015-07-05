package com.google.android.gms.internal;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@zzgi
public class zzdp
{
  public List<String> zza(JSONObject paramJSONObject, String paramString)
  {
    paramJSONObject = paramJSONObject.optJSONArray(paramString);
    if (paramJSONObject != null)
    {
      paramString = new ArrayList(paramJSONObject.length());
      int i = 0;
      while (i < paramJSONObject.length())
      {
        paramString.add(paramJSONObject.getString(i));
        i += 1;
      }
      return Collections.unmodifiableList(paramString);
    }
    return null;
  }
  
  public void zza(Context paramContext, String paramString1, zzhe paramzzhe, String paramString2, boolean paramBoolean, List<String> paramList)
  {
    if (paramBoolean) {}
    for (String str1 = "1";; str1 = "0")
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String str2 = ((String)localIterator.next()).replaceAll("@gw_adlocid@", paramString2).replaceAll("@gw_adnetrefresh@", str1).replaceAll("@gw_qdata@", zzyt.zzsw).replaceAll("@gw_sdkver@", paramString1).replaceAll("@gw_sessid@", zzab.zzaP().getSessionId()).replaceAll("@gw_seqnum@", zzwq);
        paramList = str2;
        if (zzsL != null) {
          paramList = str2.replaceAll("@gw_adnetid@", zzsL.zzsl).replaceAll("@gw_allocid@", zzsL.zzsn);
        }
        new zzhu(paramContext, paramString1, paramList).start();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */