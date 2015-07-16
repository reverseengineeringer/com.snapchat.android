package com.snapchat.android.ui;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import android.view.animation.TranslateAnimation;
import android.widget.RelativeLayout;
import awf;
import bbo;
import bcc;
import com.squareup.otto.Bus;

public class ColorPickerView
  extends RelativeLayout
{
  private static final int[] a = { -65536, -65383, -3407617, -16776961, -16711681, -14292987, 65280, 41472, -5677541, -16777216, -1 };
  private static final int b = 11;
  private boolean c = false;
  private boolean d = false;
  private ScaleAnimation e;
  private TranslateAnimation f;
  private a g;
  private View h;
  private View i;
  private View j;
  private int[] k = new int[2];
  private float[] l = new float[3];
  private Handler m = new Handler();
  private Runnable n = new Runnable()
  {
    public final void run()
    {
      if ((!ColorPickerView.a(ColorPickerView.this)) && (ColorPickerView.b(ColorPickerView.this)))
      {
        ColorPickerView.d(ColorPickerView.this).startAnimation(ColorPickerView.c(ColorPickerView.this));
        ColorPickerView.f(ColorPickerView.this).startAnimation(ColorPickerView.e(ColorPickerView.this));
        ColorPickerView.g(ColorPickerView.this).setAnimationListener(new Animation.AnimationListener()
        {
          public final void onAnimationEnd(Animation paramAnonymous2Animation) {}
          
          public final void onAnimationRepeat(Animation paramAnonymous2Animation) {}
          
          public final void onAnimationStart(Animation paramAnonymous2Animation)
          {
            paramAnonymous2Animation = new AlphaAnimation(0.0F, 1.0F);
            paramAnonymous2Animation.setDuration(140L);
            paramAnonymous2Animation.setFillAfter(true);
            findViewById(2131362832).startAnimation(paramAnonymous2Animation);
            findViewById(2131362831).startAnimation(paramAnonymous2Animation);
          }
        });
        ColorPickerView.h(ColorPickerView.this).startAnimation(ColorPickerView.g(ColorPickerView.this));
        ColorPickerView.a(ColorPickerView.this, true);
      }
    }
  };
  
  public ColorPickerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130968781, this, true);
    i = findViewById(2131362835);
    paramContext = findViewById(2131362836);
    j = findViewById(2131362834);
    h = findViewById(2131362830);
    paramAttributeSet = new View.OnTouchListener()
    {
      public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        switch (paramAnonymousMotionEvent.getAction())
        {
        default: 
          return true;
        case 0: 
          ColorPickerView.a(ColorPickerView.this, paramAnonymousMotionEvent);
          ColorPickerView.b(ColorPickerView.this, true);
          ColorPickerView.j(ColorPickerView.this).postDelayed(ColorPickerView.i(ColorPickerView.this), 300L);
          return true;
        case 1: 
          ColorPickerView.b(ColorPickerView.this, false);
          ColorPickerView.j(ColorPickerView.this).removeCallbacks(ColorPickerView.i(ColorPickerView.this));
          paramAnonymousView = new AlphaAnimation(1.0F, 0.0F);
          paramAnonymousView.setDuration(200L);
          paramAnonymousView.setFillAfter(true);
          paramAnonymousView.setAnimationListener(new Animation.AnimationListener()
          {
            public final void onAnimationEnd(Animation paramAnonymous2Animation)
            {
              paramAnonymous2Animation = new ScaleAnimation(26.0F, 1.0F, 1.0F, 1.0F, 1, 1.0F, 1, 0.5F);
              paramAnonymous2Animation.setDuration(140L);
              ColorPickerView.f(ColorPickerView.this).startAnimation(paramAnonymous2Animation);
              paramAnonymous2Animation = new TranslateAnimation((int)awf.a(-23.5F, getContext()), 0.0F, 0.0F, 0.0F);
              paramAnonymous2Animation.setDuration(140L);
              paramAnonymous2Animation.setFillAfter(true);
              ColorPickerView.d(ColorPickerView.this).startAnimation(paramAnonymous2Animation);
              paramAnonymous2Animation = new ColorPickerView.a(ColorPickerView.this, ColorPickerView.h(ColorPickerView.this).getWidth(), (int)awf.a(12.0F, getContext()), ColorPickerView.h(ColorPickerView.this));
              paramAnonymous2Animation.setDuration(140L);
              ColorPickerView.h(ColorPickerView.this).startAnimation(paramAnonymous2Animation);
            }
            
            public final void onAnimationRepeat(Animation paramAnonymous2Animation) {}
            
            public final void onAnimationStart(Animation paramAnonymous2Animation) {}
          });
          if (ColorPickerView.a(ColorPickerView.this))
          {
            findViewById(2131362832).startAnimation(paramAnonymousView);
            findViewById(2131362831).startAnimation(paramAnonymousView);
          }
          ColorPickerView.a(ColorPickerView.this, false);
          return true;
        case 2: 
          ColorPickerView.a(ColorPickerView.this, paramAnonymousMotionEvent);
          return true;
        }
        ColorPickerView.b(ColorPickerView.this, false);
        return true;
      }
    };
    h.setOnTouchListener(paramAttributeSet);
    j.setOnTouchListener(paramAttributeSet);
    paramContext.setOnTouchListener(paramAttributeSet);
    i.setOnTouchListener(paramAttributeSet);
    f = new TranslateAnimation(0.0F, (int)awf.a(-23.5F, getContext()), 0.0F, 0.0F);
    f.setDuration(140L);
    f.setFillAfter(true);
    g = new a((int)awf.a(12.0F, getContext()), (int)awf.a(36.0F, getContext()), h);
    g.setDuration(140L);
    e = new ScaleAnimation(1.0F, 26.0F, 1.0F, 1.0F, 1, 1.0F, 1, 0.5F);
    e.setDuration(140L);
    e.setFillAfter(true);
  }
  
  public void a(int paramInt)
  {
    bbo.a().a(new bcc(paramInt));
  }
  
  final class a
    extends Animation
  {
    private final int b;
    private final int c;
    private final View d;
    
    public a(int paramInt1, int paramInt2, View paramView)
    {
      b = paramInt1;
      c = (paramInt2 - paramInt1);
      d = paramView;
    }
    
    protected final void applyTransformation(float paramFloat, Transformation paramTransformation)
    {
      paramTransformation = d.getLayoutParams();
      if (paramTransformation == null) {
        return;
      }
      width = ((int)(b + c * paramFloat));
      d.setLayoutParams(paramTransformation);
    }
    
    public final boolean willChangeBounds()
    {
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ColorPickerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */