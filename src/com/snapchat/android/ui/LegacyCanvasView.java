package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import aur;
import avh;
import avl;
import avq;
import ban;
import cgb;
import com.snapchat.android.Timber;
import com.snapchat.android.util.eventbus.DrawingEvent;
import com.snapchat.android.util.eventbus.DrawingEvent.DrawingEventType;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;

public class LegacyCanvasView
  extends CanvasViewBase
  implements View.OnTouchListener
{
  private int a;
  private int b;
  private int c = -65536;
  private float d = 1.0F;
  private boolean e = false;
  private boolean f = false;
  private Point g;
  private Paint h = new Paint();
  private a i;
  private b j;
  private float k;
  private float l;
  
  public LegacyCanvasView(Context paramContext)
  {
    super(paramContext);
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    if (avh.e(paramContext)) {
      a = Math.min(widthPixels, heightPixels);
    }
    for (b = avh.h(paramContext);; b = Math.min(widthPixels, heightPixels))
    {
      h.setDither(true);
      setOnTouchListener(this);
      j = new b();
      setLayerType(2, null);
      d = getResourcesgetDisplayMetricsdensity;
      Timber.c("LegacyCanvasView", "Canvas view instantiated", new Object[0]);
      return;
      a = Math.max(widthPixels, heightPixels);
    }
  }
  
  private static Matrix a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramFloat3 /= 2.0F;
    paramFloat2 /= 2.0F;
    Matrix localMatrix = new Matrix();
    float f1 = Math.abs(paramFloat3 - paramFloat2);
    localMatrix.postTranslate(-f1, f1);
    localMatrix.postTranslate(-paramFloat3, -paramFloat2);
    localMatrix.postRotate(paramFloat1);
    localMatrix.postTranslate(paramFloat3, paramFloat2);
    return localMatrix;
  }
  
  private void a(float paramFloat1, float paramFloat2)
  {
    float f1 = Math.abs(paramFloat1 - k);
    float f2 = Math.abs(paramFloat2 - l);
    if ((f1 >= 4.0F) || (f2 >= 4.0F))
    {
      a locala = i;
      f1 = k;
      f2 = l;
      float f3 = (k + paramFloat1) / 2.0F;
      float f4 = (l + paramFloat2) / 2.0F;
      b.quadTo(f1, f2, f3, f4);
      k = paramFloat1;
      l = paramFloat2;
    }
  }
  
  private static Matrix b(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramFloat3 /= 2.0F;
    paramFloat2 /= 2.0F;
    Matrix localMatrix = new Matrix();
    localMatrix.postTranslate(-paramFloat3, -paramFloat2);
    localMatrix.postRotate(paramFloat1);
    localMatrix.postTranslate(paramFloat3, paramFloat2);
    paramFloat1 = Math.abs(paramFloat3 - paramFloat2);
    localMatrix.postTranslate(paramFloat1, -paramFloat1);
    return localMatrix;
  }
  
  public final void a()
  {
    j.b();
    j = null;
  }
  
  public final void a(int paramInt)
  {
    Object localObject = ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay();
    int m = Math.min(a, b);
    int n = Math.max(a, b);
    int i3 = ((Display)localObject).getRotation();
    if (paramInt == i3) {
      return;
    }
    int i1;
    int i2;
    label83:
    label98:
    float f1;
    float f2;
    if ((i3 == 1) || (i3 == 3))
    {
      i1 = 1;
      if (i1 == 0) {
        break label256;
      }
      i2 = n;
      a = i2;
      if (i1 == 0) {
        break label263;
      }
      i1 = m;
      b = i1;
      j.a();
      f1 = n;
      f2 = m;
      if (i3 != paramInt)
      {
        Timber.c("LegacyCanvasView", "Rotate drawing from %d to %d", new Object[] { Integer.valueOf(paramInt), Integer.valueOf(i3) });
        if (i3 != 1) {
          break label270;
        }
        localObject = b(270.0F, f1, f2);
        Timber.c("LegacyCanvasView", "went to rotation 90", new Object[0]);
        label177:
        if ((j != null) && (j.a != null)) {
          break label350;
        }
        Timber.c("LegacyCanvasView", "Drawing is null", new Object[0]);
      }
    }
    for (;;)
    {
      localObject = j.a.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((a)((Iterator)localObject).next()).a(j.d);
      }
      i1 = 0;
      break;
      label256:
      i2 = m;
      break label83;
      label263:
      i1 = n;
      break label98;
      label270:
      if (i3 == 3)
      {
        localObject = b(90.0F, f1, f2);
        Timber.c("LegacyCanvasView", "went to rotation 270", new Object[0]);
        break label177;
      }
      if (paramInt == 1)
      {
        localObject = a(90.0F, f1, f2);
        Timber.c("LegacyCanvasView", "went from rotation 90 (probz back to portrait)", new Object[0]);
        break label177;
      }
      localObject = a(270.0F, f1, f2);
      Timber.c("LegacyCanvasView", "else... back to portrait from 270?", new Object[0]);
      break label177;
      label350:
      Iterator localIterator = j.a.iterator();
      while (localIterator.hasNext()) {
        nextb.transform((Matrix)localObject);
      }
      postInvalidate();
    }
    invalidate();
  }
  
  public final void b()
  {
    b localb = j;
    if (a.size() != 0) {
      a.remove(a.size() - 1);
    }
    Paint localPaint = new Paint();
    localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    d.drawRect(0.0F, 0.0F, g.a, g.b, localPaint);
    f = true;
    g.invalidate();
  }
  
  public final boolean c()
  {
    return j.a.size() >= 4;
  }
  
  public int getColor()
  {
    return c;
  }
  
  public boolean getDrawingEnabled()
  {
    return e;
  }
  
  public int getLastColor()
  {
    int n = 0;
    int m;
    if (j.a.size() == 0)
    {
      m = 1;
      if (m != 0) {
        break label71;
      }
      b localb = j;
      m = n;
      if (a.size() > 0) {
        m = a.get(a.size() - 1)).a.getColor();
      }
    }
    label71:
    do
    {
      return m;
      m = 0;
      break;
      m = n;
    } while (i == null);
    return i.a.getColor();
  }
  
  public int getNumberOfStrokes()
  {
    return j.a.size();
  }
  
  public ArrayList<a> getSavedDrawing()
  {
    return j.a;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    paramCanvas.save();
    if (j != null)
    {
      b localb = j;
      if (f)
      {
        Iterator localIterator = a.iterator();
        while (localIterator.hasNext())
        {
          a locala = (a)localIterator.next();
          if (f) {
            locala.a(d);
          }
        }
        f = false;
      }
      paramCanvas.drawBitmap(e, c, b);
    }
    if (i != null) {
      i.a(paramCanvas);
    }
    paramCanvas.restore();
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int m = 0;
    if (e)
    {
      if (i == null)
      {
        f = false;
        i = new a(c, d);
        g = new Point((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
        paramView = i;
        float f1 = g.x;
        float f2 = g.y;
        b.moveTo(f1, f2);
        i.a(g.x + 0.1F, g.y + 0.1F);
        k = g.x;
        l = g.y;
        ban.a().a(new DrawingEvent(DrawingEvent.DrawingEventType.STARTED_STROKE));
      }
      for (;;)
      {
        invalidate();
        do
        {
          return true;
          if (paramMotionEvent.getAction() == 2)
          {
            f = true;
            int n = paramMotionEvent.getHistorySize();
            while (m < n)
            {
              a(paramMotionEvent.getHistoricalX(m), paramMotionEvent.getHistoricalY(m));
              m += 1;
            }
            a(paramMotionEvent.getX(), paramMotionEvent.getY());
            break;
          }
          if (paramMotionEvent.getAction() != 1) {
            break;
          }
        } while (g == null);
        if (!f) {
          i.a(g.x + 1, g.y + 1);
        }
        paramView = j;
        paramMotionEvent = i;
        paramMotionEvent.a(d);
        a.add(paramMotionEvent);
        i = null;
        g = null;
        ban.a().a(new DrawingEvent(DrawingEvent.DrawingEventType.COMPLETED_STROKE));
      }
    }
    return false;
  }
  
  public boolean onTouchEvent(@cgb MotionEvent paramMotionEvent)
  {
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setColor(int paramInt)
  {
    c = paramInt;
    h.setColor(paramInt);
  }
  
  public void setDrawingEnabled(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public final class a
  {
    public Paint a;
    Path b;
    private float d;
    
    public a(int paramInt, float paramFloat)
    {
      d = paramFloat;
      b = new Path();
      a = new Paint();
      a.setColor(paramInt);
      a.setAntiAlias(true);
      a.setStyle(Paint.Style.STROKE);
      a.setStrokeWidth(d * 6.5F);
      a.setStrokeJoin(Paint.Join.ROUND);
      a.setStrokeCap(Paint.Cap.ROUND);
    }
    
    public final void a(float paramFloat1, float paramFloat2)
    {
      b.lineTo(paramFloat1, paramFloat2);
    }
    
    public final void a(Canvas paramCanvas)
    {
      paramCanvas.drawPath(b, a);
    }
  }
  
  final class b
  {
    public ArrayList<LegacyCanvasView.a> a = new ArrayList();
    Paint b = new Paint();
    Matrix c = new Matrix();
    Canvas d;
    Bitmap e;
    boolean f = false;
    
    public b()
    {
      a();
      b.setAntiAlias(true);
      b.setFilterBitmap(false);
    }
    
    @avl
    public final void a()
    {
      b();
      Object localObject = aur.a(getContext().getResources().getDisplayMetrics(), LegacyCanvasView.a(LegacyCanvasView.this), LegacyCanvasView.b(LegacyCanvasView.this), Bitmap.Config.ARGB_8888);
      localObject = avq.a().a((BitmapFactory.Options)localObject, true);
      if (localObject != null) {}
      for (e = ((Bitmap)localObject);; e = aur.a(LegacyCanvasView.a(LegacyCanvasView.this), LegacyCanvasView.b(LegacyCanvasView.this), Bitmap.Config.ARGB_8888))
      {
        d = new Canvas(e);
        return;
      }
    }
    
    public final void b()
    {
      d = null;
      avq.a().a(e);
      e = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.LegacyCanvasView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */