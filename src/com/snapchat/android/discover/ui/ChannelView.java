package com.snapchat.android.discover.ui;

import adf;
import adq;
import aeg.a;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import avh;
import cgb;
import com.snapchat.android.discover.model.ChannelPage;
import cw;

public class ChannelView
  extends FrameLayout
{
  public ImageView a;
  private final adf b;
  private final adq c;
  private ImageView d;
  private ProgressBar e;
  private ChannelPage f;
  
  protected ChannelView(Context paramContext, adq paramadq, adf paramadf)
  {
    super(paramContext);
    c = paramadq;
    b = paramadf;
  }
  
  public ChannelView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b = adf.a();
    c = new adq();
    c.d = new aeg.a()
    {
      public final void a(ImageView paramAnonymousImageView, Drawable paramAnonymousDrawable, Bundle paramAnonymousBundle, boolean paramAnonymousBoolean)
      {
        ChannelView.a(ChannelView.this);
      }
    };
    c();
  }
  
  private boolean a(ChannelPage paramChannelPage)
  {
    if (paramChannelPage == null) {}
    boolean bool;
    do
    {
      return false;
      bool = b.b(e);
    } while ((j != 0) && ((!paramChannelPage.e()) || (!bool)) && (k));
    return true;
  }
  
  private void c()
  {
    if (!b())
    {
      setAlpha(0.5F);
      return;
    }
    setAlpha(1.0F);
    setProgressBarVisibility(false);
  }
  
  public final void a()
  {
    if (d != null)
    {
      avh.a(d, null);
      d.setImageDrawable(null);
      adq localadq = c;
      a = null;
      b = null;
      c = false;
    }
  }
  
  public final boolean b()
  {
    return (f != null) && (f.e()) && (c.c);
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    if ((d != null) && (f != null))
    {
      c.a(d, f, a(f));
      c();
    }
  }
  
  public ChannelPage getChannelPage()
  {
    return f;
  }
  
  public int getFillColor()
  {
    return f.h;
  }
  
  protected void onAttachedToWindow()
  {
    d = ((ImageView)findViewById(2131362058));
    e = ((ProgressBar)findViewById(2131362059));
    a = ((ImageView)findViewById(2131362060));
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt2, paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt2);
    setMeasuredDimension(paramInt1, paramInt1);
  }
  
  public void setChannelPage(@cgb ChannelPage paramChannelPage)
  {
    int k = 1;
    ChannelPage localChannelPage = f;
    int i;
    if ((localChannelPage == null) && (paramChannelPage != null))
    {
      i = k;
      f = paramChannelPage;
      setTag(d);
      if (i != 0) {
        invalidate();
      }
      return;
    }
    cw localcw = cw.a().a(b, b).a(Boolean.valueOf(k), Boolean.valueOf(k)).a(Boolean.valueOf(localChannelPage.e()), Boolean.valueOf(paramChannelPage.e())).a(Boolean.valueOf(a(localChannelPage)), Boolean.valueOf(a(paramChannelPage))).a(h, h).a(i, i);
    boolean bool1;
    label151:
    boolean bool2;
    if (j == 0)
    {
      bool1 = true;
      if (j != 0) {
        break label274;
      }
      bool2 = true;
      label161:
      if (localcw.a(Boolean.valueOf(bool1), Boolean.valueOf(bool2)).b() == 0) {
        break label280;
      }
    }
    label274:
    label280:
    for (int j = 1;; j = 0)
    {
      i = k;
      if (j != 0) {
        break;
      }
      i = k;
      if (!TextUtils.equals(localChannelPage.h(), paramChannelPage.h())) {
        break;
      }
      i = k;
      if (!TextUtils.equals(localChannelPage.i(), paramChannelPage.i())) {
        break;
      }
      i = k;
      if (!TextUtils.equals(localChannelPage.j(), paramChannelPage.j())) {
        break;
      }
      i = k;
      if (!TextUtils.equals(localChannelPage.g(), paramChannelPage.g())) {
        break;
      }
      i = 0;
      break;
      bool1 = false;
      break label151;
      bool2 = false;
      break label161;
    }
  }
  
  public void setProgressBarVisibility(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      avh.a(e, 0);
      return;
    }
    avh.a(e, 4);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.ChannelView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */