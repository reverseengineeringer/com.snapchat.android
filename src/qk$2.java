import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class qk$2
  implements Runnable
{
  qk$2(qk paramqk, qk.b paramb) {}
  
  public final void run()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject = val$location.our_stories.iterator();
    while (((Iterator)localObject).hasNext()) {
      localArrayList.add(new ajy((bjn)((Iterator)localObject).next()));
    }
    localObject = this$0;
    bhp.a();
    mCallback.b(localArrayList);
  }
}

/* Location:
 * Qualified Name:     qk.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */