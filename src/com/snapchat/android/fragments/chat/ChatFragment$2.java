package com.snapchat.android.fragments.chat;

import android.view.View;
import android.view.View.OnClickListener;
import bgp;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.ui.CashSwiperView.SwipeActivationMethod;
import com.snapchat.android.ui.ChatCameraButton;
import com.snapchat.android.ui.CursorCallbackEditText;
import com.snapchat.android.ui.cash.CashTooltip;
import com.snapchat.android.util.CashUtils;
import xu;
import ya;
import ya.a;

final class ChatFragment$2
  implements View.OnClickListener
{
  ChatFragment$2(ChatFragment paramChatFragment) {}
  
  public final void onClick(final View paramView)
  {
    if (ChatFragment.g(a).getIsEmoji()) {
      ChatFragment.d(a);
    }
    do
    {
      return;
      if (ChatFragment.g(a).getCashSwipeDetected())
      {
        AnalyticsEvents.Q();
        ChatFragment.a(a, CashSwiperView.SwipeActivationMethod.DOLLARS);
        return;
      }
      if (!ChatFragment.g(a).getCashtagDetected()) {
        break;
      }
    } while (ChatFragment.f(a) == null);
    AnalyticsEvents.Q();
    ChatFragment.o(a);
    ChatFragment.a(a, ChatFragment.i(a).hasFocus());
    ChatFragment.p(a).a();
    paramView = a.h;
    final int i = xu.a(ChatFragment.i(a));
    paramView = a.h;
    int j = xu.a(ChatFragment.i(a).getEditableText());
    final int k = ChatFragment.i(a).getSelectionEnd();
    paramView = a.i;
    paramView = ya.a(ChatFragment.f(a), j + i, false);
    a.i.a(paramView, new ya.a()
    {
      public final void a()
      {
        ChatFragment.a(a, paramView);
        bgp.a(new Runnable()
        {
          public final void run()
          {
            xu localxu = a.h;
            xu.a(ChatFragment.i(a), b);
            ChatFragment.q(a);
            AnalyticsEvents.u(CashUtils.a(c));
          }
        });
      }
      
      public final void b()
      {
        ChatFragment.q(a);
      }
    });
    return;
    ChatFragment.r(a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */