package com.snapchat.android.ui.ptr;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import in.srain.cube.views.ptr.PtrFrameLayout;

public class SnapchatPtrFrameLayout
  extends PtrFrameLayout
{
  public final DancingGhostPtrHeader a;
  
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
    g = true;
    a = new DancingGhostPtrHeader(paramContext);
    setHeaderView(a);
    a(a);
  }
  
  public final void a()
  {
    super.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 3, 0.0F, 0.0F, 0));
  }
  
  public final boolean b()
  {
    DancingGhostPtrHeader localDancingGhostPtrHeader = a;
    return (b != null) && (b.isRunning());
  }
  
  public DancingGhostPtrHeader getPtrHeader()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ptr.SnapchatPtrFrameLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */