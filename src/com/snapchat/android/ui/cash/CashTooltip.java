package com.snapchat.android.ui.cash;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewPropertyAnimator;
import android.widget.RelativeLayout;
import com.snapchat.android.database.SharedPreferenceKey;

public class CashTooltip
  extends RelativeLayout
{
  private final SharedPreferences a;
  private boolean b;
  
  public CashTooltip(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CashTooltip(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130968613, this, true);
    a = PreferenceManager.getDefaultSharedPreferences(paramContext);
    b = false;
    setAlpha(0.0F);
  }
  
  private boolean b()
  {
    boolean bool = false;
    if (a.getInt(SharedPreferenceKey.CASH_TOOLTIP_DISPLAY_COUNT.getKey(), 0) < 3) {
      bool = true;
    }
    return bool;
  }
  
  public final void a()
  {
    if (b())
    {
      SharedPreferences.Editor localEditor = a.edit();
      localEditor.putInt(SharedPreferenceKey.CASH_TOOLTIP_DISPLAY_COUNT.getKey(), 3);
      localEditor.apply();
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    if (paramBoolean == b) {}
    while (!b()) {
      return;
    }
    b = paramBoolean;
    if (paramBoolean) {}
    for (float f = 1.0F;; f = 0.0F)
    {
      final ViewPropertyAnimator localViewPropertyAnimator = animate();
      localViewPropertyAnimator.alpha(f).setDuration(1000L);
      if (paramBoolean)
      {
        localViewPropertyAnimator.setListener(new Animator.AnimatorListener()
        {
          public final void onAnimationCancel(Animator paramAnonymousAnimator) {}
          
          public final void onAnimationEnd(Animator paramAnonymousAnimator)
          {
            localViewPropertyAnimator.setListener(null);
            localViewPropertyAnimator.alpha(0.0F).setDuration(1000L).setStartDelay(3000L).start();
          }
          
          public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
          
          public final void onAnimationStart(Animator paramAnonymousAnimator) {}
        });
        int i = a.getInt(SharedPreferenceKey.CASH_TOOLTIP_DISPLAY_COUNT.getKey(), 0);
        SharedPreferences.Editor localEditor = a.edit();
        localEditor.putInt(SharedPreferenceKey.CASH_TOOLTIP_DISPLAY_COUNT.getKey(), i + 1);
        localEditor.apply();
      }
      localViewPropertyAnimator.setStartDelay(0L).start();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.cash.CashTooltip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */