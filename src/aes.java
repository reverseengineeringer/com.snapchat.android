import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Build.VERSION;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.SourceCollection;
import com.brightcove.player.model.Video;
import com.brightcove.player.view.BrightcoveTextureVideoView;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.ui.media.VideoProperties;
import com.snapchat.android.discover.ui.media.VideoProperties.Protocol;
import com.snapchat.android.discover.ui.media.VideoStreamingConfiguration;
import com.snapchat.android.discover.ui.media.VideoStreamingConfiguration.StreamingMode;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class aes
{
  public final aer a;
  public final Map<Integer, String> b = new HashMap(1);
  public BrightcoveTextureVideoView c;
  public aeq d;
  public bjx e;
  public boolean f = false;
  protected MediaPlayer.OnCompletionListener g = new MediaPlayer.OnCompletionListener()
  {
    public final void onCompletion(MediaPlayer paramAnonymousMediaPlayer)
    {
      paramAnonymousMediaPlayer = d;
      if (paramAnonymousMediaPlayer != null) {
        paramAnonymousMediaPlayer.r_();
      }
    }
  };
  protected MediaPlayer.OnPreparedListener h = new MediaPlayer.OnPreparedListener()
  {
    public final void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
    {
      paramAnonymousMediaPlayer = d;
      if (paramAnonymousMediaPlayer != null) {
        paramAnonymousMediaPlayer.b();
      }
    }
  };
  private final aet i;
  private int j = 0;
  
  public aes()
  {
    this(new aet(), new aer());
  }
  
  private aes(aet paramaet, aer paramaer)
  {
    i = paramaet;
    a = paramaer;
  }
  
  public final void a()
  {
    Iterator localIterator = b.keySet().iterator();
    while (localIterator.hasNext())
    {
      int k = ((Integer)localIterator.next()).intValue();
      c.getEventEmitter().off((String)b.get(Integer.valueOf(k)), k);
    }
    b.clear();
    j = 0;
    c.stopPlayback();
    f = false;
  }
  
  public final void b()
  {
    if ((c != null) && (e != null))
    {
      c.clear();
      a.b();
      HashMap localHashMap = new HashMap();
      localHashMap.put("pubId", e.b());
      localHashMap.put("id", e.a());
      localHashMap.put("name", e.c());
      Iterator localIterator = e.d().iterator();
      while (localIterator.hasNext())
      {
        Object localObject3 = (bjz)localIterator.next();
        aet localaet = i;
        label154:
        Object localObject2;
        if (((bjz)localObject3).b() != null)
        {
          localObject1 = new VideoProperties(((bjz)localObject3).b(), VideoProperties.Protocol.HLS);
          localObject2 = localObject1;
          if (((bjz)localObject3).c() != null)
          {
            if (((bjz)localObject3).c().size() != 0) {
              break label310;
            }
            localObject2 = localObject1;
          }
          label179:
          if (localObject2 == null) {
            break label438;
          }
          Timber.c("RemoteVideoViewController", "Selected rendition for id:%s, type:%s: %s", new Object[] { e.a(), ((bjz)localObject3).a(), localObject2 });
          a.a.add(localObject2);
          localObject3 = c;
          if (a != VideoProperties.Protocol.HLS) {
            break label431;
          }
        }
        label310:
        label405:
        label431:
        for (Object localObject1 = DeliveryType.HLS;; localObject1 = DeliveryType.MP4)
        {
          localObject1 = new SourceCollection(new Source(b, (DeliveryType)localObject1), (DeliveryType)localObject1);
          localObject2 = new HashSet();
          ((Set)localObject2).add(localObject1);
          ((BrightcoveTextureVideoView)localObject3).add(new Video(localHashMap, (Set)localObject2));
          break;
          localObject1 = null;
          break label154;
          if (a.a() == VideoStreamingConfiguration.StreamingMode.HLS)
          {
            Timber.c("VideoRenditionSelector", "Selecting HLS url because configuration says so.", new Object[0]);
            localObject2 = localObject1;
            break label179;
          }
          if (a.a() != VideoStreamingConfiguration.StreamingMode.MP4)
          {
            if (Build.VERSION.SDK_INT >= a.b.a("STREAMING", "MINIMUM_VERSION_SUPPORTING_HLS", 19)) {}
            for (int k = 1;; k = 0)
            {
              if (k == 0) {
                break label405;
              }
              Timber.c("VideoRenditionSelector", "Selecting HLS url based on client decision.", new Object[0]);
              localObject2 = localObject1;
              break;
            }
          }
          Timber.c("VideoRenditionSelector", "Selecting best MP4 url because configuration says so.", new Object[0]);
          localObject2 = localaet.a(((bjz)localObject3).c());
          break label179;
        }
        label438:
        Timber.f("RemoteVideoViewController", "Failed to select rendition for id:%s, type:%s", new Object[] { e.a(), ((bjz)localObject3).a() });
      }
      if (f) {
        c.start();
      }
    }
  }
}

/* Location:
 * Qualified Name:     aes
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */