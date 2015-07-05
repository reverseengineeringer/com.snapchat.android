package android.support.v7.widget;

import android.database.Observable;
import java.util.ArrayList;

public final class RecyclerView$b
  extends Observable<RecyclerView.c>
{
  public final void a(int paramInt)
  {
    int i = mObservers.size() - 1;
    while (i >= 0)
    {
      ((RecyclerView.c)mObservers.get(i)).a(paramInt);
      i -= 1;
    }
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    int i = mObservers.size() - 1;
    while (i >= 0)
    {
      ((RecyclerView.c)mObservers.get(i)).a(paramInt1, paramInt2);
      i -= 1;
    }
  }
  
  public final boolean a()
  {
    return !mObservers.isEmpty();
  }
  
  public final void b()
  {
    int i = mObservers.size() - 1;
    while (i >= 0)
    {
      ((RecyclerView.c)mObservers.get(i)).a();
      i -= 1;
    }
  }
  
  public final void b(int paramInt)
  {
    int i = mObservers.size() - 1;
    while (i >= 0)
    {
      ((RecyclerView.c)mObservers.get(i)).b(paramInt);
      i -= 1;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */