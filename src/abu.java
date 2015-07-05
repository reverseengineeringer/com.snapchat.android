import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.model.MediaState;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class abu
  implements ts.b<bjw>
{
  private final String TAG = "FetchVideoCatalogOperation";
  final adj mDiscoverRepository;
  final String mEditionId;
  final add mMediaStateTracker;
  protected final adj.b mSetRemoteVideoToStartedListener = new adj.b()
  {
    public final void a(@cgb List<DSnapPage> paramAnonymousList)
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
        mDiscoverRepository.b();
      }
      paramAnonymousList = abu.this;
      Object localObject = new abv(mEditionId);
      ((abv)localObject).a(bjw.class, paramAnonymousList);
      ((abv)localObject).f();
    }
  };
  final Map<String, bjx> mTempVideoCatalog;
  protected final adj.b mUpdatePanelStateWithNetworkError = new adj.b()
  {
    public final void a(@cgb List<DSnapPage> paramAnonymousList)
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
        mDiscoverRepository.b();
      }
    }
  };
  protected final adj.b mUpdateRemoteUrlInPanelListener = new adj.b()
  {
    public final void a(@cgb List<DSnapPage> paramAnonymousList)
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
              bjx localbjx = (bjx)mTempVideoCatalog.get(str);
              Timber.c("FetchVideoCatalogOperation", "DISCOVER-MEDIA: Successfully loaded metadata for %s, with response %s", new Object[] { localObject, localbjx });
              mVideoCatalog.a(str, localbjx);
              bool = mMediaStateTracker.a((DSnapPanel)localObject, MediaState.SUCCESS) | bool;
            }
            else
            {
              Timber.c("FetchVideoCatalogOperation", "DISCOVER-MEDIA: Failed load video URL for %s, it was not in the server response", new Object[] { localObject });
              bool = mMediaStateTracker.a((DSnapPanel)localObject, MediaState.GENERIC_ERROR) | bool;
            }
          }
        }
      }
      if (bool) {
        mDiscoverRepository.b();
      }
    }
  };
  final ade mVideoCatalog;
  
  public abu(@cgb String paramString)
  {
    this(paramString, adj.a(), add.a(), ade.a(), new HashMap());
  }
  
  private abu(@cgb String paramString, adj paramadj, add paramadd, ade paramade, Map<String, bjx> paramMap)
  {
    mDiscoverRepository = paramadj;
    mMediaStateTracker = paramadd;
    mVideoCatalog = paramade;
    mEditionId = paramString;
    mTempVideoCatalog = paramMap;
  }
  
  public final void a()
  {
    mMediaStateTracker.b.clear();
    mVideoCatalog.a.clear();
    mDiscoverRepository.a(new adj.b[] { mSetRemoteVideoToStartedListener });
  }
}

/* Location:
 * Qualified Name:     abu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */