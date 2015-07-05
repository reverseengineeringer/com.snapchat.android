package com.google.android.gms.internal;

import org.json.JSONException;
import org.json.JSONObject;

@zzgi
public class zzeg
{
  private final zzic zzmu;
  private final String zztP;
  
  public zzeg(zzic paramzzic)
  {
    this(paramzzic, "");
  }
  
  public zzeg(zzic paramzzic, String paramString)
  {
    zzmu = paramzzic;
    zztP = paramString;
  }
  
  public void zzH(String paramString)
  {
    try
    {
      paramString = new JSONObject().put("message", paramString).put("action", zztP);
      zzmu.zzb("onError", paramString);
      return;
    }
    catch (JSONException paramString)
    {
      zzhx.zzb("Error occurred while dispatching error event.", paramString);
    }
  }
  
  public void zzI(String paramString)
  {
    try
    {
      paramString = new JSONObject().put("js", paramString);
      zzmu.zzb("onReadyEventReceived", paramString);
      return;
    }
    catch (JSONException paramString)
    {
      zzhx.zzb("Error occured while dispatching ready Event.", paramString);
    }
  }
  
  public void zzJ(String paramString)
  {
    try
    {
      paramString = new JSONObject().put("state", paramString);
      zzmu.zzb("onStateChanged", paramString);
      return;
    }
    catch (JSONException paramString)
    {
      zzhx.zzb("Error occured while dispatching state change.", paramString);
    }
  }
  
  public void zza(int paramInt1, int paramInt2, int paramInt3, int paramInt4, float paramFloat, int paramInt5)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject().put("width", paramInt1).put("height", paramInt2).put("maxSizeWidth", paramInt3).put("maxSizeHeight", paramInt4).put("density", paramFloat).put("rotation", paramInt5);
      zzmu.zzb("onScreenInfoChanged", localJSONObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      zzhx.zzb("Error occured while obtaining screen information.", localJSONException);
    }
  }
  
  public void zzb(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject().put("x", paramInt1).put("y", paramInt2).put("width", paramInt3).put("height", paramInt4);
      zzmu.zzb("onSizeChanged", localJSONObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      zzhx.zzb("Error occured while dispatching size change.", localJSONException);
    }
  }
  
  public void zzc(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject().put("x", paramInt1).put("y", paramInt2).put("width", paramInt3).put("height", paramInt4);
      zzmu.zzb("onDefaultPositionReceived", localJSONObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      zzhx.zzb("Error occured while dispatching default position.", localJSONException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzeg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */