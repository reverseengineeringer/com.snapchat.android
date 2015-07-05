package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import org.json.JSONObject;

@zzgi
public class zzey
  extends Handler
{
  private final zzex zzuM;
  
  public zzey(Context paramContext)
  {
    this(new zzez(paramContext));
  }
  
  public zzey(zzex paramzzex)
  {
    zzuM = paramzzex;
  }
  
  private void zzb(JSONObject paramJSONObject)
  {
    try
    {
      zzuM.zza(paramJSONObject.getString("request_id"), paramJSONObject.getString("base_url"), paramJSONObject.getString("html"));
      return;
    }
    catch (Exception paramJSONObject) {}
  }
  
  public void handleMessage(Message paramMessage)
  {
    try
    {
      paramMessage = paramMessage.getData();
      if (paramMessage == null) {
        return;
      }
      paramMessage = new JSONObject(paramMessage.getString("data"));
      if ("fetch_html".equals(paramMessage.getString("message_name")))
      {
        zzb(paramMessage);
        return;
      }
    }
    catch (Exception paramMessage) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */