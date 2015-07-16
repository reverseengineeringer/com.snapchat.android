package xyz.danoz.recyclerviewfastscroller.vertical;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import cls.b;
import clt;
import clt.a;
import clu;
import clw;
import clx;
import cly;
import r;
import xyz.danoz.recyclerviewfastscroller.AbsRecyclerViewFastScroller;

public class VerticalRecyclerViewFastScroller
  extends AbsRecyclerViewFastScroller
{
  @r
  private cly f;
  @r
  private clu g;
  
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
    clt localclt = new clt(new clt.a()new clt.a
    {
      public final float a()
      {
        return VerticalRecyclerViewFastScroller.a(VerticalRecyclerViewFastScroller.this).getY();
      }
    }, new clt.a()
    {
      public final float a()
      {
        return VerticalRecyclerViewFastScroller.b(VerticalRecyclerViewFastScroller.this).getY() + VerticalRecyclerViewFastScroller.c(VerticalRecyclerViewFastScroller.this).getHeight() - VerticalRecyclerViewFastScroller.d(VerticalRecyclerViewFastScroller.this).getHeight();
      }
    });
    f = new clx(localclt);
    g = new clu(localclt);
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
    return cls.b.vertical_recycler_fast_scroller_layout;
  }
  
  @r
  protected clw getScrollProgressCalculator()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     xyz.danoz.recyclerviewfastscroller.vertical.VerticalRecyclerViewFastScroller
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */