package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import ats;
import aui;
import avh;
import cgb;
import cgc;
import com.snapchat.android.Timber;

public class ChatCameraButton
  extends View
{
  @cgc
  public MediaPlayer a;
  private a b;
  private Handler c = new Handler();
  private final Paint d;
  private final Paint e;
  private final Paint f;
  private final Paint g;
  private final Paint h;
  private final Paint i;
  private final Paint j;
  private final Drawable k;
  private final Drawable l;
  @cgb
  private Paint m;
  private final float n;
  private final RectF o;
  private final RectF p;
  private boolean q;
  private boolean r;
  private boolean s;
  private long t;
  private boolean u;
  private boolean v;
  private boolean w;
  private boolean x;
  private Runnable y;
  
  public ChatCameraButton(final Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d = a(paramContext, 2131230759);
    e = a(paramContext, 2131230727);
    f = a(paramContext, 2131230770);
    j = a(paramContext, 2131230803);
    k = getResources().getDrawable(2130837681);
    l = getResources().getDrawable(2130837682);
    m = d;
    g = new Paint();
    g.setColor(-1);
    g.setTextAlign(Paint.Align.CENTER);
    g.setTextSize(getResources().getDimensionPixelSize(2131296417));
    h = new Paint();
    h.setColor(-1);
    h.setAntiAlias(true);
    h.setStyle(Paint.Style.STROKE);
    float f1 = avh.a(4.0F, paramContext);
    h.setStrokeWidth(f1);
    i = new Paint();
    i.setColor(-1);
    i.setAntiAlias(true);
    i.setStyle(Paint.Style.STROKE);
    f1 = avh.a(7.0F, paramContext);
    i.setStrokeWidth(f1);
    n = avh.a(10.0F, paramContext);
    o = new RectF();
    p = new RectF();
    u = false;
    v = false;
    w = false;
    x = false;
    y = new Runnable()
    {
      public final void run()
      {
        ChatCameraButton.a(ChatCameraButton.this);
        if (ChatCameraButton.b(ChatCameraButton.this))
        {
          ChatCameraButton.c(ChatCameraButton.this);
          return;
        }
        ChatCameraButton.a(ChatCameraButton.this, SystemClock.elapsedRealtime());
        ChatCameraButton.d(ChatCameraButton.this);
        invalidate();
      }
    };
    if (!isInEditMode())
    {
      if (aui.c(Build.MODEL, "GT-S7500")) {
        a = MediaPlayer.create(paramContext, 2131099655);
      }
    }
    else {
      return;
    }
    paramContext = new Thread()
    {
      public final void run()
      {
        ChatCameraButton.a(ChatCameraButton.this, MediaPlayer.create(paramContext, 2131099655));
      }
    };
    paramContext.setName("HerePresenceButton Load Sound Thread");
    paramContext.start();
  }
  
  private static Paint a(Context paramContext, int paramInt)
  {
    paramInt = paramContext.getResources().getColor(paramInt);
    paramContext = new Paint();
    paramContext.setColor(paramInt);
    paramContext.setAntiAlias(true);
    return paramContext;
  }
  
  private void a()
  {
    if (!w)
    {
      c.postDelayed(y, 3000L);
      w = true;
      v = false;
    }
  }
  
  private void a(Canvas paramCanvas)
  {
    k.setBounds(paramCanvas.getClipBounds());
    k.draw(paramCanvas);
  }
  
  public boolean getCashSwipeDetected()
  {
    return r;
  }
  
  public boolean getCashtagDetected()
  {
    return q;
  }
  
  public boolean getIsEmoji()
  {
    return u;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    int i1 = 0;
    Object localObject;
    float f1;
    if (u)
    {
      paramCanvas.drawRect(o, f);
      paramCanvas.drawRoundRect(o, n, n, i);
      localObject = new Rect();
      String str = getResources().getString(2131492995);
      g.getTextBounds(str, 0, str.length(), (Rect)localObject);
      f1 = paramCanvas.getWidth() / 2;
      i1 = paramCanvas.getHeight();
      paramCanvas.drawText(str, f1, (((Rect)localObject).height() + i1) / 2, g);
      return;
    }
    paramCanvas.drawRect(o, d);
    long l1 = SystemClock.elapsedRealtime() - t;
    if ((q) || (r))
    {
      localObject = j;
      if (l1 < 200L)
      {
        f1 = (float)(l1 * getWidth() / 200L);
        paramCanvas.drawCircle(getWidth() / 2, getHeight() / 2, f1, (Paint)localObject);
        invalidate();
      }
      for (;;)
      {
        a(paramCanvas);
        paramCanvas.drawRoundRect(o, n, n, i);
        return;
        paramCanvas.drawRect(o, (Paint)localObject);
        l.setBounds(paramCanvas.getClipBounds());
        l.draw(paramCanvas);
        m = ((Paint)localObject);
      }
    }
    label385:
    label394:
    int i2;
    if (s)
    {
      localObject = e;
      if ((l1 < 200L) && (!v))
      {
        f1 = (float)(getWidth() * l1 / 200L);
        paramCanvas.drawCircle(getWidth() / 2, getHeight() / 2, f1, (Paint)localObject);
        invalidate();
      }
      for (;;)
      {
        a(paramCanvas);
        break;
        paramCanvas.drawRect(o, (Paint)localObject);
        l1 -= 200L;
        if ((l1 < 1600L) && (!x)) {
          break label394;
        }
        a();
        m = ((Paint)localObject);
      }
      l1 %= 800L;
      f1 = 0.33F * getHeight();
      float f2 = ats.a(getWidth() / 2 - f1, getWidth() * 0.13999999F, (float)l1 / 800.0F);
      float f3 = ats.a(getWidth() / 2 + f1, getWidth() * 0.86F, (float)l1 / 800.0F);
      p.set(f2, getHeight() / 2 - f1, f3, f1 + getHeight() / 2);
      i2 = 255 - (int)((float)l1 * 255.0F / 800.0F);
      if (i2 >= 0) {}
    }
    for (;;)
    {
      h.setAlpha(i1);
      paramCanvas.drawOval(p, h);
      h.setAlpha(255);
      invalidate();
      break label385;
      if (i2 > 255)
      {
        i1 = 255;
        continue;
        localObject = m;
        c.removeCallbacks(y);
        w = false;
        v = false;
        if (l1 < 200L)
        {
          f1 = (float)((200L - l1) * getWidth() / 200L);
          paramCanvas.drawCircle(getWidth() / 2, getHeight() / 2, f1, (Paint)localObject);
          invalidate();
        }
        a(paramCanvas);
        break;
      }
      i1 = i2;
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    o.set(0.0F, 0.0F, paramInt1, paramInt2);
  }
  
  public boolean onTouchEvent(@cgb MotionEvent paramMotionEvent)
  {
    if (b != null) {
      b.a(paramMotionEvent);
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setCashSwipeDetected(boolean paramBoolean)
  {
    if (paramBoolean == r) {
      return;
    }
    t = SystemClock.elapsedRealtime();
    r = paramBoolean;
    invalidate();
  }
  
  public void setCashtagDetected(boolean paramBoolean)
  {
    if (paramBoolean == q) {
      return;
    }
    t = SystemClock.elapsedRealtime();
    q = paramBoolean;
    invalidate();
  }
  
  public void setIsEmoji(boolean paramBoolean)
  {
    u = paramBoolean;
    invalidate();
  }
  
  public void setIsTyping(boolean paramBoolean)
  {
    x = paramBoolean;
  }
  
  public void setPresent(boolean paramBoolean)
  {
    if (paramBoolean == s) {}
    for (;;)
    {
      return;
      s = paramBoolean;
      if ((!q) && (!r))
      {
        t = SystemClock.elapsedRealtime();
        invalidate();
        if (paramBoolean) {
          try
          {
            if (a != null)
            {
              a.start();
              return;
            }
          }
          catch (IllegalStateException localIllegalStateException)
          {
            Timber.e("ChatCameraButton", "Failed to play sound effect: " + localIllegalStateException.getMessage(), new Object[0]);
          }
        }
      }
    }
  }
  
  public void setTouchSubscriber(a parama)
  {
    b = parama;
  }
  
  public static abstract interface a
  {
    public abstract void a(@cgb MotionEvent paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ChatCameraButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */