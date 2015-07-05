package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import java.util.concurrent.Future;
import org.json.JSONObject;

@zzgi
public class zzgu
  implements zzgt.zza<zzcl>
{
  public zzcl zzb(zzgt paramzzgt, JSONObject paramJSONObject)
  {
    Future localFuture = paramzzgt.zza(paramJSONObject, "image", true);
    paramzzgt = paramzzgt.zza(paramJSONObject, "app_icon", true);
    return new zzcl(paramJSONObject.getString("headline"), (Drawable)localFuture.get(), paramJSONObject.getString("body"), (Drawable)paramzzgt.get(), paramJSONObject.getString("call_to_action"), paramJSONObject.optDouble("rating", -1.0D), paramJSONObject.optString("store"), paramJSONObject.optString("price"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */