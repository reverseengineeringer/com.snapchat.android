package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;

@zzgi
public class zzfj
{
  public String zzL(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = new JSONObject(paramString).getString("developerPayload");
      return paramString;
    }
    catch (JSONException paramString)
    {
      zzhx.zzac("Fail to parse purchase data");
    }
    return null;
  }
  
  public String zzM(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = new JSONObject(paramString).getString("purchaseToken");
      return paramString;
    }
    catch (JSONException paramString)
    {
      zzhx.zzac("Fail to parse purchase data");
    }
    return null;
  }
  
  public void zza(Context paramContext, boolean paramBoolean, zzfb paramzzfb)
  {
    Intent localIntent = new Intent();
    localIntent.setClassName(paramContext, "com.google.android.gms.ads.purchase.InAppPurchaseActivity");
    localIntent.putExtra("com.google.android.gms.ads.internal.purchase.useClientJar", paramBoolean);
    zzfb.zza(localIntent, paramzzfb);
    paramContext.startActivity(localIntent);
  }
  
  public int zzd(Intent paramIntent)
  {
    paramIntent = paramIntent.getExtras().get("RESPONSE_CODE");
    if (paramIntent == null)
    {
      zzhx.zzac("Intent with no response code, assuming OK (known issue)");
      return 0;
    }
    if ((paramIntent instanceof Integer)) {
      return ((Integer)paramIntent).intValue();
    }
    if ((paramIntent instanceof Long)) {
      return (int)((Long)paramIntent).longValue();
    }
    zzhx.zzac("Unexpected type for intent response code. " + paramIntent.getClass().getName());
    return 5;
  }
  
  public String zze(Intent paramIntent)
  {
    if (paramIntent == null) {
      return null;
    }
    return paramIntent.getStringExtra("INAPP_PURCHASE_DATA");
  }
  
  public int zzf(Bundle paramBundle)
  {
    paramBundle = paramBundle.get("RESPONSE_CODE");
    if (paramBundle == null)
    {
      zzhx.zzac("Bundle with null response code, assuming OK (known issue)");
      return 0;
    }
    if ((paramBundle instanceof Integer)) {
      return ((Integer)paramBundle).intValue();
    }
    if ((paramBundle instanceof Long)) {
      return (int)((Long)paramBundle).longValue();
    }
    zzhx.zzac("Unexpected type for intent response code. " + paramBundle.getClass().getName());
    return 5;
  }
  
  public String zzf(Intent paramIntent)
  {
    if (paramIntent == null) {
      return null;
    }
    return paramIntent.getStringExtra("INAPP_DATA_SIGNATURE");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */