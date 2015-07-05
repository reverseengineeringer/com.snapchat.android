import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class abu$2
  implements adj.b
{
  abu$2(abu paramabu) {}
  
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
        if ((localObject != null) && (g == DSnapPanel.MediaType.REMOTE_VIDEO) && (this$0.mMediaStateTracker.a((DSnapPanel)localObject) == MediaState.FETCHING_MEDIA))
        {
          String str = b;
          if (this$0.mTempVideoCatalog.containsKey(str))
          {
            bjx localbjx = (bjx)this$0.mTempVideoCatalog.get(str);
            Timber.c("FetchVideoCatalogOperation", "DISCOVER-MEDIA: Successfully loaded metadata for %s, with response %s", new Object[] { localObject, localbjx });
            this$0.mVideoCatalog.a(str, localbjx);
            bool = this$0.mMediaStateTracker.a((DSnapPanel)localObject, MediaState.SUCCESS) | bool;
          }
          else
          {
            Timber.c("FetchVideoCatalogOperation", "DISCOVER-MEDIA: Failed load video URL for %s, it was not in the server response", new Object[] { localObject });
            bool = this$0.mMediaStateTracker.a((DSnapPanel)localObject, MediaState.GENERIC_ERROR) | bool;
          }
        }
      }
    }
    if (bool) {
      this$0.mDiscoverRepository.b();
    }
  }
}

/* Location:
 * Qualified Name:     abu.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */