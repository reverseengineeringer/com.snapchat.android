package com.snapchat.android.fragments.chat;

import akw;
import alb;
import alc;
import alj;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.ui.ImageResourceView;
import com.snapchat.android.ui.LockingAboveTheFoldListView;
import java.util.List;
import yw;
import yw.b;
import zh;
import zm;
import zo;

final class ChatFragment$6
  implements AdapterView.OnItemClickListener
{
  ChatFragment$6(ChatFragment paramChatFragment) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (ChatFragment.f(a) == null) {}
    ChatFeedItem localChatFeedItem;
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            paramInt -= ChatFragment.e(a).getHeaderViewsCount();
          } while (paramInt >= ChatFragment.u(a).size());
          localChatFeedItem = (ChatFeedItem)ChatFragment.u(a).get(paramInt);
        } while ((localChatFeedItem.d() == null) || ((localChatFeedItem instanceof Snap)) || ((localChatFeedItem instanceof alb)));
        if ((!localChatFeedItem.P()) || (!localChatFeedItem.R())) {
          break;
        }
        if ((localChatFeedItem instanceof alc))
        {
          new zo().a((alc)localChatFeedItem, ChatFragment.f(a));
          return;
        }
        if ((localChatFeedItem instanceof akw))
        {
          ChatFragment.w(a).a(ChatFragment.f(a), (akw)localChatFeedItem, true, true);
          return;
        }
      } while (!(localChatFeedItem instanceof CashFeedItem));
      paramAdapterView = (CashFeedItem)localChatFeedItem;
      AnalyticsEvents.n(mCashTransaction.a());
      ChatFragment.o(a);
      a.i.a(ChatFragment.f(a), paramAdapterView, new yw.b()
      {
        public final void a()
        {
          ChatFragment.q(a);
        }
        
        public final void b()
        {
          ChatFragment.q(a);
        }
      });
      return;
      if (((localChatFeedItem instanceof ChatMedia)) && (paramView != null))
      {
        paramAdapterView = paramView.findViewById(2131362105);
        if ((paramAdapterView instanceof ImageResourceView))
        {
          paramAdapterView = (ImageResourceView)paramAdapterView;
          if (paramAdapterView.b())
          {
            paramAdapterView.a();
            return;
          }
        }
      }
    } while ((!(localChatFeedItem instanceof alj)) || (!((alj)localChatFeedItem).e()));
    if ((localChatFeedItem instanceof ChatMedia)) {}
    for (paramAdapterView = ChatFragment.x();; paramAdapterView = null)
    {
      ChatFragment.x(a).a(ChatFragment.f(a), (alj)localChatFeedItem, paramAdapterView);
      ChatFragment.a(a, localChatFeedItem.d());
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */