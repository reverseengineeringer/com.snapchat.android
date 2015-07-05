import com.snapchat.android.Timber;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class pt$2
  implements Runnable
{
  pt$2(pt parampt, pt.b paramb) {}
  
  public final void run()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject = val$location.our_stories.iterator();
    while (((Iterator)localObject).hasNext()) {
      localArrayList.add(new ajc((bin)((Iterator)localObject).next()));
    }
    localObject = this$0;
    bgp.a();
    Timber.c("GetLocationDataTask", "Updating Shared stories", new Object[0]);
    mCallback.b(localArrayList);
  }
}

/* Location:
 * Qualified Name:     pt.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */