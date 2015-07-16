import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.List;

final class adi$1
  implements aej.a
{
  adi$1(adi paramadi) {}
  
  public final void a(@chc List<ChannelPage> paramList)
  {
    paramList = paramList.iterator();
    boolean bool2 = false;
    ChannelPage localChannelPage;
    if (paramList.hasNext())
    {
      localChannelPage = (ChannelPage)paramList.next();
      String str = Integer.toString(localChannelPage.a().hashCode());
      bool1 = bool2;
      if (localChannelPage.k() == MediaState.SUCCESS)
      {
        bool1 = bool2;
        if (!a.b.e(str)) {
          bool1 = bool2 | a.d.b(localChannelPage, MediaState.NOT_STARTED);
        }
      }
      str = Integer.toString(localChannelPage.b().hashCode());
      bool2 = bool1;
      if (localChannelPage.l() == MediaState.SUCCESS)
      {
        bool2 = bool1;
        if (!a.b.e(str)) {
          bool2 = bool1 | a.d.c(localChannelPage, MediaState.NOT_STARTED);
        }
      }
      if ((localChannelPage.m() != MediaState.SUCCESS) || (localChannelPage.c() == null) || (a.b.e(Integer.toString(localChannelPage.c().hashCode())))) {
        break label232;
      }
    }
    label232:
    for (boolean bool1 = bool2 | a.d.d(localChannelPage, MediaState.NOT_STARTED);; bool1 = bool2)
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
 * Qualified Name:     adi.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */