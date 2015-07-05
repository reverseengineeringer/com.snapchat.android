package com.snapchat.android.ui.cash;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import avh;
import cgb;
import java.util.Random;
import md.a;
import xv;

public class ParticleSparkleView
  extends ViewGroup
  implements ParticleView.a
{
  public int a;
  @cgb
  public xv b;
  Random c = new Random();
  public boolean d = false;
  @cgb
  private Drawable e;
  private Context f;
  private int g;
  private int h;
  
  public ParticleSparkleView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    f = paramContext;
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, md.a.ParticleSparkleView);
    try
    {
      e = paramContext.getDrawable(0);
      a = paramContext.getInt(1, 1);
      paramContext.recycle();
      g = ((int)avh.a(25.0F, f));
      h = ((int)avh.a(125.0F, f));
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  public final void a()
  {
    ParticleView localParticleView = new ParticleView(f);
    localParticleView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
    localParticleView.setImageDrawable(e);
    localParticleView.setAnimationListener(this);
    localParticleView.setCenterPoint(b.a());
    localParticleView.setFinalSize(getParticleFinalSize());
    localParticleView.setAlpha(0.0F);
    addView(localParticleView);
    AnimatorSet localAnimatorSet = new AnimatorSet();
    int i = ParticleView.a.nextInt(300);
    int j = ParticleView.a.nextInt(100);
    int k = ParticleView.a.nextInt(100);
    localParticleView.setScaleX(0.3F);
    localParticleView.setScaleY(0.3F);
    Object localObject2 = PropertyValuesHolder.ofFloat(ParticleView.SCALE_X, new float[] { 1.0F });
    PropertyValuesHolder localPropertyValuesHolder3 = PropertyValuesHolder.ofFloat(ParticleView.SCALE_Y, new float[] { 1.0F });
    PropertyValuesHolder localPropertyValuesHolder4 = PropertyValuesHolder.ofFloat(ParticleView.ALPHA, new float[] { 1.0F });
    Object localObject1 = PropertyValuesHolder.ofFloat(ParticleView.SCALE_X, new float[] { 0.3F });
    PropertyValuesHolder localPropertyValuesHolder1 = PropertyValuesHolder.ofFloat(ParticleView.SCALE_Y, new float[] { 0.3F });
    PropertyValuesHolder localPropertyValuesHolder2 = PropertyValuesHolder.ofFloat(ParticleView.ALPHA, new float[] { 0.0F });
    localObject2 = ObjectAnimator.ofPropertyValuesHolder(localParticleView, new PropertyValuesHolder[] { localObject2, localPropertyValuesHolder3, localPropertyValuesHolder4 }).setDuration(j + 300);
    localObject1 = ObjectAnimator.ofPropertyValuesHolder(localParticleView, new PropertyValuesHolder[] { localObject1, localPropertyValuesHolder1, localPropertyValuesHolder2 }).setDuration(k + 300);
    localAnimatorSet.play((Animator)localObject2).after(i);
    localAnimatorSet.play((Animator)localObject1).after((Animator)localObject2);
    localAnimatorSet.addListener(new ParticleView.1(localParticleView, localParticleView));
    localAnimatorSet.start();
  }
  
  public final void a(ParticleView paramParticleView)
  {
    b.a(paramParticleView.getCenterPoint());
    removeView(paramParticleView);
    if (d) {
      a();
    }
  }
  
  public Drawable getParticle()
  {
    return e;
  }
  
  protected int getParticleFinalSize()
  {
    return c.nextInt(h - g) + g;
  }
  
  public void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = getChildCount();
    paramInt1 = 0;
    while (paramInt1 < paramInt2)
    {
      ParticleView localParticleView = (ParticleView)getChildAt(paramInt1);
      int n = localParticleView.getMeasuredWidth();
      paramInt3 = localParticleView.getMeasuredHeight();
      Point localPoint = localParticleView.getCenterPoint();
      paramInt4 = x;
      int i = n / 2;
      int j = y;
      int k = paramInt3 / 2;
      int m = x;
      n /= 2;
      int i1 = y;
      localParticleView.layout(paramInt4 - i, j - k, n + m, paramInt3 / 2 + i1);
      paramInt1 += 1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = getChildCount();
    setMeasuredDimension(paramInt1, paramInt2);
    paramInt1 = 0;
    while (paramInt1 < i)
    {
      ParticleView localParticleView = (ParticleView)getChildAt(paramInt1);
      paramInt2 = View.MeasureSpec.makeMeasureSpec(localParticleView.getFinalSize(), 1073741824);
      measureChild(localParticleView, paramInt2, paramInt2);
      paramInt1 += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.cash.ParticleSparkleView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */