package com.snapchat.android.notification;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.v4.content.WakefulBroadcastReceiver;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;
import nz;

public class GcmMessageReceiver
  extends WakefulBroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    kkxxkk.b041E041EОО041EО(paramContext);
    xkkkxk.b041E041EООО041E(paramContext);
    StringBuilder localStringBuilder = new StringBuilder("onReceive intent=").append(paramIntent).append(", extras=");
    if (paramIntent == null) {}
    for (Object localObject = null;; localObject = paramIntent.getExtras())
    {
      localStringBuilder.append(localObject);
      startWakefulService(paramContext, paramIntent.setComponent(new ComponentName(paramContext.getPackageName(), GcmIntentService.class.getName())));
      setResultCode(-1);
      paramContext = paramIntent.getStringExtra("type");
      nz.a();
      nz.b(paramContext);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.notification.GcmMessageReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */