package com.snapchat.android.fragments.chat;

import agr.c;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ListView;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.ui.LockingAboveTheFoldListView;
import ze;

final class ChatFragment$a
  extends GestureDetector.SimpleOnGestureListener
{
  private ChatFragment$a(ChatFragment paramChatFragment) {}
  
  public final boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if ((paramMotionEvent1 == null) || (paramMotionEvent2 == null) || (paramMotionEvent1.getPointerCount() != 1) || (paramMotionEvent2.getPointerCount() != 1)) {}
    do
    {
      do
      {
        View localView;
        do
        {
          do
          {
            return false;
          } while ((ChatFragment.P(a).getTranslationY() == 0.0F) && (ChatFragment.Q(a).getTranslationY() == 0.0F) && (ChatFragment.R(a).getTranslationY() == 0.0F) && (ChatFragment.S(a).getTranslationY() == 0.0F));
          i = ChatFragment.e(a).getLastVisiblePosition();
          localView = ChatFragment.e(a).getChildAt(ChatFragment.e(a).getChildCount() - 1);
        } while (localView == null);
        j = localView.getBottom();
      } while ((i != ChatFragment.e(a).getCount() - 1) || (j > ChatFragment.e(a).getHeight()));
      paramFloat1 = paramMotionEvent1.getY();
      paramFloat2 = paramMotionEvent2.getY();
    } while (paramFloat2 - paramFloat1 >= 0.0F);
    if (ChatFragment.T(a) == 0.0F)
    {
      ChatFragment.U(a);
      ChatFragment.d(a, paramFloat2);
    }
    paramFloat1 = 1.0F - Math.min((ChatFragment.T(a) - paramFloat2) / (ChatFragment.e(a).getHeight() / 16.0F), 1.0F);
    paramMotionEvent2 = ChatFragment.n(a);
    int j = a.getFirstVisiblePosition();
    int k = a.getLastVisiblePosition();
    int i = j;
    if (i <= k)
    {
      paramMotionEvent1 = (agr.c)a.getChildAt(i - j).getTag();
      if ((paramMotionEvent1 == null) || (a == null) || (!a.ak())) {}
    }
    for (;;)
    {
      if (paramMotionEvent1 != null) {
        ChatFragment.n(a).a(paramMotionEvent1, paramFloat1);
      }
      ChatFragment.c(a, paramFloat1);
      return true;
      i += 1;
      break;
      paramMotionEvent1 = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */