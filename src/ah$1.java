import android.support.v7.widget.RecyclerView.LayoutParams;
import android.support.v7.widget.RecyclerView.h;
import android.view.View;

final class ah$1
  extends ah
{
  ah$1(RecyclerView.h paramh)
  {
    super(paramh, (byte)0);
  }
  
  public final int a(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    return paramView.getLeft() - RecyclerView.h.f(paramView) - leftMargin;
  }
  
  public final void a(int paramInt)
  {
    a.d(paramInt);
  }
  
  public final int b()
  {
    return a.o();
  }
  
  public final int b(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = paramView.getRight();
    int j = RecyclerView.h.g(paramView);
    return rightMargin + (i + j);
  }
  
  public final int c()
  {
    return a.m() - a.q();
  }
  
  public final int c(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = RecyclerView.h.b(paramView);
    int j = leftMargin;
    return rightMargin + (i + j);
  }
  
  public final int d()
  {
    return a.m();
  }
  
  public final int d(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = RecyclerView.h.c(paramView);
    int j = topMargin;
    return bottomMargin + (i + j);
  }
  
  public final int e()
  {
    return a.m() - a.o() - a.q();
  }
  
  public final int f()
  {
    return a.q();
  }
}

/* Location:
 * Qualified Name:     ah.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */