import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.List;

final class acg$1
  implements adj.b
{
  acg$1(acg paramacg) {}
  
  @avl
  public final void a(@cgb List<DSnapPage> paramList)
  {
    paramList = paramList.iterator();
    boolean bool1 = false;
    DSnapPage localDSnapPage;
    boolean bool2;
    if (paramList.hasNext())
    {
      localDSnapPage = (DSnapPage)paramList.next();
      bool2 = bool1;
      if (m.isError())
      {
        Timber.c("EditionMediaLoader", "Resetting placeholder state for %s because it was in error state %s", new Object[] { localDSnapPage, m.name() });
        bool2 = bool1 | a.b.b(localDSnapPage, MediaState.NOT_STARTED);
      }
      if (!l.isError()) {
        break label161;
      }
      Timber.c("EditionMediaLoader", "Resetting media state for %s because it was in error state %s", new Object[] { localDSnapPage, l.name() });
    }
    label161:
    for (bool1 = a.b.a(localDSnapPage, MediaState.NOT_STARTED) | bool2;; bool1 = bool2)
    {
      break;
      if (bool1) {
        a.a.b();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     acg.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */