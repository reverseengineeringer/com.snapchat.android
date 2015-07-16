package com.snapchat.android.ui.cash;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Point;
import android.util.AttributeSet;
import android.widget.ImageView;
import chc;
import com.snapchat.android.ui.CashSwiperView.a;
import java.util.Random;

public class ParticleView
  extends ImageView
{
  static Random a = new Random();
  @chc
  private Point b;
  @chc
  private int c;
  @chc
  private a d;
  
  public ParticleView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ParticleView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public Point getCenterPoint()
  {
    return b;
  }
  
  public int getFinalSize()
  {
    return c;
  }
  
  public void setAnimationListener(a parama)
  {
    d = parama;
  }
  
  public void setCenterPoint(Point paramPoint)
  {
    b = paramPoint;
  }
  
  public void setFinalSize(int paramInt)
  {
    c = paramInt;
  }
  
  public static abstract interface a
  {
    public abstract void a(ParticleView paramParticleView);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.cash.ParticleView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */