package net.hockeyapp.android;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import bwg;

final class LoginActivity$1
  extends Handler
{
  LoginActivity$1(LoginActivity paramLoginActivity) {}
  
  public final void handleMessage(Message paramMessage)
  {
    if (paramMessage.getData().getBoolean("success"))
    {
      a.finish();
      if (bwg.b != null) {}
      return;
    }
    Toast.makeText(a, "Login failed. Check your credentials.", 2000).show();
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.LoginActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */