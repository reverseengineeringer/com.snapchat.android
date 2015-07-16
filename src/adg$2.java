import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.List;

final class adg$2
  implements aej.b
{
  adg$2(adg paramadg) {}
  
  @awj
  public final void a(@chc List<DSnapPage> paramList)
  {
    paramList = paramList.iterator();
    boolean bool = false;
    if (paramList.hasNext())
    {
      DSnapPage localDSnapPage = (DSnapPage)paramList.next();
      if ((l != MediaState.SUCCESS) || (localDSnapPage.b() == null) || (a.c.e(localDSnapPage.b()))) {
        break label97;
      }
      bool |= a.b.a(localDSnapPage, MediaState.NOT_STARTED);
    }
    label97:
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
 * Qualified Name:     adg.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */