package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.zzx;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class zzgt$1
  implements zzcv
{
  zzgt$1(zzgt paramzzgt, zzah paramzzah, zzgt.zzb paramzzb, zzhq paramzzhq) {}
  
  public void zza(zzic paramzzic, Map<String, String> paramMap)
  {
    zzwZ.zzb("/nativeAdPreProcess", zzxa.zzxe);
    try
    {
      paramzzic = (String)paramMap.get("success");
      if (!TextUtils.isEmpty(paramzzic))
      {
        zzxb.zzb(new JSONObject(paramzzic).getJSONArray("ads").getJSONObject(0));
        return;
      }
    }
    catch (JSONException paramzzic)
    {
      zzhx.zzb("Malformed native JSON response.", paramzzic);
      zzxc.zzx(0);
      zzx.zza(zzxc.zzdO(), "Unable to set the ad state error!");
      zzxb.zzb(null);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgt.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */