package com.google.android.gms.tagmanager;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.CampaignTrackingService;

public final class InstallReferrerService
  extends IntentService
{
  CampaignTrackingService zzayQ;
  Context zzayR;
  
  public InstallReferrerService()
  {
    super("InstallReferrerService");
  }
  
  public InstallReferrerService(String paramString)
  {
    super(paramString);
  }
  
  private void zzc(Context paramContext, Intent paramIntent)
  {
    if (zzayQ == null) {
      zzayQ = new CampaignTrackingService();
    }
    zzayQ.zza(paramContext, paramIntent);
  }
  
  protected final void onHandleIntent(Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("referrer");
    if (zzayR != null) {}
    for (Context localContext = zzayR;; localContext = getApplicationContext())
    {
      zzaw.zzh(localContext, str);
      zzc(localContext, paramIntent);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.InstallReferrerService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */