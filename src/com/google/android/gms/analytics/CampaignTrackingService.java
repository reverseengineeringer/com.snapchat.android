package com.google.android.gms.analytics;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import java.io.IOException;
import java.io.OutputStream;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

public class CampaignTrackingService
  extends IntentService
{
  public CampaignTrackingService()
  {
    super("CampaignIntentService");
  }
  
  public CampaignTrackingService(String paramString)
  {
    super(paramString);
  }
  
  public void onCreate()
  {
    kkxxkk.b041E041EОО041EО(getApplicationContext());
    xkkkxk.b041E041EООО041E(getApplicationContext());
    super.onCreate();
  }
  
  public void onHandleIntent(Intent paramIntent)
  {
    zza(this, paramIntent);
  }
  
  public void zza(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getStringExtra("referrer");
    if (paramIntent == null)
    {
      zzae.zzZ("Campaign data not found.");
      return;
    }
    try
    {
      paramContext = paramContext.openFileOutput("gaInstallData", 0);
      paramContext.write(paramIntent.getBytes());
      paramContext.close();
      zzae.zzab("Stored campaign information.");
      return;
    }
    catch (IOException paramContext)
    {
      zzae.zzZ("Error storing install campaign.");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.CampaignTrackingService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */