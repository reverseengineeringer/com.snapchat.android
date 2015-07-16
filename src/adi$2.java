import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.List;

final class adi$2
  implements aej.a
{
  adi$2(adi paramadi) {}
  
  public final void a(@chc List<ChannelPage> paramList)
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
        localChannelPage.k().name();
        bool1 = bool2 | a.d.b(localChannelPage, MediaState.NOT_STARTED);
      }
      bool2 = bool1;
      if (localChannelPage.l().isError())
      {
        localChannelPage.l().name();
        bool2 = bool1 | a.d.c(localChannelPage, MediaState.NOT_STARTED);
      }
      if (!localChannelPage.m().isError()) {
        break label167;
      }
      localChannelPage.m().name();
    }
    label167:
    for (boolean bool1 = a.d.d(localChannelPage, MediaState.NOT_STARTED) | bool2;; bool1 = bool2)
    {
      bool2 = bool1;
      break;
      if (bool2) {
        a.c.c();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     adi.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */