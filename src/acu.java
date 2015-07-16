import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.model.MediaState;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class acu
  implements ui.b<bkx>
{
  private final String TAG = "FetchVideoCatalogOperation";
  final aej mDiscoverRepository;
  final String mEditionId;
  final aed mMediaStateTracker;
  protected final aej.b mSetRemoteVideoToStartedListener = new aej.b()
  {
    public final void a(@chc List<DSnapPage> paramAnonymousList)
    {
      paramAnonymousList = paramAnonymousList.iterator();
      boolean bool = false;
      while (paramAnonymousList.hasNext())
      {
        localObject = (DSnapPage)paramAnonymousList.next();
        DSnapPanel localDSnapPanel = ((DSnapPage)localObject).e();
        if ((localDSnapPanel != null) && (g == DSnapPanel.MediaType.REMOTE_VIDEO)) {
          if (g.equals(mEditionId))
          {
            bool = mMediaStateTracker.a(localDSnapPanel, MediaState.FETCHING_MEDIA) | bool;
          }
          else
          {
            mVideoCatalog.a(b, null);
            bool = mMediaStateTracker.a(localDSnapPanel, MediaState.NOT_STARTED) | bool;
          }
        }
      }
      if (bool) {
        mDiscoverRepository.c();
      }
      paramAnonymousList = acu.this;
      Object localObject = new acv(mEditionId);
      ((acv)localObject).registerCallback(bkx.class, paramAnonymousList);
      ((acv)localObject).execute();
    }
  };
  final Map<String, bky> mTempVideoCatalog;
  protected final aej.b mUpdatePanelStateWithNetworkError = new aej.b()
  {
    public final void a(@chc List<DSnapPage> paramAnonymousList)
    {
      paramAnonymousList = paramAnonymousList.iterator();
      boolean bool = false;
      while (paramAnonymousList.hasNext())
      {
        Object localObject = (DSnapPage)paramAnonymousList.next();
        if (g.equals(mEditionId))
        {
          localObject = ((DSnapPage)localObject).e();
          if ((localObject != null) && (g == DSnapPanel.MediaType.REMOTE_VIDEO) && (mMediaStateTracker.a((DSnapPanel)localObject) == MediaState.FETCHING_MEDIA)) {
            bool = mMediaStateTracker.a((DSnapPanel)localObject, MediaState.NETWORK_ERROR) | bool;
          }
        }
      }
      if (bool) {
        mDiscoverRepository.c();
      }
    }
  };
  protected final aej.b mUpdateRemoteUrlInPanelListener = new aej.b()
  {
    public final void a(@chc List<DSnapPage> paramAnonymousList)
    {
      paramAnonymousList = paramAnonymousList.iterator();
      boolean bool = false;
      while (paramAnonymousList.hasNext())
      {
        Object localObject = (DSnapPage)paramAnonymousList.next();
        if (g.equals(mEditionId))
        {
          localObject = ((DSnapPage)localObject).e();
          if ((localObject != null) && (g == DSnapPanel.MediaType.REMOTE_VIDEO) && (mMediaStateTracker.a((DSnapPanel)localObject) == MediaState.FETCHING_MEDIA))
          {
            String str = b;
            if (mTempVideoCatalog.containsKey(str))
            {
              bky localbky = (bky)mTempVideoCatalog.get(str);
              mVideoCatalog.a(str, localbky);
              bool = mMediaStateTracker.a((DSnapPanel)localObject, MediaState.SUCCESS) | bool;
            }
            else
            {
              bool = mMediaStateTracker.a((DSnapPanel)localObject, MediaState.GENERIC_ERROR) | bool;
            }
          }
        }
      }
      if (bool) {
        mDiscoverRepository.c();
      }
    }
  };
  final aee mVideoCatalog;
  
  public acu(@chc String paramString)
  {
    this(paramString, aej.a(), aed.a(), aee.a(), new HashMap());
  }
  
  private acu(@chc String paramString, aej paramaej, aed paramaed, aee paramaee, Map<String, bky> paramMap)
  {
    mDiscoverRepository = paramaej;
    mMediaStateTracker = paramaed;
    mVideoCatalog = paramaee;
    mEditionId = paramString;
    mTempVideoCatalog = paramMap;
  }
  
  public final void a()
  {
    mMediaStateTracker.b.clear();
    mVideoCatalog.a.clear();
    mDiscoverRepository.a(new aej.b[] { mSetRemoteVideoToStartedListener });
  }
}

/* Location:
 * Qualified Name:     acu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */