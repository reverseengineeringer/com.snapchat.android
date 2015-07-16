import android.graphics.Canvas;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.f;
import android.support.v7.widget.RecyclerView.h;
import android.support.v7.widget.RecyclerView.p;
import android.util.SparseArray;
import android.view.View;

public final class bqs
  extends RecyclerView.f
{
  final SparseArray<Rect> a = new SparseArray();
  private final bqr b;
  private final bqu c;
  private final bqz d;
  private final bqq e;
  private final bqx f;
  private final bqw g;
  
  public bqs(bqr parambqr)
  {
    this(parambqr, new bqy(), new bqw());
  }
  
  private bqs(bqr parambqr, bqx parambqx, bqz parambqz, bqw parambqw, bqu parambqu, bqq parambqq)
  {
    b = parambqr;
    c = parambqu;
    d = parambqz;
    f = parambqx;
    g = parambqw;
    e = parambqq;
  }
  
  private bqs(bqr parambqr, bqz parambqz, bqw parambqw)
  {
    this(parambqr, parambqz, parambqw, new bqx(parambqz), new bqv(parambqr, parambqz));
  }
  
  private bqs(bqr parambqr, bqz parambqz, bqw parambqw, bqx parambqx, bqu parambqu)
  {
    this(parambqr, parambqx, parambqz, parambqw, parambqu, new bqq(parambqr, parambqu, parambqz, parambqw));
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
        localObject2 = bqw.a(localView1);
        if (i != 1) {
          break label613;
        }
        i = ((View)localObject1).getLeft();
        k = left + i;
        i = Math.max(((View)localObject1).getTop() - localView1.getHeight() - bottom, bqq.a(paramRecyclerView) + top);
        localObject1 = new Rect(k, i, localView1.getWidth() + k, localView1.getHeight() + i);
        if (bool)
        {
          localObject2 = paramp.a(paramRecyclerView, localView1);
          i = RecyclerView.c((View)localObject2);
          if ((i <= 0) || (!paramp.a(i))) {
            break label715;
          }
          localView2 = b.a(paramRecyclerView, i);
          localRect1 = bqw.a(localView2);
          localRect2 = bqw.a(localView1);
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
            paramp = bqw.a(localView2);
            localRect1 = bqw.a(localView1);
            if (i != 1) {
              break label721;
            }
            i = bqq.a(paramRecyclerView) + top + bottom;
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
          localObject2 = bqw.a(localView1);
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
      k = Math.max(((View)localObject1).getLeft() - localView1.getWidth() - right, bqq.b(paramRecyclerView) + left);
      break label187;
      if (((View)localObject2).getLeft() - right - localView2.getWidth() - left < paramRecyclerView.getPaddingLeft() + localView1.getRight() + left + right)
      {
        i = 1;
        break label344;
      }
      i = 0;
      break label344;
      i = bqq.b(paramRecyclerView) + left + right;
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
      paramRecyclerView = bqw.a(paramView);
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
 * Qualified Name:     bqs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */