package com.flurry.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.flurry.sdk.cy;
import com.flurry.sdk.el;
import com.flurry.sdk.fb;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

public final class InstallReceiver
  extends BroadcastReceiver
{
  static final String a = InstallReceiver.class.getSimpleName();
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    kkxxkk.b041E041EОО041EО(paramContext);
    xkkkxk.b041E041EООО041E(paramContext);
    el.a(4, a, "Received an Install nofication of " + paramIntent.getAction());
    String str = paramIntent.getExtras().getString("referrer");
    el.a(4, a, "Received an Install referrer of " + str);
    if ((str == null) || (!"com.android.vending.INSTALL_REFERRER".equals(paramIntent.getAction())))
    {
      el.a(5, a, "referrer is null");
      return;
    }
    paramIntent = str;
    if (!str.contains("="))
    {
      el.a(4, a, "referrer is before decoding: " + str);
      paramIntent = fb.c(str);
      el.a(4, a, "referrer is: " + paramIntent);
    }
    new cy(paramContext).a(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.InstallReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */