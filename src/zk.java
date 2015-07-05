import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;
import java.util.Iterator;
import java.util.List;

public final class zk
  implements yu
{
  private final List<zj> a;
  
  public zk()
  {
    this(dk.a(new zj[] { new zm(), new zl() }));
  }
  
  private zk(List<zj> paramList)
  {
    a = paramList;
  }
  
  public final void a(@cgb aio paramaio)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((zj)localIterator.next()).a(paramaio);
    }
  }
  
  public final void a(@cgb aje paramaje)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((zj)localIterator.next()).a(paramaje);
    }
  }
  
  public final void a(@cgb aje paramaje, @cgb aio paramaio)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((zj)localIterator.next()).a(paramaje, paramaio);
    }
  }
  
  public final void a(@cgb aje paramaje, @cgb SnapViewSessionStopReason paramSnapViewSessionStopReason, int paramInt)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((zj)localIterator.next()).a(paramaje, paramSnapViewSessionStopReason, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     zk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */