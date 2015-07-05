package com.snapchat.android.ui;

import alx;
import alx.a;
import aly;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import ban;
import bcr;
import bdg;
import com.snapchat.android.notification.AndroidNotificationManager.Type;
import com.snapchat.android.notification.AndroidNotificationManager.a;
import com.snapchat.android.notification.AndroidNotificationManager.b;
import com.squareup.otto.Bus;

final class InAppPromptView$1
  implements View.OnClickListener
{
  InAppPromptView$1(InAppPromptView paramInAppPromptView, alx.a parama) {}
  
  public final void onClick(View paramView)
  {
    AndroidNotificationManager.a locala = null;
    InAppPromptView.a(b).b();
    if (a.d != null) {}
    for (paramView = new AndroidNotificationManager.b(a.a, a.d);; paramView = null)
    {
      paramView = aly.a(InAppPromptView.b(b), a.c, locala, paramView, false);
      if (a.c != AndroidNotificationManager.Type.ADDFRIEND)
      {
        ban.a().a(new bdg(true));
        ban.a().a(new bcr(1));
      }
      InAppPromptView.b(b).startActivity(paramView);
      return;
      locala = new AndroidNotificationManager.a(a.a);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.InAppPromptView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */