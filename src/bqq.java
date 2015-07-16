import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.support.v7.widget.RecyclerView.h;
import android.view.View;

public final class bqq
{
  final bqz a;
  final bqu b;
  final bqw c;
  private final bqr d;
  
  public bqq(bqr parambqr, bqu parambqu, bqz parambqz, bqw parambqw)
  {
    d = parambqr;
    b = parambqu;
    a = parambqz;
    c = parambqw;
  }
  
  static int a(RecyclerView paramRecyclerView)
  {
    if (paramRecyclerView.getLayoutManager().j()) {
      return paramRecyclerView.getPaddingTop();
    }
    return 0;
  }
  
  static int b(RecyclerView paramRecyclerView)
  {
    if (paramRecyclerView.getLayoutManager().j()) {
      return paramRecyclerView.getPaddingLeft();
    }
    return 0;
  }
  
  final View a(RecyclerView paramRecyclerView, View paramView)
  {
    int j = 0;
    while (j < paramRecyclerView.getChildCount())
    {
      View localView = paramRecyclerView.getChildAt(j);
      int i = a.a(paramRecyclerView);
      RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)localView.getLayoutParams();
      Rect localRect = bqw.a(paramView);
      if (i == 1)
      {
        if (localView.getTop() - topMargin <= paramView.getBottom() + bottom + top) {
          break label126;
        }
        i = 0;
      }
      while (i == 0)
      {
        return localView;
        if (localView.getLeft() - leftMargin > paramView.getRight() + right + left) {
          i = 0;
        } else {
          label126:
          i = 1;
        }
      }
      j += 1;
    }
    return null;
  }
  
  public final boolean a(int paramInt)
  {
    boolean bool2 = false;
    int i = 0;
    label33:
    boolean bool1;
    if (i < d.a()) {
      if (d.e(i) >= 0L)
      {
        if (i != paramInt) {
          break label54;
        }
        bool1 = true;
      }
    }
    label54:
    do
    {
      return bool1;
      i += 1;
      break;
      i = -1;
      break label33;
      bool1 = bool2;
    } while (d.e(paramInt) < 0L);
    if ((paramInt < 0) || (paramInt >= d.a())) {}
    for (i = 1;; i = 0)
    {
      bool1 = bool2;
      if (i != 0) {
        break;
      }
      bool1 = bool2;
      if (d.e(paramInt) == d.e(paramInt - 1)) {
        break;
      }
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     bqq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */