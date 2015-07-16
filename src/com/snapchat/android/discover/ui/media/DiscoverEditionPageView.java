package com.snapchat.android.discover.ui.media;

import acq;
import acy;
import aef;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import bal;
import bbo;
import bhk;
import chc;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics;
import com.squareup.otto.Bus;

public abstract class DiscoverEditionPageView
  extends FrameLayout
{
  public final aef l;
  public final acy m;
  public final acq n;
  public final DiscoverUsageAnalytics o;
  protected final bal p;
  public final bhk q;
  public final Bus r;
  public a s;
  
  public DiscoverEditionPageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, acy.a(), acq.a(), new DiscoverUsageAnalytics(), aef.a(), bal.a(), new bhk(), bbo.a());
  }
  
  public DiscoverEditionPageView(Context paramContext, AttributeSet paramAttributeSet, acy paramacy, acq paramacq, DiscoverUsageAnalytics paramDiscoverUsageAnalytics, aef paramaef, bal parambal, bhk parambhk, Bus paramBus)
  {
    super(paramContext, paramAttributeSet);
    m = paramacy;
    n = paramacq;
    o = paramDiscoverUsageAnalytics;
    l = paramaef;
    p = parambal;
    q = parambhk;
    r = paramBus;
  }
  
  public abstract void a();
  
  public abstract void a(int paramInt);
  
  public abstract boolean c();
  
  public abstract boolean d();
  
  public abstract boolean e();
  
  public abstract boolean f();
  
  public abstract boolean g();
  
  public void o_()
  {
    s = null;
  }
  
  public void setAutoAdvanceListener(@chc a parama)
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