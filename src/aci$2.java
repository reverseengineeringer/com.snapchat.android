import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.List;

final class aci$2
  implements adj.a
{
  aci$2(aci paramaci) {}
  
  public final void a(@cgb List<ChannelPage> paramList)
  {
    paramList = paramList.iterator();
    boolean bool2 = false;
    ChannelPage localChannelPage;
    if (paramList.hasNext())
    {
      localChannelPage = (ChannelPage)paramList.next();
      bool1 = bool2;
      if (localChannelPage.k().isError())
      {
        Timber.c("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Resetting state for filled icon for %s because it was in error state %s", new Object[] { localChannelPage, localChannelPage.k().name() });
        bool1 = bool2 | a.d.b(localChannelPage, MediaState.NOT_STARTED);
      }
      bool2 = bool1;
      if (localChannelPage.l().isError())
      {
        Timber.c("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Resetting state for inverted icon for %s because it was in error state %s", new Object[] { localChannelPage, localChannelPage.l().name() });
        bool2 = bool1 | a.d.c(localChannelPage, MediaState.NOT_STARTED);
      }
      if (!localChannelPage.m().isError()) {
        break label221;
      }
      Timber.a("PublisherIconMediaLoader", "BRAND-ICON: Resetting state for loading icon for %s because it was in error state %s", new Object[] { localChannelPage, localChannelPage.m().name() });
    }
    label221:
    for (boolean bool1 = a.d.d(localChannelPage, MediaState.NOT_STARTED) | bool2;; bool1 = bool2)
    {
      bool2 = bool1;
      break;
      if (bool2) {
        a.c.b();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     aci.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */