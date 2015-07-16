import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.List;

final class adh$1
  implements aej.a
{
  adh$1(adh paramadh) {}
  
  public final void a(@chc List<ChannelPage> paramList)
  {
    paramList = paramList.iterator();
    boolean bool = false;
    if (paramList.hasNext())
    {
      ChannelPage localChannelPage = (ChannelPage)paramList.next();
      if ((localChannelPage.n() != MediaState.SUCCESS) || (a.b.e(localChannelPage.o()))) {
        break label90;
      }
      bool |= a.d.a(localChannelPage, MediaState.NOT_STARTED);
    }
    label90:
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
 * Qualified Name:     adh.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */