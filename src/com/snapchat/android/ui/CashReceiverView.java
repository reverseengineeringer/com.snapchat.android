package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.RelativeLayout;
import aux;
import awf;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

public class CashReceiverView
  extends RelativeLayout
{
  public int a = 0;
  public List<Long> b;
  public ViewGroup c;
  public boolean d;
  public ValueAnimator e;
  public HashMap<Long, Integer> f = new HashMap();
  private boolean g;
  
  public CashReceiverView(Context paramContext)
  {
    super(paramContext);
    b();
  }
  
  public CashReceiverView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b();
  }
  
  public CashReceiverView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    b();
  }
  
  private void b()
  {
    ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(2130968610, this);
    c = ((ViewGroup)findViewById(2131362020));
    b = new ArrayList();
    a();
  }
  
  private float getHotness()
  {
    long l = SystemClock.elapsedRealtime();
    Iterator localIterator = b.iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      if (((Long)localIterator.next()).longValue() <= l - 2000L) {
        break label71;
      }
      i += 1;
    }
    label71:
    for (;;)
    {
      break;
      return (float)Math.sqrt(Math.min(i / 6.0F, 1.0F));
    }
  }
  
  public final void a()
  {
    d = aux.a().nextBoolean();
    a = 0;
    b.clear();
    if (e != null) {
      e.cancel();
    }
    c.setTranslationX(0.0F);
    c.setTranslationY(0.0F);
    Iterator localIterator = awf.a(c).iterator();
    View localView;
    while (localIterator.hasNext())
    {
      localView = (View)localIterator.next();
      if (TextUtils.equals((CharSequence)localView.getTag(), "CAUGHT_DOLLAR_TAG")) {
        c.removeView(localView);
      }
    }
    localIterator = awf.a(this).iterator();
    while (localIterator.hasNext())
    {
      localView = (View)localIterator.next();
      if (TextUtils.equals((CharSequence)localView.getTag(), "FALLING_DOLLAR_TAG")) {
        removeView(localView);
      }
    }
  }
  
  public final void a(final int paramInt)
  {
    g = false;
    e = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
    e.setInterpolator(new LinearInterpolator());
    e.setDuration((950.0F - 650.0F * getHotness()));
    final float f2 = aux.a().nextFloat() * 50.0F + 50.0F + getHotness() * (aux.a().nextFloat() * 25.0F + 25.0F);
    final float f1 = f2;
    if (paramInt == a.b) {
      f1 = -f2;
    }
    f1 = awf.a(f1, getContext());
    f2 = c.getTranslationX();
    final float f3 = awf.a(aux.a().nextFloat() * 25.0F + 50.0F + getHotness() * (aux.a().nextFloat() * 75.0F + 75.0F), getContext());
    e.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        float f1 = ((Float)CashReceiverView.a(CashReceiverView.this).getAnimatedValue()).floatValue();
        CashReceiverView.b(CashReceiverView.this).setTranslationY(f3 * f1 * (f1 - 1.0F));
        float f2 = f2;
        f2 = f1 * f1 + f2;
        if (f2 < 0.0F) {
          f1 = -f2;
        }
        for (;;)
        {
          CashReceiverView.b(CashReceiverView.this).setTranslationX(f1);
          return;
          f1 = f2;
          if (CashReceiverView.b(CashReceiverView.this).getMeasuredWidth() + f2 > getMeasuredWidth()) {
            f1 = f2 - 2.0F * (CashReceiverView.b(CashReceiverView.this).getMeasuredWidth() + f2 - getMeasuredWidth());
          }
        }
      }
    });
    e.addListener(new Animator.AnimatorListener()
    {
      public final void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        CashReceiverView.d(CashReceiverView.this);
      }
      
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        if (CashReceiverView.c(CashReceiverView.this)) {
          return;
        }
        if (f2 + f1 < 0.0F)
        {
          CashReceiverView.a(CashReceiverView.this, CashReceiverView.a.a);
          return;
        }
        if (f2 + f1 + CashReceiverView.b(CashReceiverView.this).getMeasuredWidth() > getMeasuredWidth())
        {
          CashReceiverView.a(CashReceiverView.this, CashReceiverView.a.b);
          return;
        }
        CashReceiverView.a(CashReceiverView.this, paramInt);
      }
      
      public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
      
      public final void onAnimationStart(Animator paramAnonymousAnimator) {}
    });
    e.start();
  }
  
  public static enum a {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.CashReceiverView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */