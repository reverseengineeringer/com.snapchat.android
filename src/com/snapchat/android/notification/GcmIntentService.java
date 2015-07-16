package com.snapchat.android.notification;

import akr;
import amw;
import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import aph;
import axy;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;
import qe;

public class GcmIntentService
  extends IntentService
{
  private static aph a = ;
  
  public GcmIntentService()
  {
    super("GcmIntentService");
  }
  
  public void onCreate()
  {
    kkxxkk.b041E041EОО041EО(getApplicationContext());
    xkkkxk.b041E041EООО041E(getApplicationContext());
    super.onCreate();
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    Object localObject2 = GoogleCloudMessaging.getInstance(this).getMessageType(paramIntent);
    StringBuilder localStringBuilder = new StringBuilder("onHandleIntent messageType=").append((String)localObject2).append(", intent=").append(paramIntent).append(", extras=");
    Object localObject1;
    if (paramIntent == null)
    {
      localObject1 = null;
      localStringBuilder.append(localObject1);
      if ("gcm".equals(localObject2))
      {
        axy.a(getCacheDir(), getExternalCacheDir());
        localObject1 = paramIntent.getStringExtra("registration_id");
        if (TextUtils.isEmpty((CharSequence)localObject1)) {
          break label126;
        }
        amw.a(this, (String)localObject1);
        if (!TextUtils.equals((CharSequence)localObject1, akr.w())) {
          new qe((String)localObject1).executeSynchronously();
        }
      }
    }
    for (;;)
    {
      GcmMessageReceiver.completeWakefulIntent(paramIntent);
      return;
      localObject1 = paramIntent.getExtras();
      break;
      label126:
      localObject1 = a;
      localObject2 = ((aph)localObject1).b(this);
      ((Intent)localObject2).putExtra("op_code", 1000);
      ((Intent)localObject2).putExtra("gcm_intent", paramIntent);
      ((aph)localObject1).a(this, (Intent)localObject2);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.notification.GcmIntentService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */