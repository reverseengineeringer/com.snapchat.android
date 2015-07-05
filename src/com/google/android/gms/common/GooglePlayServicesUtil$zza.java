package com.google.android.gms.common;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class GooglePlayServicesUtil$zza
  extends Handler
{
  private final Context zznk;
  
  GooglePlayServicesUtil$zza(Context paramContext) {}
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      new StringBuilder("Don't know how to handle this message: ").append(what);
    }
    int i;
    do
    {
      return;
      i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(zznk);
    } while (!GooglePlayServicesUtil.isUserRecoverableError(i));
    GooglePlayServicesUtil.zzb(i, zznk);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.GooglePlayServicesUtil.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */