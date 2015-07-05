package com.snapchat.android.ui;

import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;

public class QuickSnapOnboardingOverlay
  extends LinearLayout
{
  private static int a = -1;
  private final Handler b;
  private final FrameLayout c;
  private final FrameLayout d;
  private OverlayMode e = OverlayMode.MODE_SOLID;
  private boolean f;
  private final Runnable g = new Runnable()
  {
    public final void run()
    {
      QuickSnapOnboardingOverlay.a(QuickSnapOnboardingOverlay.this, QuickSnapOnboardingOverlay.OverlayMode.MODE_BLINK);
      ViewPropertyAnimator localViewPropertyAnimator = animate();
      localViewPropertyAnimator.alpha(0.0F);
      localViewPropertyAnimator.setDuration(2000L);
      localViewPropertyAnimator.start();
    }
  };
  
  public QuickSnapOnboardingOverlay(Context paramContext)
  {
    super(paramContext);
    View localView = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130968716, this, true);
    if (localView == null) {
      throw new NullPointerException();
    }
    localView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    if (a == -1) {
      a = paramContext.getResources().getColor(2131230790);
    }
    c = ((FrameLayout)findViewById(2131362579));
    d = ((FrameLayout)findViewById(2131362580));
    b = new Handler();
  }
  
  public void setHeightThreshold(int paramInt)
  {
    ViewGroup.LayoutParams localLayoutParams = c.getLayoutParams();
    if (localLayoutParams == null) {
      throw new NullPointerException();
    }
    height = paramInt;
    c.setLayoutParams(localLayoutParams);
  }
  
  public void setOverlayMode(OverlayMode paramOverlayMode)
  {
    e = paramOverlayMode;
    b.removeCallbacks(g);
    switch (2.a[e.ordinal()])
    {
    default: 
      throw new RuntimeException("Unexpected OverlayMode" + e);
    case 1: 
      setAlpha(0.0F);
      return;
    case 2: 
      b.postDelayed(g, 6000L);
      setAlpha(1.0F);
      return;
    }
    setAlpha(1.0F);
  }
  
  public void setUpperRegionHighlight(boolean paramBoolean)
  {
    if (paramBoolean == f) {
      return;
    }
    f = paramBoolean;
    Object localObject = c;
    if (paramBoolean)
    {
      i = 0;
      label25:
      ((FrameLayout)localObject).setBackgroundColor(i);
      localObject = d;
      if (!paramBoolean) {
        break label143;
      }
    }
    label143:
    for (int i = a;; i = 0)
    {
      ((FrameLayout)localObject).setBackgroundColor(i);
      if (e != OverlayMode.MODE_BLINK) {
        break;
      }
      localObject = new AnimatorSet();
      ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(this, "alpha", new float[] { getAlpha(), 1.0F }).setDuration(500L);
      ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(this, "alpha", new float[] { 1.0F, 0.0F }).setDuration(500L);
      ((AnimatorSet)localObject).play(localObjectAnimator1).before(localObjectAnimator2);
      ((AnimatorSet)localObject).start();
      return;
      i = a;
      break label25;
    }
  }
  
  public static enum OverlayMode
  {
    MODE_BLINK,  MODE_SOLID,  MODE_SOLID_EXPIRE;
    
    private OverlayMode() {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.QuickSnapOnboardingOverlay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */