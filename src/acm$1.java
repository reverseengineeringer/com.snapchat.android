import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.List;

final class acm$1
  implements adj.b
{
  acm$1(acm paramacm) {}
  
  public final void a(@cgb List<DSnapPage> paramList)
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
        a.a.b();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     acm.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */