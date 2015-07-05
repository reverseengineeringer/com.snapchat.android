package xyz.danoz.recyclerviewfastscroller.vertical;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import ckr.b;
import cks;
import cks.a;
import ckt;
import ckv;
import ckw;
import ckx;
import r;
import xyz.danoz.recyclerviewfastscroller.AbsRecyclerViewFastScroller;

public class VerticalRecyclerViewFastScroller
  extends AbsRecyclerViewFastScroller
{
  @r
  private ckx f;
  @r
  private ckt g;
  
  public VerticalRecyclerViewFastScroller(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public VerticalRecyclerViewFastScroller(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public VerticalRecyclerViewFastScroller(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected final void a()
  {
    cks localcks = new cks(new cks.a()new cks.a
    {
      public final float a()
      {
        return VerticalRecyclerViewFastScroller.a(VerticalRecyclerViewFastScroller.this).getY();
      }
    }, new cks.a()
    {
      public final float a()
      {
        return VerticalRecyclerViewFastScroller.b(VerticalRecyclerViewFastScroller.this).getY() + VerticalRecyclerViewFastScroller.c(VerticalRecyclerViewFastScroller.this).getHeight() - VerticalRecyclerViewFastScroller.d(VerticalRecyclerViewFastScroller.this).getHeight();
      }
    });
    f = new ckw(localcks);
    g = new ckt(localcks);
  }
  
  public final void a(float paramFloat)
  {
    if (g == null) {
      return;
    }
    b.setY(g.a(paramFloat));
  }
  
  protected int getLayoutResourceId()
  {
    return ckr.b.vertical_recycler_fast_scroller_layout;
  }
  
  @r
  protected ckv getScrollProgressCalculator()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     xyz.danoz.recyclerviewfastscroller.vertical.VerticalRecyclerViewFastScroller
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */