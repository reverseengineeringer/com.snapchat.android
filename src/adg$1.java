import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.List;

final class adg$1
  implements aej.b
{
  adg$1(adg paramadg) {}
  
  @awj
  public final void a(@chc List<DSnapPage> paramList)
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
        m.name();
        bool2 = bool1 | a.b.b(localDSnapPage, MediaState.NOT_STARTED);
      }
      if (!l.isError()) {
        break label125;
      }
      l.name();
    }
    label125:
    for (bool1 = a.b.a(localDSnapPage, MediaState.NOT_STARTED) | bool2;; bool1 = bool2)
    {
      break;
      if (bool1) {
        a.a.c();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     adg.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */