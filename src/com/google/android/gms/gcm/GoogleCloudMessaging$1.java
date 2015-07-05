package com.google.android.gms.gcm;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.BlockingQueue;

class GoogleCloudMessaging$1
  extends Handler
{
  GoogleCloudMessaging$1(GoogleCloudMessaging paramGoogleCloudMessaging, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (paramMessage != null) {
      Object localObject = obj;
    }
    paramMessage = (Intent)obj;
    if ("com.google.android.c2dm.intent.REGISTRATION".equals(paramMessage.getAction())) {
      GoogleCloudMessaging.zza(zzald).add(paramMessage);
    }
    while (GoogleCloudMessaging.zza(zzald, paramMessage)) {
      return;
    }
    paramMessage.setPackage(GoogleCloudMessaging.zzb(zzald).getPackageName());
    GoogleCloudMessaging.zzb(zzald).sendBroadcast(paramMessage);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.gcm.GoogleCloudMessaging.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */