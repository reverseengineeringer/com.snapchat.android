package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.HashMap;

public class FrivolousAnimationView
  extends ImageView
{
  private static HashMap<String, Bitmap> b = new HashMap();
  private RectF a;
  long c;
  private int d = 0;
  private Bitmap e;
  private Paint f;
  private int g = 0;
  private Bitmap h;
  private Paint i = new Paint();
  
  public FrivolousAnimationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    i.setColor(-16776961);
    i.setAntiAlias(true);
    f = new Paint();
    f.setColor(-65536);
    f.setAntiAlias(true);
    c = Long.MIN_VALUE;
    a = new RectF();
  }
  
  private static Bitmap a(int paramInt, Canvas paramCanvas, Context paramContext)
  {
    Object localObject;
    if ((paramCanvas.getWidth() <= 0) || (paramCanvas.getHeight() <= 0)) {
      localObject = null;
    }
    String str;
    Bitmap localBitmap;
    do
    {
      return (Bitmap)localObject;
      str = paramInt + "_" + paramCanvas.getWidth() + "_" + paramCanvas.getHeight();
      localBitmap = (Bitmap)b.get(str);
      localObject = localBitmap;
    } while (localBitmap != null);
    paramContext = paramContext.getResources();
    if (paramContext == null) {
      return null;
    }
    try
    {
      paramContext = BitmapFactory.decodeResource(paramContext, paramInt);
      if (paramContext == null) {
        return null;
      }
    }
    catch (Exception paramCanvas)
    {
      if (ReleaseManager.e()) {
        throw new RuntimeException("Could not get drawable! Bad resource perchance?");
      }
      return null;
    }
    paramCanvas = Bitmap.createScaledBitmap(paramContext, paramCanvas.getWidth(), paramCanvas.getHeight(), true);
    b.put(str, paramCanvas);
    return paramCanvas;
  }
  
  public final void a(long paramLong)
  {
    c = paramLong;
    invalidate();
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    long l1 = 0L;
    for (;;)
    {
      long l2;
      float f1;
      try
      {
        if ((g == 0) || (d == 0))
        {
          super.onDraw(paramCanvas);
          return;
        }
        paramCanvas.drawColor(0);
        if ((h == null) || (h.getHeight() != paramCanvas.getHeight()) || (h.getWidth() != paramCanvas.getWidth()))
        {
          h = a(g, paramCanvas, getContext());
          if (h != null) {
            i.setShader(new BitmapShader(h, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
          }
        }
        if ((e == null) || (e.getHeight() != paramCanvas.getHeight()) || (e.getWidth() != paramCanvas.getWidth()))
        {
          e = a(d, paramCanvas, getContext());
          if (e != null) {
            f.setShader(new BitmapShader(e, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
          }
        }
        l2 = System.currentTimeMillis() - c;
        if (l2 < 0L)
        {
          f1 = 360.0F * (1.0F - (float)l1 / 500.0F);
          a.set(0.0F, 0.0F, paramCanvas.getWidth(), paramCanvas.getHeight());
          if (f1 < 360.0F) {
            break label328;
          }
          if (e == null) {
            break label304;
          }
          paramCanvas.drawRect(a, f);
          continue;
        }
        if (l2 <= 500L) {
          break label294;
        }
      }
      finally {}
      l1 = 500L;
      continue;
      label294:
      invalidate();
      l1 = l2;
      continue;
      label304:
      if (ReleaseManager.e()) {
        throw new RuntimeException("Could not get Frivolous animation icon bitmap");
      }
      super.onDraw(paramCanvas);
      continue;
      label328:
      if (e != null) {
        paramCanvas.drawArc(a, -90.0F, f1, true, f);
      }
      if (h != null) {
        paramCanvas.drawArc(a, -90.0F + f1, 360.0F - f1, true, i);
      }
    }
  }
  
  public void setIconResources(int paramInt1, int paramInt2)
  {
    if ((paramInt1 != 0) || (paramInt2 != 0)) {}
    try
    {
      setBackgroundResource(0);
      if (paramInt1 != d)
      {
        setImageResource(paramInt1);
        d = paramInt1;
        e = null;
      }
      if (paramInt2 != g)
      {
        g = paramInt2;
        h = null;
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.FrivolousAnimationView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */