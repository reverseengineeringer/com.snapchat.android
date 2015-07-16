package com.snapchat.android.discover.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

public class OpenChannelAnimationView
  extends ViewGroup
{
  public ImageView a;
  public ChannelView b = null;
  public boolean c = false;
  public boolean d = false;
  private Context e;
  
  public OpenChannelAnimationView(Context paramContext)
  {
    super(paramContext);
    e = paramContext;
  }
  
  public OpenChannelAnimationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    e = paramContext;
  }
  
  public static float a(float paramFloat1, float paramFloat2)
  {
    return (float)Math.sqrt(Math.pow(paramFloat1, 2.0D) + Math.pow(paramFloat2, 2.0D));
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  void setBackgroundCircle(ImageView paramImageView)
  {
    a = paramImageView;
  }
  
  void setChannelView(ChannelView paramChannelView)
  {
    b = paramChannelView;
  }
  
  public static abstract interface a
  {
    public abstract void a(ChannelView paramChannelView);
  }
  
  abstract class b
    implements Animator.AnimatorListener
  {
    private b() {}
    
    public void onAnimationCancel(Animator paramAnimator) {}
    
    public void onAnimationRepeat(Animator paramAnimator) {}
    
    public void onAnimationStart(Animator paramAnimator) {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.OpenChannelAnimationView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */