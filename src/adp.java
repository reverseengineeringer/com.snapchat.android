import android.graphics.Point;
import android.graphics.Rect;
import android.support.v7.widget.GridLayoutManager.LayoutParams;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.support.v7.widget.RecyclerView.f;
import android.support.v7.widget.RecyclerView.p;
import android.support.v7.widget.RecyclerView.s;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.snapchat.android.discover.ui.fragment.ChannelSpanSizeLookup;

public final class adp
  extends RecyclerView.f
{
  private final ChannelSpanSizeLookup a;
  
  public adp(ChannelSpanSizeLookup paramChannelSpanSizeLookup)
  {
    a = paramChannelSpanSizeLookup;
  }
  
  public final void a(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.p paramp)
  {
    paramRect.set(0, 0, 0, 0);
    paramRect = (GridLayoutManager.LayoutParams)paramView.getLayoutParams();
    paramView = (FrameLayout)paramView;
    int i;
    if (paramView.getChildCount() > 0)
    {
      paramView = paramView.getChildAt(0).getLayoutParams();
      if ((paramView instanceof FrameLayout.LayoutParams))
      {
        paramView = (FrameLayout.LayoutParams)paramView;
        paramRecyclerView = a;
        i = c.c();
        paramRect = new Point();
        paramRecyclerView.a(paramRect, i);
        if ((x >= 0) && (y >= 0)) {
          break label103;
        }
        i = 17;
      }
    }
    for (;;)
    {
      gravity = i;
      return;
      label103:
      if (b.mLayoutFormat[x] == 2)
      {
        if (y == 0) {
          i = 8388629;
        } else {
          i = 8388627;
        }
      }
      else {
        i = 17;
      }
    }
  }
}

/* Location:
 * Qualified Name:     adp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */