import com.snapchat.android.Timber;
import com.snapchat.android.discover.ui.media.VideoProperties;
import com.snapchat.android.discover.ui.media.VideoProperties.Protocol;
import com.snapchat.android.discover.ui.media.VideoStreamingConfiguration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

public final class aet
{
  final VideoStreamingConfiguration a;
  private final ov b;
  private final aky c;
  
  public aet()
  {
    this(ov.a(), new VideoStreamingConfiguration(), aky.a());
  }
  
  private aet(ov paramov, VideoStreamingConfiguration paramVideoStreamingConfiguration, aky paramaky)
  {
    b = paramov;
    a = paramVideoStreamingConfiguration;
    c = paramaky;
  }
  
  @cgc
  final VideoProperties a(List<bjy> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList);
    Collections.sort(localArrayList, new aet.a());
    int i = 0;
    paramList = null;
    bjy localbjy;
    int j;
    label182:
    long l;
    if (i < localArrayList.size())
    {
      localbjy = (bjy)localArrayList.get(i);
      if ((localbjy.f() == null) || (!"MP4".equals(localbjy.f().toUpperCase(Locale.ENGLISH)))) {
        break label369;
      }
      localObject = localbjy;
      if (paramList != null)
      {
        j = Math.max(localbjy.b().intValue(), localbjy.c().intValue());
        int k = Math.min(localbjy.b().intValue(), localbjy.c().intValue());
        int m = Math.max(b.mMaxVideoHeight, b.mMaxVideoWidth);
        int n = Math.min(b.mMaxVideoHeight, b.mMaxVideoWidth);
        if ((j > m) || (k > n)) {
          break label275;
        }
        j = 1;
        if (j == 0) {
          break label369;
        }
        float f = a.b.a("STREAMING", "BANDWIDTH_USAGE_FACTOR", 0.7F);
        localObject = c;
        l = ((aky)localObject).a(((aky)localObject).b()).a();
        if (l == 0L) {
          break label281;
        }
        label232:
        j = (int)(f * (float)l);
        if (localbjy.a().intValue() > j) {
          break label308;
        }
        j = 1;
        label256:
        if (j == 0) {
          break label369;
        }
      }
    }
    label275:
    label281:
    label308:
    label369:
    for (Object localObject = localbjy;; localObject = paramList)
    {
      i += 1;
      paramList = (List<bjy>)localObject;
      break;
      j = 0;
      break label182;
      if (a.e())
      {
        l = 3000000L;
        break label232;
      }
      l = 600000L;
      break label232;
      j = 0;
      break label256;
      if (paramList != null)
      {
        Timber.c("VideoRenditionSelector", "Selected rendition %s", new Object[] { paramList });
        return new VideoProperties(paramList.e(), VideoProperties.Protocol.MP4, paramList.a(), paramList.d());
      }
      Timber.f("VideoRenditionSelector", "No valid MP4 rendition was found!", new Object[0]);
      return null;
    }
  }
  
  public static final class a
    implements Comparator<bjy>
  {}
}

/* Location:
 * Qualified Name:     aet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */