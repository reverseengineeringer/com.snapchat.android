import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.List;

final class abu$3
  implements adj.b
{
  abu$3(abu paramabu) {}
  
  public final void a(@cgb List<DSnapPage> paramList)
  {
    paramList = paramList.iterator();
    boolean bool = false;
    while (paramList.hasNext())
    {
      Object localObject = (DSnapPage)paramList.next();
      if (g.equals(this$0.mEditionId))
      {
        localObject = ((DSnapPage)localObject).e();
        if ((localObject != null) && (g == DSnapPanel.MediaType.REMOTE_VIDEO) && (this$0.mMediaStateTracker.a((DSnapPanel)localObject) == MediaState.FETCHING_MEDIA)) {
          bool = this$0.mMediaStateTracker.a((DSnapPanel)localObject, MediaState.NETWORK_ERROR) | bool;
        }
      }
    }
    if (bool) {
      this$0.mDiscoverRepository.b();
    }
  }
}

/* Location:
 * Qualified Name:     abu.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */