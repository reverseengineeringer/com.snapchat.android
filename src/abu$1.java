import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.List;

final class abu$1
  implements adj.b
{
  abu$1(abu paramabu) {}
  
  public final void a(@cgb List<DSnapPage> paramList)
  {
    paramList = paramList.iterator();
    boolean bool = false;
    while (paramList.hasNext())
    {
      localObject = (DSnapPage)paramList.next();
      DSnapPanel localDSnapPanel = ((DSnapPage)localObject).e();
      if ((localDSnapPanel != null) && (g == DSnapPanel.MediaType.REMOTE_VIDEO)) {
        if (g.equals(this$0.mEditionId))
        {
          bool = this$0.mMediaStateTracker.a(localDSnapPanel, MediaState.FETCHING_MEDIA) | bool;
        }
        else
        {
          this$0.mVideoCatalog.a(b, null);
          bool = this$0.mMediaStateTracker.a(localDSnapPanel, MediaState.NOT_STARTED) | bool;
        }
      }
    }
    if (bool) {
      this$0.mDiscoverRepository.b();
    }
    paramList = this$0;
    Object localObject = new abv(mEditionId);
    ((abv)localObject).a(bjw.class, paramList);
    ((abv)localObject).f();
  }
}

/* Location:
 * Qualified Name:     abu.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */