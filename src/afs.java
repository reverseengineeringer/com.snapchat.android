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

public final class afs
{
  public final afr a;
  public final Map<Integer, String> b = new HashMap(1);
  public BrightcoveTextureVideoView c;
  public afq d;
  public bky e;
  public boolean f = false;
  public int g = 0;
  protected MediaPlayer.OnCompletionListener h = new MediaPlayer.OnCompletionListener()
  {
    public final void onCompletion(MediaPlayer paramAnonymousMediaPlayer)
    {
      paramAnonymousMediaPlayer = afs.this;
      g += 1;
      paramAnonymousMediaPlayer = d;
      if (paramAnonymousMediaPlayer != null) {
        paramAnonymousMediaPlayer.p_();
      }
    }
  };
  protected MediaPlayer.OnPreparedListener i = new MediaPlayer.OnPreparedListener()
  {
    public final void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
    {
      g = 0;
      paramAnonymousMediaPlayer = d;
      if (paramAnonymousMediaPlayer != null) {
        paramAnonymousMediaPlayer.b();
      }
    }
  };
  private final aft j;
  private int k = 0;
  
  public afs()
  {
    this(new aft(), new afr());
  }
  
  private afs(aft paramaft, afr paramafr)
  {
    j = paramaft;
    a = paramafr;
  }
  
  public final void a()
  {
    Iterator localIterator = b.keySet().iterator();
    while (localIterator.hasNext())
    {
      int m = ((Integer)localIterator.next()).intValue();
      c.getEventEmitter().off((String)b.get(Integer.valueOf(m)), m);
    }
    b.clear();
    k = 0;
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
        Object localObject3 = (bla)localIterator.next();
        aft localaft = j;
        label154:
        Object localObject2;
        if (((bla)localObject3).b() != null)
        {
          localObject1 = new VideoProperties(((bla)localObject3).b(), VideoProperties.Protocol.HLS);
          localObject2 = localObject1;
          if (((bla)localObject3).c() != null)
          {
            if (((bla)localObject3).c().size() != 0) {
              break label291;
            }
            localObject2 = localObject1;
          }
          label179:
          if (localObject2 == null) {
            break label378;
          }
          e.a();
          ((bla)localObject3).a();
          a.a.add(localObject2);
          localObject3 = c;
          if (a != VideoProperties.Protocol.HLS) {
            break label371;
          }
        }
        label291:
        label366:
        label371:
        for (Object localObject1 = DeliveryType.HLS;; localObject1 = DeliveryType.MP4)
        {
          localObject1 = new SourceCollection(new Source(b, (DeliveryType)localObject1), (DeliveryType)localObject1);
          localObject2 = new HashSet();
          ((Set)localObject2).add(localObject1);
          ((BrightcoveTextureVideoView)localObject3).add(new Video(localHashMap, (Set)localObject2));
          break;
          localObject1 = null;
          break label154;
          localObject2 = localObject1;
          if (a.a() == VideoStreamingConfiguration.StreamingMode.HLS) {
            break label179;
          }
          if (a.a() != VideoStreamingConfiguration.StreamingMode.MP4) {
            if (Build.VERSION.SDK_INT < a.b.a("STREAMING", "MINIMUM_VERSION_SUPPORTING_HLS", 19)) {
              break label366;
            }
          }
          for (int m = 1;; m = 0)
          {
            localObject2 = localObject1;
            if (m != 0) {
              break;
            }
            localObject2 = localaft.a(((bla)localObject3).c());
            break;
          }
        }
        label378:
        e.a();
        ((bla)localObject3).a();
      }
      c.setOnPreparedListener(i);
      c.setOnCompletionListener(h);
      if (f) {
        c.start();
      }
    }
  }
}

/* Location:
 * Qualified Name:     afs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */