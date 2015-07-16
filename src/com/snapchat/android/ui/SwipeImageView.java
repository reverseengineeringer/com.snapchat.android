package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import arf;
import asm;
import asp;
import asq;
import asu;
import aui;
import avf;
import avp;
import awf;
import bbo;
import bhp;
import chc;
import chd;
import com.snapchat.android.ui.layertype.LayerType;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SwipeImageView
  extends FrameLayout
{
  public asu<asm> a;
  SwipeViewState b;
  Bitmap c;
  boolean d = false;
  public FrameLayout e;
  public boolean f = false;
  private final asp g;
  private final asq h;
  private final aui i;
  private int j = 0;
  private int k = 0;
  private a l;
  
  public SwipeImageView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SwipeImageView(Context paramContext, AttributeSet paramAttributeSet) {}
  
  public SwipeImageView(Context paramContext, AttributeSet paramAttributeSet, LayerType paramLayerType, asp paramasp, asq paramasq, aui paramaui)
  {
    super(paramContext, paramAttributeSet);
    g = paramasp;
    h = paramasq;
    i = paramaui;
    setWillNotDraw(false);
    setLayerType(paramLayerType.getFrameworkLayerValue(), null);
  }
  
  private Paint b(Bitmap paramBitmap)
  {
    Paint localPaint = new Paint();
    localPaint.setShader(new BitmapShader(paramBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
    paramBitmap = avp.b(paramBitmap, getContext());
    localPaint.getShader().setLocalMatrix(paramBitmap);
    return localPaint;
  }
  
  @chd
  public final FilterPageType a(int paramInt)
  {
    
    if (a.b() == 0) {
      return null;
    }
    return a.b(paramInt);
  }
  
  public final void a()
  {
    
    if (c == null) {
      return;
    }
    Object localObject = b(c);
    Iterator localIterator = a.a().iterator();
    while (localIterator.hasNext()) {
      ((asm)localIterator.next()).a((Paint)localObject);
    }
    localObject = getCurrentPage();
    if (localObject != null) {
      if (f) {
        break label127;
      }
    }
    label127:
    for (boolean bool = true;; bool = false)
    {
      ((asm)localObject).a(bool, c);
      invalidate();
      new AsyncTask() {}.executeOnExecutor(avf.MISCELLANEOUS_EXECUTOR, new Void[0]);
      return;
    }
  }
  
  public final void a(asm paramasm)
  {
    paramasm = paramasm.d();
    if (paramasm != null) {
      e.addView(paramasm);
    }
  }
  
  public final boolean a(Bitmap paramBitmap)
  {
    if (c == null) {}
    for (boolean bool = true;; bool = false)
    {
      c = paramBitmap;
      g.a = b(c);
      return bool;
    }
  }
  
  public void addView(@chc View paramView)
  {
    super.addView(paramView);
    e.bringToFront();
  }
  
  @chd
  public asm getCurrentPage()
  {
    if (a.b() == 0) {
      return null;
    }
    return a.a(b.a);
  }
  
  public FilterPageType getLeftSwipeFilterPageType()
  {
    return a.b(b.a(false));
  }
  
  public int getPageIndex()
  {
    return b.a;
  }
  
  public FilterPageType getRightSwipeFilterPageType()
  {
    return a.b(b.b(false));
  }
  
  public float getScrollOffset()
  {
    return b.e % getWidth() / getWidth();
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    bbo.a().c(this);
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    bbo.a().b(this);
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    Object localObject3;
    LayerType localLayerType;
    if ((!d) && (c != null))
    {
      localObject1 = g;
      localObject2 = b;
      localObject3 = a;
      localLayerType = arf.a(getLayerType());
      if (((asu)localObject3).b() != 0) {
        break label212;
      }
      paramCanvas.drawRect(0.0F, 0.0F, paramCanvas.getWidth(), paramCanvas.getHeight(), a);
    }
    label212:
    int m;
    int n;
    for (;;)
    {
      paramCanvas = a.a().iterator();
      while (paramCanvas.hasNext())
      {
        localObject1 = (asm)paramCanvas.next();
        if ((localObject1 != a.a(b.a)) && (localObject1 != a.a(b.b)) && (localObject1 != a.a(b.d)) && (localObject1 != a.a(b.c)))
        {
          localObject1 = ((asm)localObject1).d();
          if (localObject1 != null) {
            ((View)localObject1).setVisibility(4);
          }
        }
      }
      m = asp.a((asu)localObject3, ((SwipeViewState)localObject2).a(true), ((SwipeViewState)localObject2).a(false));
      n = asp.a((asu)localObject3, ((SwipeViewState)localObject2).b(true), ((SwipeViewState)localObject2).b(false));
      Paint localPaint = ((asp)localObject1).a(((asu)localObject3).a(m));
      localObject3 = ((asp)localObject1).a(((asu)localObject3).a(n));
      float f1 = ((SwipeViewState)localObject2).f();
      if ((localPaint == a) && (localObject3 == a)) {
        paramCanvas.drawRect(0.0F, 0.0F, paramCanvas.getWidth(), paramCanvas.getHeight(), a);
      }
      while ((((SwipeViewState)localObject2).c()) && (localLayerType == LayerType.HARDWARE))
      {
        f1 = ((SwipeViewState)localObject2).f();
        float f2 = Math.max(f, e);
        m = (int)f1;
        while (m < f2)
        {
          localPaint.setAlpha((int)(255.0F * (1.0F - (m - f1) / (f2 - f1))));
          paramCanvas.drawLine(m, 0.0F, m, paramCanvas.getHeight(), localPaint);
          m += 1;
        }
        localPaint.setAlpha(255);
        ((Paint)localObject3).setAlpha(255);
        m = Math.round(f1);
        paramCanvas.drawRect(0.0F, 0.0F, m, paramCanvas.getHeight(), localPaint);
        paramCanvas.drawRect(m, 0.0F, paramCanvas.getWidth(), paramCanvas.getHeight(), (Paint)localObject3);
      }
      continue;
      localPaint.setAlpha(255);
    }
    paramCanvas = b;
    Object localObject1 = a;
    Object localObject2 = getContext();
    int i1;
    if (((asu)localObject1).b() != 0)
    {
      n = awf.a((Context)localObject2);
      i1 = awf.h((Context)localObject2);
      if (!paramCanvas.c()) {
        break label656;
      }
      if (c == d) {
        break label644;
      }
      m = 1;
      if (m != 0) {
        asq.a((asu)localObject1, n, i1, e, paramCanvas.a(true), paramCanvas.b(true));
      }
      if (a == b) {
        break label650;
      }
      m = 1;
      label605:
      if (m != 0) {
        asq.a((asu)localObject1, n, i1, e, paramCanvas.a(false), paramCanvas.b(false));
      }
    }
    for (;;)
    {
      i.a();
      return;
      label644:
      m = 0;
      break;
      label650:
      m = 0;
      break label605;
      label656:
      asq.a((asu)localObject1, n, i1, a);
      if (l) {
        asq.a((asu)localObject1, n, i1, c);
      }
    }
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int m;
    int n;
    label40:
    boolean bool;
    if (paramInt1 > paramInt2)
    {
      m = 1;
      if (c == null) {
        break label139;
      }
      if (c.getWidth() <= c.getHeight()) {
        break label122;
      }
      n = 1;
      if (m == n) {
        break label128;
      }
      bool = true;
      label49:
      d = bool;
      if (d)
      {
        if ((j == paramInt1) && (k == paramInt2)) {
          break label134;
        }
        j = paramInt1;
        k = paramInt2;
        m = 1;
        label90:
        if ((m != 0) && (l != null)) {
          l.i();
        }
      }
    }
    for (;;)
    {
      setMeasuredDimension(paramInt1, paramInt2);
      return;
      m = 0;
      break;
      label122:
      n = 0;
      break label40;
      label128:
      bool = false;
      break label49;
      label134:
      m = 0;
      break label90;
      label139:
      d = false;
    }
  }
  
  public boolean onTouchEvent(@chc MotionEvent paramMotionEvent)
  {
    asm localasm = getCurrentPage();
    if (localasm == null) {
      return false;
    }
    localasm.d().dispatchTouchEvent(paramMotionEvent);
    return true;
  }
  
  public void setFilterPageProvider(asu paramasu)
  {
    a = paramasu;
  }
  
  public void setSnapPreviewRotationListener(a parama)
  {
    l = parama;
  }
  
  public void setSwipeState(SwipeViewState paramSwipeViewState)
  {
    b = paramSwipeViewState;
  }
  
  public void setVisibilityOfPreviewOnlyContent(int paramInt)
  {
    asm localasm = getCurrentPage();
    if (localasm != null) {
      localasm.a(paramInt);
    }
  }
  
  public static abstract interface a
  {
    public abstract void i();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.SwipeImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */