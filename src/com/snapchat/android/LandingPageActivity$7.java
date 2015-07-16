package com.snapchat.android;

import akp;
import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.snapchat.android.util.chat.SecureChatService.a;
import zm;

final class LandingPageActivity$7
  implements ServiceConnection
{
  LandingPageActivity$7(LandingPageActivity paramLandingPageActivity) {}
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    if ((paramIBinder instanceof SecureChatService.a))
    {
      LandingPageActivity.i = this$0;
      LandingPageActivity.a(a, true);
      if (a.mUser != null) {
        break label46;
      }
      LandingPageActivity.b(a, true);
    }
    label46:
    while ((!a.b()) || (a.mUser.mMessagingGatewayInfo == null)) {
      return;
    }
    LandingPageActivity.j();
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    LandingPageActivity.i = null;
    LandingPageActivity.a(a, false);
    LandingPageActivity.b(a, false);
    zm.a().c();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.LandingPageActivity.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */