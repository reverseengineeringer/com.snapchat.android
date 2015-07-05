import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.List;

final class acg$2
  implements adj.b
{
  acg$2(acg paramacg) {}
  
  @avl
  public final void a(@cgb List<DSnapPage> paramList)
  {
    paramList = paramList.iterator();
    boolean bool = false;
    if (paramList.hasNext())
    {
      DSnapPage localDSnapPage = (DSnapPage)paramList.next();
      if ((l != MediaState.SUCCESS) || (localDSnapPage.b() == null) || (a.c.e(localDSnapPage.b()))) {
        break label112;
      }
      Timber.e("EditionMediaLoader", "Resetting media state for %s because it is not in the cache %s", new Object[] { localDSnapPage });
      bool |= a.b.a(localDSnapPage, MediaState.NOT_STARTED);
    }
    label112:
    for (;;)
    {
      break;
      if (bool) {
        a.a.b();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     acg.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */