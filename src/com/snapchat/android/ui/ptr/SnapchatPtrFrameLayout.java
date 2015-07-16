package com.snapchat.android.ui.ptr;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import in.srain.cube.views.ptr.PtrFrameLayout;

public class SnapchatPtrFrameLayout
  extends PtrFrameLayout
{
  private final DancingGhostPtrHeader g;
  
  public SnapchatPtrFrameLayout(Context paramContext)
  {
    this(paramContext, null, 0);
  }
  
  public SnapchatPtrFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SnapchatPtrFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setResistance(1.7F);
    setRatioOfHeaderHeightToRefresh(1.2F);
    setDurationToClose(300);
    setDurationToCloseHeader(600);
    setKeepHeaderWhenRefresh(true);
    f = true;
    g = new DancingGhostPtrHeader(paramContext);
    setHeaderView(g);
    a(g);
  }
  
  public final boolean a()
  {
    DancingGhostPtrHeader localDancingGhostPtrHeader = g;
    return (a != null) && (a.isRunning());
  }
  
  public final boolean b()
  {
    return g.getHeight() + g.getTop() > 0;
  }
  
  public DancingGhostPtrHeader getPtrHeader()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ptr.SnapchatPtrFrameLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */