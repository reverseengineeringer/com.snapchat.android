package com.snapchat.android.fragments.chat;

import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.os.Handler;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewPropertyAnimator;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import atz;
import avh;
import bgr;
import com.snapchat.android.ui.CashReceiverView;
import com.snapchat.android.ui.CashReceiverView.3;
import com.snapchat.android.ui.CashReceiverView.4;
import com.snapchat.android.ui.CashReceiverView.a;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

final class ChatFragment$18
  implements Runnable
{
  ChatFragment$18(ChatFragment paramChatFragment, int paramInt, long paramLong) {}
  
  public final void run()
  {
    if (!ChatFragment.E(c))
    {
      ChatFragment.F(c);
      l = ((1.0F - ((CashReceiverView)ChatFragment.G(c).a()).getAlpha()) * 500.0F);
      ((CashReceiverView)ChatFragment.G(c).a()).animate().alpha(1.0F).setListener(null).setDuration(l);
    }
    CashReceiverView localCashReceiverView = (CashReceiverView)ChatFragment.G(c).a();
    int j = a;
    long l = b;
    int i;
    if (f.containsKey(Long.valueOf(l)))
    {
      i = j - ((Integer)f.get(Long.valueOf(l))).intValue();
      if (i > 0)
      {
        f.put(Long.valueOf(l), Integer.valueOf(j));
        if ((e == null) || (!e.isStarted())) {
          localCashReceiverView.a(CashReceiverView.a.a);
        }
        j = 0;
      }
    }
    else
    {
      for (;;)
      {
        if (j >= i) {
          break label873;
        }
        ImageView localImageView = new ImageView(localCashReceiverView.getContext());
        localImageView.setImageDrawable(localCashReceiverView.getResources().getDrawable(2130837672));
        localImageView.setLayoutParams(new ViewGroup.LayoutParams((int)avh.a(72.0F, localCashReceiverView.getContext()), (int)avh.a(36.0F, localCashReceiverView.getContext())));
        localImageView.setTag("FALLING_DOLLAR_TAG");
        float f4 = atz.a().nextFloat();
        float f5 = 0.9F + atz.a().nextFloat() * 0.2F;
        localImageView.setScaleX(f5);
        localImageView.setScaleY(f5);
        int k = 0;
        for (;;)
        {
          if ((k < localCashReceiverView.getChildCount()) && (f5 > localCashReceiverView.getChildAt(k).getScaleX()))
          {
            k += 1;
            continue;
            i = j;
            break;
          }
        }
        localCashReceiverView.addView(localImageView, k);
        float f1 = avh.a(3.33F - 1.66F * f4, localCashReceiverView.getContext());
        float f2 = avh.a(0.2F + 0.1F * f4, localCashReceiverView.getContext());
        float f3 = avh.a(0.0015F + -5.0E-4F * f4, localCashReceiverView.getContext());
        f4 = avh.a(133.0F * f5 + f4 * -66.0F, localCashReceiverView.getContext());
        f5 = localCashReceiverView.getMeasuredWidth();
        float f6 = atz.a().nextFloat();
        float f7 = getLayoutParamswidth / 2.0F;
        float f8 = (float)(6.283185307179586D * atz.a().nextFloat());
        float f9 = -getLayoutParamsheight;
        float f10 = avh.a(5.0F, localCashReceiverView.getContext());
        ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
        localValueAnimator.setDuration(5000L);
        localValueAnimator.setInterpolator(new LinearInterpolator());
        localValueAnimator.addUpdateListener(new CashReceiverView.3(localCashReceiverView, localImageView, f3, f8, f4, f5 * (0.4F + 0.2F * f6) - f7, f9 - f10, f2, f1));
        localValueAnimator.addListener(new CashReceiverView.4(localCashReceiverView, localImageView));
        localValueAnimator.start();
        if (a < 6)
        {
          localImageView = new ImageView(localCashReceiverView.getContext());
          localImageView.setImageResource(2130837671);
          k = (int)avh.a(9.0F, localCashReceiverView.getContext());
          int m = (int)avh.a(18.0F, localCashReceiverView.getContext());
          f1 = 0.9F + 0.2F * atz.a().nextFloat();
          localImageView.setScaleX(f1);
          localImageView.setScaleY(f1);
          localImageView.setLayoutParams(new ViewGroup.LayoutParams(k, m));
          localImageView.setTag("CAUGHT_DOLLAR_TAG");
          c.addView(localImageView);
          f2 = -2.0F + 2.0F * atz.a().nextFloat();
          if ((!d) || (a % 2 != 0))
          {
            f1 = f2;
            if (!d)
            {
              f1 = f2;
              if (a % 2 == 0) {}
            }
          }
          else
          {
            f1 = f2 + 32.0F;
          }
          localImageView.setTranslationX(avh.a(f1, localCashReceiverView.getContext()));
          localImageView.setTranslationY(avh.a(4.0F + 2.0F * atz.a().nextFloat(), localCashReceiverView.getContext()));
          localImageView.setRotation(-30.0F + 60.0F * atz.a().nextFloat());
        }
        b.add(Long.valueOf(SystemClock.elapsedRealtime()));
        a += 1;
        j += 1;
      }
    }
    label873:
    ChatFragment.H(c).removeCallbacksAndMessages(null);
    ChatFragment.H(c).postDelayed(new Runnable()
    {
      public final void run()
      {
        ChatFragment.I(c);
      }
    }, 3000L);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.18
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */