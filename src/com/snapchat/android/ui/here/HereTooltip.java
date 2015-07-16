package com.snapchat.android.ui.here;

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
import android.widget.TextView;
import att;
import chc;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.model.chat.ChatConversation;

public class HereTooltip
  extends RelativeLayout
{
  public final SharedPreferences a;
  private boolean b;
  private long c;
  private TextView d;
  
  public HereTooltip(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public HereTooltip(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130968683, this, true);
    d = ((TextView)findViewById(2131362040));
    c = 0L;
    a = PreferenceManager.getDefaultSharedPreferences(paramContext);
    setAlpha(0.0F);
  }
  
  public final void a(@chc ChatConversation paramChatConversation, boolean paramBoolean)
  {
    boolean bool1 = true;
    boolean bool2;
    int i;
    label43:
    TextView localTextView;
    if (paramBoolean) {
      if (mIsRecipientPresent)
      {
        paramBoolean = getWeSupportHere();
        bool2 = mRecipientSupportsHere;
        if ((!paramBoolean) || (!bool2))
        {
          i = 0;
          if (i == 0) {
            break label149;
          }
          paramBoolean = bool1;
          if (b != paramBoolean)
          {
            localTextView = d;
            bool1 = getWeSupportHere();
            bool2 = mRecipientSupportsHere;
            if (bool1) {
              break label154;
            }
            i = 2131493258;
          }
        }
      }
    }
    for (;;)
    {
      localTextView.setText(i);
      a(paramBoolean);
      return;
      int j = a.getInt(SharedPreferenceKey.TIMES_DISPLAYED_HERE_TOOLTIP.getKey(), 0);
      if (System.currentTimeMillis() - c < 7000L) {}
      for (i = 1;; i = 0)
      {
        if ((j >= 3) && (i == 0)) {
          break label144;
        }
        i = 1;
        break;
      }
      label144:
      i = 0;
      break;
      label149:
      paramBoolean = false;
      break label43;
      label154:
      if (!bool2) {
        i = 2131493257;
      } else {
        i = 2131493197;
      }
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    if (paramBoolean == b) {
      return;
    }
    b = paramBoolean;
    c = 0L;
    final ViewPropertyAnimator localViewPropertyAnimator = animate();
    if (paramBoolean) {}
    for (float f = 1.0F;; f = 0.0F)
    {
      localViewPropertyAnimator.alpha(f);
      localViewPropertyAnimator.setDuration(1000L);
      if (paramBoolean)
      {
        localViewPropertyAnimator.setListener(new Animator.AnimatorListener()
        {
          public final void onAnimationCancel(Animator paramAnonymousAnimator) {}
          
          public final void onAnimationEnd(Animator paramAnonymousAnimator)
          {
            localViewPropertyAnimator.setListener(null);
            localViewPropertyAnimator.alpha(0.0F);
            localViewPropertyAnimator.setDuration(1000L);
            localViewPropertyAnimator.setStartDelay(3000L);
            localViewPropertyAnimator.start();
          }
          
          public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
          
          public final void onAnimationStart(Animator paramAnonymousAnimator) {}
        });
        int i = a.getInt(SharedPreferenceKey.TIMES_DISPLAYED_HERE_TOOLTIP.getKey(), 0);
        SharedPreferences.Editor localEditor = a.edit();
        localEditor.putInt(SharedPreferenceKey.TIMES_DISPLAYED_HERE_TOOLTIP.getKey(), i + 1);
        localEditor.apply();
      }
      localViewPropertyAnimator.setStartDelay(0L);
      localViewPropertyAnimator.start();
      return;
    }
  }
  
  protected boolean getWeSupportHere()
  {
    return (att.b()) && (LocalPreview.a());
  }
  
  public void setCancelInChatSnapTime(long paramLong)
  {
    c = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.here.HereTooltip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */