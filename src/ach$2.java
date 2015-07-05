import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.List;

final class ach$2
  implements adj.a
{
  ach$2(ach paramach) {}
  
  public final void a(@cgb List<ChannelPage> paramList)
  {
    paramList = paramList.iterator();
    boolean bool = false;
    if (paramList.hasNext())
    {
      ChannelPage localChannelPage = (ChannelPage)paramList.next();
      if (!localChannelPage.n().isError()) {
        break label98;
      }
      Timber.c("IntroVideoMediaLoader", "Resetting state for %s because it was in error state %s", new Object[] { localChannelPage, localChannelPage.n().name() });
      bool = a.d.a(localChannelPage, MediaState.NOT_STARTED) | bool;
    }
    label98:
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
 * Qualified Name:     ach.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */