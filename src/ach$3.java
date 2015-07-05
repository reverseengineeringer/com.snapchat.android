import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

final class ach$3
  implements adj.a
{
  ach$3(ach paramach) {}
  
  public final void a(@cgb List<ChannelPage> paramList)
  {
    ach localach = a;
    Object localObject = paramList.iterator();
    boolean bool = false;
    while (((Iterator)localObject).hasNext())
    {
      ChannelPage localChannelPage = (ChannelPage)((Iterator)localObject).next();
      if ((localChannelPage.n() == MediaState.SUCCESS) || (localChannelPage.n() != MediaState.NOT_STARTED)) {
        break label201;
      }
      if (b.e(localChannelPage.o())) {
        bool = d.a(localChannelPage, MediaState.SUCCESS) | bool;
      } else if (b.a()) {
        bool = localach.a(localChannelPage) | bool;
      } else {
        bool |= d.a(localChannelPage, MediaState.EXTERNAL_STORAGE_UNAVAILABLE);
      }
    }
    label201:
    for (;;)
    {
      break;
      if (bool) {
        c.b();
      }
      localObject = new HashSet();
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        ((Set)localObject).add(((ChannelPage)paramList.next()).o());
      }
      b.a((Set)localObject);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     ach.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */