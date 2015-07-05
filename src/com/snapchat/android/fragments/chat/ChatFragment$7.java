package com.snapchat.android.fragments.chat;

import aiq;
import aje;
import aji;
import android.content.Context;
import android.os.SystemClock;
import android.support.v4.view.GestureDetectorCompat;
import android.support.v4.view.GestureDetectorCompat.GestureDetectorCompatImpl;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ListView;
import aup;
import ban;
import baz;
import bdb;
import com.snapchat.android.analytics.SnapViewEventAnalytics;
import com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSourceType;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.listeners.SwipeableListItemTouchListener;
import com.snapchat.android.ui.listeners.SwipeableListItemTouchListener.SwipeDirection;
import com.snapchat.android.ui.listeners.SwipeableListItemTouchListener.a;
import com.squareup.otto.Bus;
import ni;
import yq;

final class ChatFragment$7
  extends SwipeableListItemTouchListener
{
  private long j;
  
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
      j = SystemClock.uptimeMillis();
      Object localObject1 = a;
      Object localObject2 = ((ChatFragment)localObject1).a(paramMotionEvent);
      if ((localObject2 instanceof Snap))
      {
        aup localaup = aup.d();
        localObject2 = (Snap)localObject2;
        localObject1 = ((ChatFragment)localObject1).getActivity();
        if (!((Snap)localObject2).f())
        {
          localaup.a((Context)localObject1, (Snap)localObject2, null);
          continue;
          if (SystemClock.uptimeMillis() - j <= 190L)
          {
            localObject1 = a;
            localObject2 = ((ChatFragment)localObject1).a(paramMotionEvent);
            if ((localObject2 instanceof Snap))
            {
              localaup = aup.d();
              localObject2 = (Snap)localObject2;
              localObject1 = e;
              if (((Snap)localObject2).f()) {
                if ((localObject2 instanceof aje))
                {
                  mSnapViewEventAnalytics.a(SnapViewEventAnalytics.SnapViewEventSourceType.CHAT);
                  localaup.a((aje)localObject2, new aiq(false), "chat");
                }
                else if ((localObject2 instanceof aji))
                {
                  yq.a((aji)localObject2);
                  ban.a().a(new baz(mId, ((Snap)localObject2).d()));
                  ban.a().a(new bdb());
                  ni.a("chat");
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