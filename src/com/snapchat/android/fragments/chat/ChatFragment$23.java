package com.snapchat.android.fragments.chat;

import android.graphics.PointF;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import bhr;
import com.snapchat.android.ui.SpyRelativeLayout.a;
import com.snapchat.android.ui.here.StreamView;
import com.snapchat.android.util.CashUtils;
import yz;
import yz.1;
import yz.a;

final class ChatFragment$23
  implements SpyRelativeLayout.a
{
  ChatFragment$23(ChatFragment paramChatFragment) {}
  
  public final void a(MotionEvent paramMotionEvent)
  {
    if ((!CashUtils.a(a.f)) || ((a.g.b()) && (((StreamView)a.g.a()).e()))) {}
    yz localyz;
    label91:
    label198:
    label203:
    do
    {
      int i;
      do
      {
        return;
        localyz = ChatFragment.c(a);
        i = paramMotionEvent.getActionMasked();
        if ((i == 1) || (i == 3))
        {
          localyz.a();
          return;
        }
        if (i == 2)
        {
          if (paramMotionEvent.getPointerCount() > 1)
          {
            i = 0;
            if (i < a.length) {
              if (a[i] != null)
              {
                PointF localPointF1 = new PointF(paramMotionEvent.getX(i), paramMotionEvent.getY(i));
                PointF localPointF2 = a[i];
                if ((Math.abs(x - x) <= c) && (Math.abs(y - y) <= c)) {
                  break label198;
                }
              }
            }
            for (int j = 1;; j = 0)
            {
              if (j != 0) {
                break label203;
              }
              i += 1;
              break label91;
              break;
            }
          }
          localyz.a();
          return;
        }
      } while ((i != 0) && (i != 5));
      if (a[0] == null) {
        a[0] = new PointF(paramMotionEvent.getX(), paramMotionEvent.getY());
      }
      if ((paramMotionEvent.getPointerCount() > 1) && (a[1] == null)) {
        a[1] = new PointF(paramMotionEvent.getX(1), paramMotionEvent.getY(1));
      }
    } while ((b.hasMessages(5)) || (paramMotionEvent.getPointerCount() < 2) || (d.u_()));
    b.postDelayed(new yz.1(localyz), ViewConfiguration.getLongPressTimeout());
    b.sendEmptyMessage(5);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */