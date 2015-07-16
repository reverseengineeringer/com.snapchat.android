import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;
import java.util.Iterator;
import java.util.List;

public final class aak
  implements zq
{
  private final List<aaj> a;
  
  public aak()
  {
    this(dt.a(new aaj[] { new aam(), new aal() }));
  }
  
  private aak(List<aaj> paramList)
  {
    a = paramList;
  }
  
  public final void a(@chc ajk paramajk)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((aaj)localIterator.next()).a(paramajk);
    }
  }
  
  public final void a(@chc aka paramaka, @chc ajk paramajk)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((aaj)localIterator.next()).a(paramaka, paramajk);
    }
  }
  
  public final void a(@chc aka paramaka, @chc SnapViewSessionStopReason paramSnapViewSessionStopReason, int paramInt)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((aaj)localIterator.next()).a(paramaka, paramSnapViewSessionStopReason, paramInt);
    }
  }
  
  public final void d(@chc aka paramaka)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((aaj)localIterator.next()).d(paramaka);
    }
  }
}

/* Location:
 * Qualified Name:     aak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */