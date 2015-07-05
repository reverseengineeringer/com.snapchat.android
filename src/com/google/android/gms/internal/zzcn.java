package com.google.android.gms.internal;

import org.json.JSONException;
import org.json.JSONObject;

@zzgi
public class zzcn
{
  private zzt zzrv;
  private zzah zzrw;
  private JSONObject zzrx;
  
  public zzcn(zzt paramzzt, zzah paramzzah, JSONObject paramJSONObject)
  {
    zzrv = paramzzt;
    zzrw = paramzzah;
    zzrx = paramJSONObject;
  }
  
  public void recordImpression()
  {
    zzrv.zzan();
  }
  
  public void zzb(String paramString, int paramInt)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("asset", paramInt);
      localJSONObject.put("template", paramString);
      paramString = new JSONObject();
      paramString.put("ad", zzrx);
      paramString.put("click", localJSONObject);
      zzrw.zza("google.afma.nativeAds.handleClick", paramString);
      return;
    }
    catch (JSONException paramString)
    {
      zzhx.zzb("Unable to create click JSON.", paramString);
    }
  }
  
  public static abstract interface zza
  {
    public abstract void zza(zzcn paramzzcn);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzcn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */