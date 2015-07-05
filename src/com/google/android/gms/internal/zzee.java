package com.google.android.gms.internal;

import org.json.JSONException;
import org.json.JSONObject;

@zzgi
public class zzee
{
  private final boolean zztA;
  private final boolean zztB;
  private final boolean zztC;
  private final boolean zztD;
  private final boolean zztE;
  
  private zzee(zza paramzza)
  {
    zztA = zza.zza(paramzza);
    zztB = zza.zzb(paramzza);
    zztC = zza.zzc(paramzza);
    zztD = zza.zzd(paramzza);
    zztE = zza.zze(paramzza);
  }
  
  public JSONObject toJson()
  {
    try
    {
      JSONObject localJSONObject = new JSONObject().put("sms", zztA).put("tel", zztB).put("calendar", zztC).put("storePicture", zztD).put("inlineVideo", zztE);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      zzhx.zzb("Error occured while obtaining the MRAID capabilities.", localJSONException);
    }
    return null;
  }
  
  public static final class zza
  {
    private boolean zztA;
    private boolean zztB;
    private boolean zztC;
    private boolean zztD;
    private boolean zztE;
    
    public final zzee zzcR()
    {
      return new zzee(this, null);
    }
    
    public final zza zzn(boolean paramBoolean)
    {
      zztA = paramBoolean;
      return this;
    }
    
    public final zza zzo(boolean paramBoolean)
    {
      zztB = paramBoolean;
      return this;
    }
    
    public final zza zzp(boolean paramBoolean)
    {
      zztC = paramBoolean;
      return this;
    }
    
    public final zza zzq(boolean paramBoolean)
    {
      zztD = paramBoolean;
      return this;
    }
    
    public final zza zzr(boolean paramBoolean)
    {
      zztE = paramBoolean;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */