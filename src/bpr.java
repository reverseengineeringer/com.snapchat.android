import android.graphics.Canvas;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.f;
import android.support.v7.widget.RecyclerView.h;
import android.support.v7.widget.RecyclerView.p;
import android.util.SparseArray;
import android.view.View;

public final class bpr
  extends RecyclerView.f
{
  final SparseArray<Rect> a = new SparseArray();
  private final bpq b;
  private final bpt c;
  private final bpy d;
  private final bpp e;
  private final bpw f;
  private final bpv g;
  
  public bpr(bpq parambpq)
  {
    this(parambpq, new bpx(), new bpv());
  }
  
  private bpr(bpq parambpq, bpw parambpw, bpy parambpy, bpv parambpv, bpt parambpt, bpp parambpp)
  {
    b = parambpq;
    c = parambpt;
    d = parambpy;
    f = parambpw;
    g = parambpv;
    e = parambpp;
  }
  
  private bpr(bpq parambpq, bpy parambpy, bpv parambpv)
  {
    this(parambpq, parambpy, parambpv, new bpw(parambpy), new bpu(parambpq, parambpy));
  }
  
  private bpr(bpq parambpq, bpy parambpy, bpv parambpv, bpw parambpw, bpt parambpt)
  {
    this(parambpq, parambpw, parambpy, parambpv, parambpt, new bpp(parambpq, parambpt, parambpy, parambpv));
  }
  
  private boolean a(int paramInt1, int paramInt2)
  {
    return (paramInt1 <= 0) && (b.e(paramInt2) >= 0L);
  }
  
  public final View a(RecyclerView paramRecyclerView, int paramInt)
  {
    return c.a(paramRecyclerView, paramInt);
  }
  
  public final void a(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.p paramp)
  {
    super.a(paramCanvas, paramRecyclerView, paramp);
    a.clear();
    if ((paramRecyclerView.getChildCount() <= 0) || (b.a() <= 0)) {
      return;
    }
    int j = 0;
    label37:
    Object localObject1;
    int m;
    View localView1;
    int i;
    Object localObject2;
    int k;
    label187:
    View localView2;
    Rect localRect1;
    Rect localRect2;
    if (j < paramRecyclerView.getChildCount())
    {
      localObject1 = paramRecyclerView.getChildAt(j);
      m = RecyclerView.c((View)localObject1);
      if ((a(j, m)) || (e.a(m)))
      {
        localView1 = c.a(paramRecyclerView, m);
        paramp = e;
        boolean bool = a(j, m);
        i = a.a(paramRecyclerView);
        localObject2 = bpv.a(localView1);
        if (i != 1) {
          break label613;
        }
        i = ((View)localObject1).getLeft();
        k = left + i;
        i = Math.max(((View)localObject1).getTop() - localView1.getHeight() - bottom, bpp.a(paramRecyclerView) + top);
        localObject1 = new Rect(k, i, localView1.getWidth() + k, localView1.getHeight() + i);
        if (bool)
        {
          localObject2 = paramp.a(paramRecyclerView, localView1);
          i = RecyclerView.c((View)localObject2);
          if ((i <= 0) || (!paramp.a(i))) {
            break label715;
          }
          localView2 = b.a(paramRecyclerView, i);
          localRect1 = bpv.a(localView2);
          localRect2 = bpv.a(localView1);
          if (a.a(paramRecyclerView) != 1) {
            break label661;
          }
          if (((View)localObject2).getTop() - bottom - localView2.getHeight() - top >= paramRecyclerView.getPaddingTop() + localView1.getBottom() + top + bottom) {
            break label715;
          }
          i = 1;
          label344:
          if (i != 0)
          {
            localObject2 = paramp.a(paramRecyclerView, localView1);
            i = RecyclerView.c((View)localObject2);
            localView2 = b.a(paramRecyclerView, i);
            i = a.a(paramRecyclerView);
            paramp = bpv.a(localView2);
            localRect1 = bpv.a(localView1);
            if (i != 1) {
              break label721;
            }
            i = bpp.a(paramRecyclerView) + top + bottom;
            k = ((View)localObject2).getTop() - localView2.getHeight() - bottom - top - localView1.getHeight() - i;
            if (k < i) {
              top = (k + top);
            }
          }
        }
        label480:
        paramp = f;
        paramCanvas.save();
        if (paramRecyclerView.getLayoutManager().j())
        {
          localObject2 = bpv.a(localView1);
          if (b.a(paramRecyclerView) != 1) {
            break label794;
          }
        }
      }
    }
    label613:
    label661:
    label715:
    label721:
    label794:
    for (paramp = new Rect(paramRecyclerView.getPaddingLeft(), paramRecyclerView.getPaddingTop(), paramRecyclerView.getWidth() - paramRecyclerView.getPaddingRight() - right, paramRecyclerView.getHeight() - paramRecyclerView.getPaddingBottom());; paramp = new Rect(paramRecyclerView.getPaddingLeft(), paramRecyclerView.getPaddingTop(), paramRecyclerView.getWidth() - paramRecyclerView.getPaddingRight(), paramRecyclerView.getHeight() - paramRecyclerView.getPaddingBottom() - bottom))
    {
      paramCanvas.clipRect(paramp);
      paramCanvas.translate(left, top);
      localView1.draw(paramCanvas);
      paramCanvas.restore();
      a.put(m, localObject1);
      j += 1;
      break label37;
      break;
      i = ((View)localObject1).getTop() + top;
      k = Math.max(((View)localObject1).getLeft() - localView1.getWidth() - right, bpp.b(paramRecyclerView) + left);
      break label187;
      if (((View)localObject2).getLeft() - right - localView2.getWidth() - left < paramRecyclerView.getPaddingLeft() + localView1.getRight() + left + right)
      {
        i = 1;
        break label344;
      }
      i = 0;
      break label344;
      i = bpp.b(paramRecyclerView) + left + right;
      k = ((View)localObject2).getLeft() - localView2.getWidth() - right - left - localView1.getWidth() - i;
      if (k >= i) {
        break label480;
      }
      left = (k + left);
      break label480;
    }
  }
  
  public final void a(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.p paramp)
  {
    super.a(paramRect, paramView, paramRecyclerView, paramp);
    int i = RecyclerView.c(paramView);
    if (e.a(i))
    {
      paramView = a(paramRecyclerView, i);
      i = d.a(paramRecyclerView);
      paramRecyclerView = bpv.a(paramView);
      if (i == 1) {
        top = (paramView.getHeight() + top + bottom);
      }
    }
    else
    {
      return;
    }
    left = (paramView.getWidth() + left + right);
  }
}

/* Location:
 * Qualified Name:     bpr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */