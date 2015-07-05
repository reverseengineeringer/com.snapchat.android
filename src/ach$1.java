import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.List;

final class ach$1
  implements adj.a
{
  ach$1(ach paramach) {}
  
  public final void a(@cgb List<ChannelPage> paramList)
  {
    paramList = paramList.iterator();
    boolean bool = false;
    if (paramList.hasNext())
    {
      ChannelPage localChannelPage = (ChannelPage)paramList.next();
      if ((localChannelPage.n() != MediaState.SUCCESS) || (a.b.e(localChannelPage.o()))) {
        break label105;
      }
      Timber.e("IntroVideoMediaLoader", "Resetting intro video media state for %s because it is not in the cache %s", new Object[] { localChannelPage });
      bool |= a.d.a(localChannelPage, MediaState.NOT_STARTED);
    }
    label105:
    for (;;)
    {
      break;
      if (bool) {
        a.c.b();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     ach.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */