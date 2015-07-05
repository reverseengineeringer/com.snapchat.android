import android.support.v7.widget.RecyclerView.LayoutParams;
import android.support.v7.widget.RecyclerView.h;
import android.view.View;

final class ah$2
  extends ah
{
  ah$2(RecyclerView.h paramh)
  {
    super(paramh, (byte)0);
  }
  
  public final int a(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    return paramView.getTop() - RecyclerView.h.d(paramView) - topMargin;
  }
  
  public final void a(int paramInt)
  {
    a.e(paramInt);
  }
  
  public final int b()
  {
    return a.p();
  }
  
  public final int b(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = paramView.getBottom();
    int j = RecyclerView.h.e(paramView);
    return bottomMargin + (i + j);
  }
  
  public final int c()
  {
    return a.n() - a.r();
  }
  
  public final int c(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = RecyclerView.h.c(paramView);
    int j = topMargin;
    return bottomMargin + (i + j);
  }
  
  public final int d()
  {
    return a.n();
  }
  
  public final int d(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = RecyclerView.h.b(paramView);
    int j = leftMargin;
    return rightMargin + (i + j);
  }
  
  public final int e()
  {
    return a.n() - a.p() - a.r();
  }
  
  public final int f()
  {
    return a.r();
  }
}

/* Location:
 * Qualified Name:     ah.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */