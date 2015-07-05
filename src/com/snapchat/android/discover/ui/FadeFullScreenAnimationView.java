package com.snapchat.android.discover.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import aur;
import avl;
import avq;

public class FadeFullScreenAnimationView
  extends ImageView
{
  private Bitmap a = null;
  private avq b;
  private Context c;
  private b d = null;
  
  public FadeFullScreenAnimationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, avq.a());
  }
  
  public FadeFullScreenAnimationView(Context paramContext, AttributeSet paramAttributeSet, avq paramavq)
  {
    super(paramContext, paramAttributeSet);
    c = paramContext;
    b = paramavq;
  }
  
  @avl
  private void c()
  {
    if ((a == null) && (getWidth() > 0) && (getHeight() > 0))
    {
      Object localObject = aur.a(c.getResources().getDisplayMetrics(), getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
      a = b.a((BitmapFactory.Options)localObject, true);
      if (a == null) {
        a = aur.a(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
      }
      if (a != null)
      {
        localObject = new Canvas(a);
        Paint localPaint = new Paint();
        localPaint.setColor(-16777216);
        localPaint.setStyle(Paint.Style.FILL);
        ((Canvas)localObject).drawRect(0.0F, 0.0F, getWidth(), getHeight(), localPaint);
      }
      setImageBitmap(a);
    }
  }
  
  public final void a()
  {
    c();
    if (a == null) {
      return;
    }
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.play(ObjectAnimator.ofFloat(this, View.ALPHA, new float[] { getAlpha(), 1.0F }));
    localAnimatorSet.setDuration(((1.0F - getAlpha()) * 325.0F));
    localAnimatorSet.setInterpolator(new DecelerateInterpolator());
    localAnimatorSet.addListener(new a((byte)0));
    localAnimatorSet.start();
  }
  
  public final void b()
  {
    c();
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.play(ObjectAnimator.ofFloat(this, View.ALPHA, new float[] { getAlpha(), 0.0F }));
    localAnimatorSet.setDuration((getAlpha() * 325.0F));
    localAnimatorSet.setInterpolator(new DecelerateInterpolator());
    localAnimatorSet.start();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(View.MeasureSpec.getSize(paramInt1), View.MeasureSpec.getSize(paramInt2));
  }
  
  public void setAlpha(float paramFloat)
  {
    c();
    if (a == null) {
      return;
    }
    super.setAlpha(paramFloat);
  }
  
  public void setFadeFullScreenListener(b paramb)
  {
    d = paramb;
  }
  
  final class a
    implements Animator.AnimatorListener
  {
    private a() {}
    
    public final void onAnimationCancel(Animator paramAnimator) {}
    
    public final void onAnimationEnd(Animator paramAnimator)
    {
      if (FadeFullScreenAnimationView.a(FadeFullScreenAnimationView.this) != null) {
        FadeFullScreenAnimationView.a(FadeFullScreenAnimationView.this).a();
      }
    }
    
    public final void onAnimationRepeat(Animator paramAnimator) {}
    
    public final void onAnimationStart(Animator paramAnimator) {}
  }
  
  public static abstract interface b
  {
    public abstract void a();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.FadeFullScreenAnimationView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */