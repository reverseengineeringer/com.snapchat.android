package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import java.util.concurrent.Future;
import org.json.JSONObject;

@zzgi
public class zzgv
  implements zzgt.zza<zzcm>
{
  public zzcm zzc(zzgt paramzzgt, JSONObject paramJSONObject)
  {
    Future localFuture = paramzzgt.zza(paramJSONObject, "image", true);
    paramzzgt = paramzzgt.zza(paramJSONObject, "secondary_image", false);
    return new zzcm(paramJSONObject.getString("headline"), (Drawable)localFuture.get(), paramJSONObject.getString("body"), (Drawable)paramzzgt.get(), paramJSONObject.getString("call_to_action"), paramJSONObject.getString("attribution"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */