package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import auv;
import aux;
import awf;
import chc;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.ui.cash.ParticleSparkleView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ys;
import ys.a;

public class CashSwiperView
  extends LinearLayout
{
  public static final String a = "android.resource://" + SnapchatApplication.b().getPackageName() + '/' + 2131099648;
  private long A;
  private Handler B;
  private ParticleSparkleView C;
  private ys D = null;
  public b b;
  public MediaPlayer c;
  public ValueAnimator d;
  public boolean e;
  private GestureDetector f;
  private View g;
  private View h;
  private float i;
  private int j;
  private TextView k;
  private VelocityTracker l;
  private List<Long> m;
  private ViewPropertyAnimator n;
  private ViewPropertyAnimator o;
  private float p;
  private Handler q;
  private boolean r;
  private List<View> s;
  private List<View> t;
  private ViewGroup u;
  private List<View> v;
  private List<Float> w;
  private ValueAnimator.AnimatorUpdateListener x;
  private Handler y;
  private boolean z;
  
  public CashSwiperView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public CashSwiperView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public CashSwiperView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private void a(float paramFloat)
  {
    if (v.contains(g)) {
      return;
    }
    a(5000);
    q.removeCallbacksAndMessages(null);
    q.postDelayed(new Runnable()
    {
      public final void run()
      {
        CashSwiperView.g(CashSwiperView.this);
      }
    }, 1000L);
    if (j < 9999)
    {
      j += 1;
      e();
      if (j == 1) {
        A = SystemClock.elapsedRealtime();
      }
      if (!r) {
        m.add(Long.valueOf(SystemClock.elapsedRealtime()));
      }
      int i1;
      if (D == null)
      {
        i1 = (int)awf.a(48.0F, getContext());
        localObject = new ys.a();
        b = (C.getHeight() - i1);
        a = C.getWidth();
        c = ((int)awf.a(125.0F, getContext()) / 2);
        D = new ys((ys.a)localObject, (byte)0);
        C.b = D;
      }
      if (getHotness() == 1.0F)
      {
        localObject = C;
        if (!d)
        {
          d = true;
          i1 = 0;
          while (i1 < a)
          {
            ((ParticleSparkleView)localObject).a();
            i1 += 1;
          }
        }
      }
      g.setEnabled(false);
      Object localObject = ObjectAnimator.ofFloat(g, "alpha", new float[] { 0.0F });
      float f1 = g.getTranslationY();
      paramFloat = 300.0F * Math.min(1.5F * paramFloat, -3000.0F) / 1000.0F;
      ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(g, "translationY", new float[] { f1 + paramFloat });
      ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(h, "scaleX", new float[] { 1.0F });
      ObjectAnimator localObjectAnimator3 = ObjectAnimator.ofFloat(h, "scaleY", new float[] { 1.0F });
      final View localView = g;
      v.add(localView);
      g = h;
      h = h();
      setUpDollarViewOnBottom(h);
      b.u();
      AnimatorSet localAnimatorSet = new AnimatorSet();
      localAnimatorSet.setDuration(200L);
      localAnimatorSet.addListener(new a()
      {
        public final void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          CashSwiperView.h(CashSwiperView.this).remove(localView);
          CashSwiperView.a(CashSwiperView.this, localView);
        }
      });
      localAnimatorSet.playTogether(new Animator[] { localObject, localObjectAnimator1, localObjectAnimator3, localObjectAnimator2 });
      localAnimatorSet.start();
      return;
    }
    g.animate().translationY(0.0F).setInterpolator(new DecelerateInterpolator());
    d();
  }
  
  private void a(float paramFloat, View paramView)
  {
    int[] arrayOfInt = new int[3];
    float f1 = Math.max(paramFloat - 0.5F, 0.0F);
    int i1 = 0;
    while (i1 < 3)
    {
      arrayOfInt[i1] = ((int)(new int[] { 255, 255, 255 }[i1] * (1.0F - f1) + new int[] { 255, 240, 128 }[i1] * f1));
      i1 += 1;
    }
    setBackgroundColor(0xF2000000 | arrayOfInt[0] << 16 | arrayOfInt[1] << 8 | arrayOfInt[2]);
    ((ImageView)paramView.findViewById(2131362288)).getDrawable().setColorFilter(awf.a(paramFloat * 1.5203D, 1.0D + 0.51032D * paramFloat));
  }
  
  private void a(Context paramContext)
  {
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130968612, this, true);
    setOnTouchListener(new View.OnTouchListener()
    {
      public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        return true;
      }
    });
    C = ((ParticleSparkleView)findViewById(2131362039));
    u = ((ViewGroup)findViewById(2131362037));
    u.setOnTouchListener(new View.OnTouchListener()
    {
      public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        return CashSwiperView.a(CashSwiperView.this, paramAnonymousMotionEvent, CashSwiperView.a(CashSwiperView.this));
      }
    });
    w = new ArrayList();
    v = new ArrayList();
    s = new ArrayList();
    t = new ArrayList();
    g = h();
    h = h();
    k = ((TextView)findViewById(2131362038));
    f = new GestureDetector(paramContext, new c((byte)0));
    q = new Handler(Looper.getMainLooper());
    m = new ArrayList();
    l = VelocityTracker.obtain();
    y = new Handler();
    x = new ValueAnimator.AnimatorUpdateListener()
    {
      public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        float f = aux.a((float)Math.log(((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue()));
        if (CashSwiperView.b(CashSwiperView.this) != null) {
          CashSwiperView.b(CashSwiperView.this).setVolume(f, f);
        }
      }
    };
    setEnabled(false);
    B = new Handler(Looper.getMainLooper());
    setUpDollarViewOnBottom(h);
    setUpDollarViewOnTop(g);
  }
  
  private void d()
  {
    float f1 = getAlpha();
    if (f1 != 1.0F) {
      animate().alpha(1.0F).setListener(null).setDuration((int)(f1 * 500.0F)).start();
    }
  }
  
  private void e()
  {
    if (j == 0)
    {
      f();
      return;
    }
    setBarTextWithFade(auv.a(null, 2131493513, new Object[] { String.valueOf(j) }));
  }
  
  private void f()
  {
    setBarTextWithFade(auv.a(null, 2131493515, new Object[0]));
  }
  
  private void g()
  {
    float f1 = 2.7182817F;
    if (d != null)
    {
      f1 = ((Float)d.getAnimatedValue()).floatValue();
      d.cancel();
    }
    d = ValueAnimator.ofFloat(new float[] { f1, 1.0F });
    d.addUpdateListener(x);
    d.setDuration(500L);
  }
  
  private String getBlingtonePath()
  {
    return a;
  }
  
  @chc
  private View h()
  {
    if (s.isEmpty())
    {
      ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(2130968660, u);
      s.add(u.getChildAt(u.getChildCount() - 1));
    }
    View localView = (View)s.get(0);
    localView.setVisibility(0);
    t.add(localView);
    s.remove(localView);
    return localView;
  }
  
  private void setBarTextWithFade(final String paramString)
  {
    if (!z)
    {
      k.setText(paramString);
      return;
    }
    AnimatorSet localAnimatorSet = new AnimatorSet();
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(k, ALPHA, new float[] { 0.0F });
    localObjectAnimator.setDuration(100L);
    localObjectAnimator.addListener(new a()
    {
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        CashSwiperView.f(CashSwiperView.this).setText(paramString);
      }
    });
    paramString = ObjectAnimator.ofFloat(k, ALPHA, new float[] { 1.0F });
    paramString.setDuration(100L);
    localAnimatorSet.playSequentially(new Animator[] { localObjectAnimator, paramString });
    localAnimatorSet.start();
  }
  
  private void setUpDollarViewOnBottom(View paramView)
  {
    awf.c(paramView);
    paramView.setTranslationY(0.0F);
    paramView.setAlpha(1.0F);
    paramView.setScaleX(0.88F);
    paramView.setScaleY(0.88F);
    paramView.setEnabled(true);
    if (!r)
    {
      float f1 = getHotness();
      w.add(Float.valueOf(f1));
      a(f1, paramView);
    }
  }
  
  private void setUpDollarViewOnTop(View paramView)
  {
    u.bringChildToFront(paramView);
    paramView.setEnabled(true);
    paramView.setTranslationY(0.0F);
    paramView.setAlpha(1.0F);
    paramView.setScaleX(1.0F);
    paramView.setScaleY(1.0F);
  }
  
  public final void a()
  {
    v.clear();
    m.clear();
    w.clear();
    setUpDollarViewOnTop(g);
    setUpDollarViewOnBottom(h);
    j = 0;
    f();
  }
  
  public final void a(int paramInt)
  {
    B.removeCallbacksAndMessages(null);
    Runnable local11 = new Runnable()
    {
      public final void run()
      {
        CashSwiperView.i(CashSwiperView.this);
        CashSwiperView.k(CashSwiperView.this).postDelayed(new Runnable()
        {
          public final void run()
          {
            CashSwiperView.j(CashSwiperView.this);
          }
        }, 3000L);
      }
    };
    if (paramInt == 0)
    {
      B.post(local11);
      return;
    }
    B.postDelayed(local11, paramInt);
  }
  
  public final void b()
  {
    setEnabled(false);
    b.w();
    AnimatorSet localAnimatorSet = new AnimatorSet();
    float f1 = g.getTranslationY() + 750.0F * l.getYVelocity() / 1000.0F;
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(this, ALPHA, new float[] { 0.0F });
    ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(g, TRANSLATION_Y, new float[] { f1 });
    ObjectAnimator localObjectAnimator3 = ObjectAnimator.ofFloat(h, TRANSLATION_Y, new float[] { f1 });
    localAnimatorSet.setDuration((int)(500.0F * getAlpha()));
    localAnimatorSet.addListener(new a()
    {
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        setVisibility(8);
        a();
        CashSwiperView.l(CashSwiperView.this).v();
      }
    });
    localAnimatorSet.playTogether(new Animator[] { localObjectAnimator1, localObjectAnimator2, localObjectAnimator3 });
    localAnimatorSet.start();
    c();
  }
  
  public final void c()
  {
    e = true;
    y.removeCallbacksAndMessages(null);
    g();
    d.addListener(new a()
    {
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        if ((CashSwiperView.b(CashSwiperView.this) != null) && (CashSwiperView.p(CashSwiperView.this)))
        {
          CashSwiperView.b(CashSwiperView.this).stop();
          CashSwiperView.b(CashSwiperView.this).release();
          CashSwiperView.r(CashSwiperView.this);
        }
        CashSwiperView.s(CashSwiperView.this);
      }
    });
    d.start();
  }
  
  public float getCoolness()
  {
    return p;
  }
  
  public int getDollarsSwiped()
  {
    return j;
  }
  
  public long getFirstSwipeMillis()
  {
    return A;
  }
  
  protected float getHotness()
  {
    long l1 = SystemClock.elapsedRealtime();
    Iterator localIterator = m.iterator();
    int i1 = 0;
    if (localIterator.hasNext())
    {
      if (((Long)localIterator.next()).longValue() <= l1 - 5000L) {
        break label67;
      }
      i1 += 1;
    }
    label67:
    for (;;)
    {
      break;
      return Math.min(i1 / 15.0F, 1.0F);
    }
  }
  
  public void setCoolness(float paramFloat)
  {
    p = paramFloat;
    if (w.size() < 2) {}
    for (paramFloat = 0.0F;; paramFloat = ((Float)w.get(w.size() - 2)).floatValue() * (1.0F - paramFloat))
    {
      Iterator localIterator = t.iterator();
      while (localIterator.hasNext()) {
        a(paramFloat, (View)localIterator.next());
      }
    }
  }
  
  protected void setDollarsSwiped(int paramInt)
  {
    j = paramInt;
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    z = paramBoolean;
  }
  
  public void setListener(b paramb)
  {
    b = paramb;
  }
  
  public void setSwipeTimes(List<Long> paramList)
  {
    m = new ArrayList(paramList);
  }
  
  public void setUpFadeInAudio()
  {
    float f1 = 1.0F;
    if (d != null)
    {
      f1 = ((Float)d.getAnimatedValue()).floatValue();
      d.cancel();
    }
    d = ValueAnimator.ofFloat(new float[] { f1, 2.7182817F });
    d.addUpdateListener(x);
    d.setDuration(500L);
  }
  
  public static enum SwipeActivationMethod
  {
    DOLLARS,  HOLD;
    
    private SwipeActivationMethod() {}
  }
  
  public static abstract class a
    implements Animator.AnimatorListener
  {
    public void onAnimationCancel(Animator paramAnimator) {}
    
    public void onAnimationRepeat(Animator paramAnimator) {}
    
    public void onAnimationStart(Animator paramAnimator) {}
  }
  
  public static abstract interface b
  {
    public abstract void u();
    
    public abstract void v();
    
    public abstract void w();
  }
  
  final class c
    extends GestureDetector.SimpleOnGestureListener
  {
    private c() {}
    
    public final boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
    {
      if (awf.b(paramFloat2, getContext()) < -1500.0F) {
        CashSwiperView.a(CashSwiperView.this, paramFloat2);
      }
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.CashSwiperView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */