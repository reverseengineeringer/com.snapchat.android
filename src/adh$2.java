import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.List;

final class adh$2
  implements aej.a
{
  adh$2(adh paramadh) {}
  
  public final void a(@chc List<ChannelPage> paramList)
  {
    paramList = paramList.iterator();
    boolean bool = false;
    if (paramList.hasNext())
    {
      ChannelPage localChannelPage = (ChannelPage)paramList.next();
      if (!localChannelPage.n().isError()) {
        break label81;
      }
      localChannelPage.n().name();
      bool = a.d.a(localChannelPage, MediaState.NOT_STARTED) | bool;
    }
    label81:
    for (;;)
    {
      break;
      if (bool) {
        a.c.c();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     adh.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */