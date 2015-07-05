package com.snapchat.android.stories.ui.animation;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import aqd;
import avh;
import java.util.ArrayList;
import java.util.List;

public class DismissAnimationView
  extends FrameLayout
{
  public final AnimatorSet a = new AnimatorSet();
  
  public DismissAnimationView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public DismissAnimationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public DismissAnimationView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    aqd localaqd = new aqd(getResources().getColor(2131230806));
    ImageView localImageView = new ImageView(paramContext);
    avh.a(localImageView, localaqd);
    int i = avh.a(paramContext);
    int j = avh.b(paramContext);
    float f1 = (float)Math.sqrt(i * i + j * j) * 0.5F;
    float f2 = i;
    float f3 = j;
    addView(localImageView, (int)f1 * 2, (int)f1 * 2);
    localImageView.setX(f2 * 0.5F - f1);
    localImageView.setY(f3 * 0.5F - f1);
    a.setDuration(300L);
    a.setInterpolator(new AccelerateDecelerateInterpolator());
    paramContext = new ArrayList(3);
    paramContext.add(ObjectAnimator.ofFloat(localImageView, View.SCALE_X, new float[] { 1.0F, 0.0F }));
    paramContext.add(ObjectAnimator.ofFloat(localImageView, View.SCALE_Y, new float[] { 1.0F, 0.0F }));
    paramContext.add(ObjectAnimator.ofFloat(localImageView, View.ALPHA, new float[] { 1.0F, 0.0F }));
    a.playTogether(paramContext);
    a.addListener(new Animator.AnimatorListener()
    {
      public final void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        setVisibility(8);
      }
      
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        setVisibility(8);
      }
      
      public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
      
      public final void onAnimationStart(Animator paramAnonymousAnimator)
      {
        setVisibility(0);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.stories.ui.animation.DismissAnimationView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */