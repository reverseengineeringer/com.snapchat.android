package com.snapchat.android.fragments.chat;

import android.animation.ValueAnimator;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.ViewPropertyAnimator;
import bhr;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.ui.CashSwiperView;
import com.snapchat.android.ui.CashSwiperView.2;
import java.io.IOException;

final class ChatFragment$16$1
  implements Runnable
{
  ChatFragment$16$1(ChatFragment.16 param16) {}
  
  public final void run()
  {
    AnalyticsEvents.a(a.a);
    a.b.p();
    CashSwiperView localCashSwiperView = (CashSwiperView)ChatFragment.b(a.b).a();
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
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.16.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */