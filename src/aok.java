import java.util.HashMap;
import java.util.Map;

public final class aok
{
  private static final Map<Integer, String> a = new HashMap();
  private static final Map<Integer, String> b = new HashMap();
  
  static
  {
    a.put(Integer.valueOf(1), "MEDIA_INFO_UNKNOWN");
    a.put(Integer.valueOf(700), "MEDIA_INFO_VIDEO_TRACK_LAGGING");
    a.put(Integer.valueOf(3), "MEDIA_INFO_VIDEO_RENDERING_START");
    a.put(Integer.valueOf(701), "MEDIA_INFO_BUFFERING_START");
    a.put(Integer.valueOf(702), "MEDIA_INFO_BUFFERING_END");
    a.put(Integer.valueOf(800), "MEDIA_INFO_BAD_INTERLEAVING");
    a.put(Integer.valueOf(801), "MEDIA_INFO_NOT_SEEKABLE");
    a.put(Integer.valueOf(802), "MEDIA_INFO_METADATA_UPDATE");
    a.put(Integer.valueOf(901), "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
    a.put(Integer.valueOf(902), "MEDIA_INFO_SUBTITLE_TIMED_OUT");
    b.put(Integer.valueOf(1), "MEDIA_ERROR_UNKNOWN");
    b.put(Integer.valueOf(100), "MEDIA_ERROR_SERVER_DIED");
    b.put(Integer.valueOf(200), "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK");
    b.put(Integer.valueOf(64532), "MEDIA_ERROR_IO");
    b.put(Integer.valueOf(64529), "MEDIA_ERROR_MALFORMED");
    b.put(Integer.valueOf(64526), "MEDIA_ERROR_UNSUPPORTED");
    b.put(Integer.valueOf(-110), "MEDIA_ERROR_TIMED_OUT");
  }
  
  public static String a(int paramInt)
  {
    return a(b, paramInt);
  }
  
  private static String a(Map<Integer, String> paramMap, int paramInt)
  {
    String str = (String)paramMap.get(Integer.valueOf(paramInt));
    paramMap = str;
    if (str == null) {
      paramMap = "UNKNOWN";
    }
    return paramMap;
  }
  
  public static String b(int paramInt)
  {
    return a(a, paramInt);
  }
}

/* Location:
 * Qualified Name:     aok
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */