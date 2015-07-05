package android.support.v7.widget;

import ad.b;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

final class RecyclerView$4
  implements ad.b
{
  RecyclerView$4(RecyclerView paramRecyclerView) {}
  
  public final int a()
  {
    return a.getChildCount();
  }
  
  public final int a(View paramView)
  {
    return a.indexOfChild(paramView);
  }
  
  public final void a(int paramInt)
  {
    View localView = a.getChildAt(paramInt);
    if (localView != null) {
      RecyclerView.b(a, localView);
    }
    a.removeViewAt(paramInt);
  }
  
  public final void a(View paramView, int paramInt)
  {
    a.addView(paramView, paramInt);
    RecyclerView.a(a, paramView);
  }
  
  public final void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    RecyclerView.s locals = RecyclerView.b(paramView);
    if (locals != null)
    {
      if ((!locals.n()) && (!locals.b())) {
        throw new IllegalArgumentException("Called attach on a child which is not detached: " + locals);
      }
      locals.h();
    }
    RecyclerView.a(a, paramView, paramInt, paramLayoutParams);
  }
  
  public final RecyclerView.s b(View paramView)
  {
    return RecyclerView.b(paramView);
  }
  
  public final View b(int paramInt)
  {
    return a.getChildAt(paramInt);
  }
  
  public final void b()
  {
    int j = a.getChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView.b(a, b(i));
      i += 1;
    }
    a.removeAllViews();
  }
  
  public final void c(int paramInt)
  {
    Object localObject = b(paramInt);
    if (localObject != null)
    {
      localObject = RecyclerView.b((View)localObject);
      if (localObject != null)
      {
        if ((((RecyclerView.s)localObject).n()) && (!((RecyclerView.s)localObject).b())) {
          throw new IllegalArgumentException("called detach on an already detached child " + localObject);
        }
        ((RecyclerView.s)localObject).a(256);
      }
    }
    RecyclerView.a(a, paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */