import com.snapchat.android.discover.ui.media.VideoProperties;
import com.snapchat.android.discover.ui.media.VideoProperties.Protocol;
import com.snapchat.android.discover.ui.media.VideoStreamingConfiguration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

public final class aft
{
  final VideoStreamingConfiguration a;
  private final pm b;
  private final alt c;
  
  public aft()
  {
    this(pm.a(), new VideoStreamingConfiguration(), alt.a());
  }
  
  private aft(pm parampm, VideoStreamingConfiguration paramVideoStreamingConfiguration, alt paramalt)
  {
    b = parampm;
    a = paramVideoStreamingConfiguration;
    c = paramalt;
  }
  
  @chd
  final VideoProperties a(List<bkz> paramList)
  {
    Object localObject2 = null;
    ArrayList localArrayList = new ArrayList(paramList);
    Collections.sort(localArrayList, new aft.a());
    int i = 0;
    paramList = null;
    bkz localbkz;
    int j;
    label185:
    long l;
    if (i < localArrayList.size())
    {
      localbkz = (bkz)localArrayList.get(i);
      if ((localbkz.f() == null) || (!"MP4".equals(localbkz.f().toUpperCase(Locale.ENGLISH)))) {
        break label352;
      }
      localObject1 = localbkz;
      if (paramList != null)
      {
        j = Math.max(localbkz.b().intValue(), localbkz.c().intValue());
        int k = Math.min(localbkz.b().intValue(), localbkz.c().intValue());
        int m = Math.max(b.mMaxVideoHeight, b.mMaxVideoWidth);
        int n = Math.min(b.mMaxVideoHeight, b.mMaxVideoWidth);
        if ((j > m) || (k > n)) {
          break label278;
        }
        j = 1;
        if (j == 0) {
          break label352;
        }
        float f = a.b.a("STREAMING", "BANDWIDTH_USAGE_FACTOR", 0.7F);
        localObject1 = c;
        l = ((alt)localObject1).a(((alt)localObject1).b()).a();
        if (l == 0L) {
          break label284;
        }
        label235:
        j = (int)(f * (float)l);
        if (localbkz.a().intValue() > j) {
          break label311;
        }
        j = 1;
        label259:
        if (j == 0) {
          break label352;
        }
      }
    }
    label278:
    label284:
    label311:
    label352:
    for (Object localObject1 = localbkz;; localObject1 = paramList)
    {
      i += 1;
      paramList = (List<bkz>)localObject1;
      break;
      j = 0;
      break label185;
      if (a.e())
      {
        l = 3000000L;
        break label235;
      }
      l = 600000L;
      break label235;
      j = 0;
      break label259;
      localObject1 = localObject2;
      if (paramList != null) {
        localObject1 = new VideoProperties(paramList.e(), VideoProperties.Protocol.MP4, paramList.a(), paramList.d());
      }
      return (VideoProperties)localObject1;
    }
  }
  
  public static final class a
    implements Comparator<bkz>
  {}
}

/* Location:
 * Qualified Name:     aft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */