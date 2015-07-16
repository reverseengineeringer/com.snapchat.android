import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.ChannelPage.MediaType;
import com.snapchat.android.networkmanager.DownloadPriority;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

final class adi$3
  implements aej.a
{
  adi$3(adi paramadi) {}
  
  public final void a(@chc List<ChannelPage> paramList)
  {
    adi localadi = a;
    Object localObject = paramList.iterator();
    ChannelPage localChannelPage;
    boolean bool2;
    boolean bool3;
    for (boolean bool1 = false; ((Iterator)localObject).hasNext(); bool1 = localadi.a(localChannelPage, ChannelPage.MediaType.LOADING_ICON, DownloadPriority.MEDIUM) | bool1 | bool2 | bool3)
    {
      localChannelPage = (ChannelPage)((Iterator)localObject).next();
      bool2 = localadi.a(localChannelPage, ChannelPage.MediaType.FILLED_ICON, DownloadPriority.HIGH);
      bool3 = localadi.a(localChannelPage, ChannelPage.MediaType.INVERTED_ICON, DownloadPriority.HIGH);
    }
    if (bool1) {
      c.c();
    }
    localObject = new HashSet();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      localChannelPage = (ChannelPage)paramList.next();
      ((Set)localObject).add(Integer.toString(localChannelPage.a().hashCode()));
      ((Set)localObject).add(Integer.toString(localChannelPage.b().hashCode()));
      if (localChannelPage.c() != null) {
        ((Set)localObject).add(Integer.toString(localChannelPage.c().hashCode()));
      }
    }
    b.a((Set)localObject);
  }
}

/* Location:
 * Qualified Name:     adi.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */