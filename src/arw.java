import com.snapchat.android.ui.swipefilters.FilterPageType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class arw<T extends arn>
  implements arv
{
  protected List<T> a = new ArrayList();
  
  @cgc
  public final arn a(int paramInt)
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
      return (arn)localList.get(paramInt);
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
    arn localarn = a(paramInt);
    if (localarn == null) {
      return FilterPageType.UNFILTERED;
    }
    return localarn.b();
  }
  
  public final void c()
  {
    a.clear();
  }
  
  public final void d()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((arn)localIterator.next()).e();
    }
    c();
  }
}

/* Location:
 * Qualified Name:     arw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */