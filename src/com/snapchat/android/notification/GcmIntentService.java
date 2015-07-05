package com.snapchat.android.notification;

import ajx;
import alz;
import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import aol;
import axa;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.snapchat.android.Timber;
import pn;

public class GcmIntentService
  extends IntentService
{
  private static aol a = ;
  
  public GcmIntentService()
  {
    super("GcmIntentService");
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    Object localObject2 = GoogleCloudMessaging.getInstance(this).getMessageType(paramIntent);
    StringBuilder localStringBuilder = new StringBuilder("onHandleIntent messageType=").append((String)localObject2).append(", intent=").append(paramIntent).append(", extras=");
    Object localObject1;
    if (paramIntent == null)
    {
      localObject1 = null;
      Timber.c("GcmIntentService", localObject1, new Object[0]);
      if (!"gcm".equals(localObject2)) {
        break label197;
      }
      Timber.c("GcmIntentService", "handleIntent", new Object[0]);
      axa.a(getCacheDir(), getExternalCacheDir());
      localObject1 = paramIntent.getStringExtra("registration_id");
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        break label159;
      }
      alz.a(this, (String)localObject1);
      if (!TextUtils.equals((CharSequence)localObject1, ajx.w()))
      {
        Timber.c("GcmIntentService", "Running DeviceSyncTask because the user's notification ID is different from the GCM reg ID.", new Object[0]);
        new pn((String)localObject1).i();
      }
    }
    for (;;)
    {
      GcmMessageReceiver.completeWakefulIntent(paramIntent);
      return;
      localObject1 = paramIntent.getExtras();
      break;
      label159:
      localObject1 = a;
      localObject2 = ((aol)localObject1).b(this);
      ((Intent)localObject2).putExtra("op_code", 1000);
      ((Intent)localObject2).putExtra("gcm_intent", paramIntent);
      ((aol)localObject1).a(this, (Intent)localObject2);
      continue;
      label197:
      Timber.f("GcmIntentService", "GCM received a tickle for an error or deleted messages on server.", new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.notification.GcmIntentService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */