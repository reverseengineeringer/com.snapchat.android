package com.snapchat.android.ui;

import ams;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import apx;
import aqa;
import com.snapchat.android.model.chat.ChatMedia;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

public class ImageResourceView
  extends ImageView
  implements aqa, SnapchatResource.a
{
  private static int f = -1;
  private static String g;
  private static String h;
  private static String i;
  private static String j;
  protected apx a;
  protected int b;
  protected int c;
  private AtomicBoolean d = new AtomicBoolean(false);
  private AtomicBoolean e = new AtomicBoolean(false);
  private String k;
  private final Paint l;
  private int m;
  
  public ImageResourceView(Context paramContext)
  {
    super(paramContext);
    if (f == -1)
    {
      paramContext = getResources();
      f = paramContext.getDimensionPixelSize(2131296418);
      Locale localLocale = Locale.getDefault();
      g = paramContext.getString(2131493213).toUpperCase(localLocale);
      h = paramContext.getString(2131493524).toUpperCase(localLocale);
      i = paramContext.getString(2131493402).toUpperCase(localLocale);
      j = paramContext.getString(2131493404).toUpperCase(localLocale);
    }
    l = new Paint();
    l.setColor(-16777216);
    l.setTextAlign(Paint.Align.CENTER);
    l.setTextSize(f);
    m = 255;
  }
  
  public ImageResourceView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (f == -1)
    {
      paramContext = getResources();
      f = paramContext.getDimensionPixelSize(2131296418);
      paramAttributeSet = Locale.getDefault();
      g = paramContext.getString(2131493213).toUpperCase(paramAttributeSet);
      h = paramContext.getString(2131493524).toUpperCase(paramAttributeSet);
      i = paramContext.getString(2131493402).toUpperCase(paramAttributeSet);
      j = paramContext.getString(2131493404).toUpperCase(paramAttributeSet);
    }
    l = new Paint();
    l.setColor(-16777216);
    l.setTextAlign(Paint.Align.CENTER);
    l.setTextSize(f);
    m = 255;
  }
  
  public ImageResourceView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (f == -1)
    {
      paramContext = getResources();
      f = paramContext.getDimensionPixelSize(2131296418);
      paramAttributeSet = Locale.getDefault();
      g = paramContext.getString(2131493213).toUpperCase(paramAttributeSet);
      h = paramContext.getString(2131493524).toUpperCase(paramAttributeSet);
      i = paramContext.getString(2131493402).toUpperCase(paramAttributeSet);
      j = paramContext.getString(2131493404).toUpperCase(paramAttributeSet);
    }
    l = new Paint();
    l.setColor(-16777216);
    l.setTextAlign(Paint.Align.CENTER);
    l.setTextSize(f);
    m = 255;
  }
  
  private void e()
  {
    setImageDrawable(null);
    if (a != null)
    {
      if (a.c() != SnapchatResource.ResourceStatus.LOADING)
      {
        a.a(null);
        a = null;
      }
    }
    else {
      return;
    }
    ams.a();
    ams.a(a.a());
  }
  
  public final void a()
  {
    if (a != null) {
      a.a(getContext());
    }
  }
  
  public final void a(SnapchatResource.ResourceStatus paramResourceStatus)
  {
    switch (1.a[paramResourceStatus.ordinal()])
    {
    }
    for (;;)
    {
      setImageResource(2130837565);
      getDrawable().setAlpha(0);
      invalidate();
      return;
      if (a != null)
      {
        d.set(false);
        if (!e.get())
        {
          e();
          return;
        }
        paramResourceStatus = a.a(getContext());
        if (paramResourceStatus != null)
        {
          setImageBitmap(paramResourceStatus);
          getDrawable().setAlpha(m);
          return;
        }
        a.a(SnapchatResource.ResourceStatus.LOADING_FAILED);
      }
    }
  }
  
  public final boolean b()
  {
    return (a != null) && (a.c() != SnapchatResource.ResourceStatus.LOADED) && (a.c() != SnapchatResource.ResourceStatus.LOADING);
  }
  
  public final boolean c()
  {
    return (a != null) && (a.c() == SnapchatResource.ResourceStatus.LOADING);
  }
  
  public final void d()
  {
    e.set(false);
    if (d.get()) {
      return;
    }
    e();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    float f1 = paramCanvas.getWidth() / 2;
    float f2 = paramCanvas.getHeight() / 2;
    if (!TextUtils.isEmpty(k)) {
      paramCanvas.drawText(k, f1, f2, l);
    }
    while (a == null) {
      return;
    }
    switch (1.a[a.c().ordinal()])
    {
    default: 
      return;
    case 2: 
      paramCanvas.drawText(g, f1, f2, l);
      return;
    }
    paramCanvas.drawText(h, f1, f2, l);
  }
  
  public void setChatMedia(ChatMedia paramChatMedia)
  {
    e.set(true);
    if (paramChatMedia != null)
    {
      if ((a != null) && (!TextUtils.equals(a.a(), paramChatMedia.d()))) {
        a.a(null);
      }
      if ((a == null) || (!TextUtils.equals(a.a(), paramChatMedia.d())))
      {
        d.set(true);
        a = new apx(paramChatMedia, this);
        a.a(getContext());
      }
      b = paramChatMedia.G();
      c = paramChatMedia.H();
      if (paramChatMedia.O())
      {
        m = 127;
        k = i;
      }
    }
    else
    {
      return;
    }
    if (paramChatMedia.P())
    {
      m = 127;
      k = j;
      return;
    }
    if ((a.c() == SnapchatResource.ResourceStatus.LOADED) && (m != 255)) {
      getDrawable().setAlpha(255);
    }
    m = 255;
    k = null;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ImageResourceView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */