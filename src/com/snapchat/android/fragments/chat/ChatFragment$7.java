package com.snapchat.android.fragments.chat;

import ajm;
import aka;
import ake;
import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.view.GestureDetectorCompat;
import android.support.v4.view.GestureDetectorCompat.GestureDetectorCompatImpl;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ListView;
import avn;
import avn.d;
import bbo;
import bca;
import beb;
import com.snapchat.android.analytics.SnapViewEventAnalytics;
import com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSourceType;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.listeners.SwipeableListItemTouchListener;
import com.snapchat.android.ui.listeners.SwipeableListItemTouchListener.SwipeDirection;
import com.snapchat.android.ui.listeners.SwipeableListItemTouchListener.a;
import com.squareup.otto.Bus;
import nz;
import zm;

final class ChatFragment$7
  extends SwipeableListItemTouchListener
{
  private long i;
  
  ChatFragment$7(ChatFragment paramChatFragment, ListView paramListView, SwipeableListItemTouchListener.SwipeDirection paramSwipeDirection, SwipeableListItemTouchListener.a parama)
  {
    super(paramListView, paramSwipeDirection, parama);
  }
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      ya).mImpl.onTouchEvent(paramMotionEvent);
      return super.onTouch(paramView, paramMotionEvent);
      i = SystemClock.uptimeMillis();
      Object localObject1 = a;
      Object localObject2 = ((ChatFragment)localObject1).a(paramMotionEvent);
      if ((localObject2 instanceof Snap))
      {
        avn localavn = avn.d();
        localObject2 = (Snap)localObject2;
        localObject1 = ((ChatFragment)localObject1).getActivity();
        if ((!((Snap)localObject2).f()) && (((Snap)localObject2).an()))
        {
          mReplaySnapRunnable = new avn.d(localavn, (aka)localObject2, null, (Context)localObject1);
          mOpenSnapHandler.postDelayed(mReplaySnapRunnable, 191L);
          mLongPressStarted = true;
          continue;
          if (SystemClock.uptimeMillis() - i <= 190L)
          {
            localObject1 = a;
            localObject2 = ((ChatFragment)localObject1).a(paramMotionEvent);
            if ((localObject2 instanceof Snap))
            {
              localavn = avn.d();
              localObject2 = (Snap)localObject2;
              localObject1 = e;
              if (((Snap)localObject2).f()) {
                if ((localObject2 instanceof aka))
                {
                  mSnapViewEventAnalytics.a(SnapViewEventAnalytics.SnapViewEventSourceType.CHAT);
                  localavn.a((aka)localObject2, new ajm(false), "chat");
                }
                else if ((localObject2 instanceof ake))
                {
                  zm.a((ake)localObject2, (ChatConversation)localObject1);
                  bbo.a().a(new bca(mId, ((Snap)localObject2).d()));
                  bbo.a().a(new beb());
                  nz.a("chat");
                }
              }
            }
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */