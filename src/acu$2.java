import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class acu$2
  implements aej.b
{
  acu$2(acu paramacu) {}
  
  public final void a(@chc List<DSnapPage> paramList)
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
            bky localbky = (bky)this$0.mTempVideoCatalog.get(str);
            this$0.mVideoCatalog.a(str, localbky);
            bool = this$0.mMediaStateTracker.a((DSnapPanel)localObject, MediaState.SUCCESS) | bool;
          }
          else
          {
            bool = this$0.mMediaStateTracker.a((DSnapPanel)localObject, MediaState.GENERIC_ERROR) | bool;
          }
        }
      }
    }
    if (bool) {
      this$0.mDiscoverRepository.c();
    }
  }
}

/* Location:
 * Qualified Name:     acu.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */