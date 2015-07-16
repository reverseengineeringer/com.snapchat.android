package com.snapchat.android.fragments.chat;

import android.animation.ValueAnimator;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.ViewPropertyAnimator;
import bbo;
import beg;
import bhp;
import bhr;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.ui.CashSwiperView;
import com.snapchat.android.ui.CashSwiperView.2;
import com.snapchat.android.ui.CashSwiperView.SwipeActivationMethod;
import com.squareup.otto.Bus;
import java.io.IOException;
import yw.a;

final class ChatFragment$16
  implements yw.a
{
  ChatFragment$16(ChatFragment paramChatFragment, CashSwiperView.SwipeActivationMethod paramSwipeActivationMethod) {}
  
  public final void a()
  {
    bhp.a(new Runnable()
    {
      public final void run()
      {
        AnalyticsEvents.a(a);
        b.p();
        CashSwiperView localCashSwiperView = (CashSwiperView)ChatFragment.b(b).a();
        localCashSwiperView.setAlpha(0.0F);
        localCashSwiperView.setEnabled(true);
        localCashSwiperView.setVisibility(0);
        localCashSwiperView.animate().alpha(1.0F).setListener(null).setDuration(500L).start();
        e = false;
        if (c != null)
        {
          localCashSwiperView.setUpFadeInAudio();
          d.start();
          c.start();
        }
        for (;;)
        {
          localCashSwiperView.a(5000);
          return;
          c = new MediaPlayer();
          c.setLooping(true);
          Uri localUri = Uri.parse(CashSwiperView.a);
          c.setAudioStreamType(3);
          try
          {
            c.setDataSource(localCashSwiperView.getContext(), localUri);
            c.setOnPreparedListener(new CashSwiperView.2(localCashSwiperView));
            c.prepareAsync();
          }
          catch (IOException localIOException) {}
        }
      }
    });
    ChatFragment.y();
    ChatFragment.C(b);
    bbo.a().a(new beg(false));
  }
  
  public final void b()
  {
    ChatFragment.q(b);
    ChatFragment.D(b);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */