package com.snapchat.android.discover.ui.media;

import abq;
import aby;
import adf;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import azm;
import ban;
import bgk;
import cgb;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics;
import com.squareup.otto.Bus;

public abstract class DiscoverEditionPageView
  extends FrameLayout
{
  public final adf l;
  public final aby m;
  public final abq n;
  public final DiscoverUsageAnalytics o;
  protected final azm p;
  public final bgk q;
  public final Bus r;
  public a s;
  
  public DiscoverEditionPageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, aby.a(), abq.a(), new DiscoverUsageAnalytics(), adf.a(), azm.a(), new bgk(), ban.a());
  }
  
  public DiscoverEditionPageView(Context paramContext, AttributeSet paramAttributeSet, aby paramaby, abq paramabq, DiscoverUsageAnalytics paramDiscoverUsageAnalytics, adf paramadf, azm paramazm, bgk parambgk, Bus paramBus)
  {
    super(paramContext, paramAttributeSet);
    m = paramaby;
    n = paramabq;
    o = paramDiscoverUsageAnalytics;
    l = paramadf;
    p = paramazm;
    q = parambgk;
    r = paramBus;
  }
  
  public abstract void a();
  
  public abstract void a(int paramInt);
  
  public abstract boolean c();
  
  public abstract boolean d();
  
  public abstract boolean e();
  
  public abstract boolean f();
  
  public abstract boolean g();
  
  public void q_()
  {
    s = null;
  }
  
  public void setAutoAdvanceListener(@cgb a parama)
  {
    s = parama;
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.media.DiscoverEditionPageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */