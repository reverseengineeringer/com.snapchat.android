import com.snapchat.android.ui.swipefilters.FilterPageType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class asv<T extends asm>
  implements asu
{
  protected List<T> a = new ArrayList();
  
  @chd
  public final asm a(int paramInt)
  {
    if (a.size() == 0) {
      return null;
    }
    List localList = a;
    int j = a.size();
    if (j == 0) {
      paramInt = 0;
    }
    for (;;)
    {
      return (asm)localList.get(paramInt);
      int i = paramInt % j;
      paramInt = i;
      if (i < 0) {
        paramInt = i + j;
      }
    }
  }
  
  public final List<T> a()
  {
    return a;
  }
  
  public final void a(T paramT)
  {
    a.add(paramT);
  }
  
  public final int b()
  {
    return a.size();
  }
  
  public final FilterPageType b(int paramInt)
  {
    asm localasm = a(paramInt);
    if (localasm == null) {
      return FilterPageType.UNFILTERED;
    }
    return localasm.b();
  }
  
  public final void c()
  {
    a.clear();
  }
  
  public final void d()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((asm)localIterator.next()).e();
    }
    c();
  }
}

/* Location:
 * Qualified Name:     asv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */