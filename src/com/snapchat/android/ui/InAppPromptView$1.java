package com.snapchat.android.ui;

import amu;
import amu.a;
import amv;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import bbo;
import bdr;
import beg;
import com.snapchat.android.notification.AndroidNotificationManager.Type;
import com.snapchat.android.notification.AndroidNotificationManager.a;
import com.snapchat.android.notification.AndroidNotificationManager.b;
import com.squareup.otto.Bus;

final class InAppPromptView$1
  implements View.OnClickListener
{
  InAppPromptView$1(InAppPromptView paramInAppPromptView, amu.a parama) {}
  
  public final void onClick(View paramView)
  {
    AndroidNotificationManager.a locala = null;
    InAppPromptView.a(b).b();
    if (a.d != null) {}
    for (paramView = new AndroidNotificationManager.b(a.a, a.d);; paramView = null)
    {
      paramView = amv.a(InAppPromptView.b(b), a.c, locala, paramView, false);
      if (a.c != AndroidNotificationManager.Type.ADDFRIEND)
      {
        bbo.a().a(new beg(true));
        bbo.a().a(new bdr(1));
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