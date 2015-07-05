package com.snapchat.android.notification;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.v4.content.WakefulBroadcastReceiver;
import com.snapchat.android.Timber;
import ni;

public class GcmMessageReceiver
  extends WakefulBroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    StringBuilder localStringBuilder = new StringBuilder("onReceive intent=").append(paramIntent).append(", extras=");
    if (paramIntent == null) {}
    for (Object localObject = null;; localObject = paramIntent.getExtras())
    {
      Timber.c("GcmMessageReceiver", localObject, new Object[0]);
      startWakefulService(paramContext, paramIntent.setComponent(new ComponentName(paramContext.getPackageName(), GcmIntentService.class.getName())));
      setResultCode(-1);
      paramContext = paramIntent.getStringExtra("type");
      ni.a();
      ni.b(paramContext);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.notification.GcmMessageReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */