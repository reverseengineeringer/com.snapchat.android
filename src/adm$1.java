import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.List;

final class adm$1
  implements aej.b
{
  adm$1(adm paramadm) {}
  
  public final void a(@chc List<DSnapPage> paramList)
  {
    paramList = paramList.iterator();
    boolean bool = false;
    if (paramList.hasNext())
    {
      DSnapPage localDSnapPage = (DSnapPage)paramList.next();
      if (!a.c.a(localDSnapPage)) {
        break label79;
      }
      bool = a.b.b(localDSnapPage, MediaState.RESOLVE_NEEDED) | bool;
    }
    label79:
    for (;;)
    {
      break;
      if (bool) {
        a.a.c();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     adm.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */