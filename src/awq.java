import android.os.SystemClock;
import com.snapchat.android.util.cache.CacheType;
import com.snapchat.android.util.cache.DiscoverShareCache;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class awq
{
  public static final awp CHAT_MEDIA_IMAGE_CACHE;
  public static final int DAY_IN_MINUTES = 1440;
  public static final awp DISCOVER_SHARE;
  public static final awp DSNAP_MEDIA_CACHE = new awp(CacheType.MY_MEDIA, 1440L);
  public static final awp FONT_CACHE = new awu(CacheType.FONTS, 10);
  public static final awp GEOFILTER_CACHE;
  public static final awp GEOFILTER_METADATA_CACHE;
  private static final int MAX_CACHED_FONTS = 10;
  private static final int MAX_CACHED_GEOFITLER_METADATA = 20;
  public static final int MONTH_IN_MINUTES = 40000;
  public static final awp MY_SNAP_IMAGE_CACHE;
  public static final awp MY_SNAP_VIDEO_CACHE;
  public static final awp MY_STORY_SNAP_THUMBNAIL_CACHE = new awp(CacheType.MY_STORY_THUMBNAIL, 1440L);
  public static final awp PROFILE_IMAGE_CACHE;
  public static final awp SAVE_STORY_TO_GALLERY_IMAGE_CACHE;
  public static final awp SNAP_RECEIVED_IMAGE_CACHE;
  public static final awp SNAP_RECEIVED_VIDEO_CACHE;
  public static final awp STORY_RECEIVED_IMAGE_CACHE;
  public static final awp STORY_RECEIVED_VIDEO_CACHE;
  public static final awp STORY_SNAP_RECEIVED_THUMBNAIL_CACHE = new awp(CacheType.STORIES_RECEIVED_THUMBNAIL, 1440L);
  public static final int THREE_DAYS_IN_MINUTES = 4320;
  public static final awp UNENCRYPTED_VIDEO_CACHE;
  public static final String UNZIPPED_BITMAP_SUFFIX = "-unzippedbitmap";
  
  static
  {
    STORY_RECEIVED_IMAGE_CACHE = new awp(CacheType.STORIES_RECEIVED_IMAGE, 1440L);
    STORY_RECEIVED_VIDEO_CACHE = new awp(CacheType.STORIES_RECEIVED_VIDEO, 1440L);
    DISCOVER_SHARE = new DiscoverShareCache(CacheType.DISCOVER_SHARE);
    SNAP_RECEIVED_IMAGE_CACHE = new awp(CacheType.SNAPS_RECEIVED_IMAGE, 40000L);
    SNAP_RECEIVED_VIDEO_CACHE = new awp(CacheType.SNAPS_RECEIVED_VIDEO, 40000L);
    MY_SNAP_IMAGE_CACHE = new awp(CacheType.SNAPS_TO_SEND_IMAGE, 1440L);
    MY_SNAP_VIDEO_CACHE = new awp(CacheType.SNAPS_TO_SEND_VIDEO, 1440L);
    CHAT_MEDIA_IMAGE_CACHE = new awp(CacheType.CHAT_MEDIA_RECEIVED_IMAGE, 1440L);
    PROFILE_IMAGE_CACHE = new awp(CacheType.PROFILE_IMAGE, 40000L);
    UNENCRYPTED_VIDEO_CACHE = new awp(CacheType.UNENCRYPTED_VIDEOS, 1440L);
    SAVE_STORY_TO_GALLERY_IMAGE_CACHE = new awp(CacheType.SAVE_STORY_TO_GALLERY_IMAGES, 1440L);
    GEOFILTER_CACHE = new awp(CacheType.GEOFILTERS_MEDIA, 4320L);
    GEOFILTER_METADATA_CACHE = new awu(CacheType.GEOFILTERS_METADATA, 20);
  }
  
  public static void a()
  {
    Thread local1 = new Thread()
    {
      public final void run()
      {
        awq.MY_STORY_SNAP_THUMBNAIL_CACHE.e();
        awq.STORY_SNAP_RECEIVED_THUMBNAIL_CACHE.e();
        awq.DSNAP_MEDIA_CACHE.e();
        awq.STORY_RECEIVED_IMAGE_CACHE.e();
        awq.STORY_RECEIVED_VIDEO_CACHE.e();
        awq.SNAP_RECEIVED_IMAGE_CACHE.e();
        awq.SNAP_RECEIVED_VIDEO_CACHE.e();
        awq.CHAT_MEDIA_IMAGE_CACHE.e();
        awq.UNENCRYPTED_VIDEO_CACHE.e();
        awq.SAVE_STORY_TO_GALLERY_IMAGE_CACHE.e();
        awq.GEOFILTER_CACHE.e();
        awq.DISCOVER_SHARE.e();
        amCache.a(true);
        awq.MY_SNAP_IMAGE_CACHE.e();
        awq.MY_SNAP_VIDEO_CACHE.e();
        axx localaxx = new axx();
        ayh localayh = ayj.CHAT_MEDIA_KEYS_AND_IVS;
        Object localObject = mSlightlySecurePreferences.a(localayh);
        Iterator localIterator;
        if (localObject == null)
        {
          localObject = null;
          if (localObject != null) {
            localIterator = ((Map)localObject).values().iterator();
          }
        }
        else
        {
          label140:
          label206:
          for (;;)
          {
            if (!localIterator.hasNext()) {
              break label208;
            }
            axu localaxu = (axu)localIterator.next();
            if (SystemClock.elapsedRealtime() - mTimestamp > 86400000L) {}
            for (int i = 1;; i = 0)
            {
              if (i == 0) {
                break label206;
              }
              localIterator.remove();
              break label140;
              localObject = localaxx.a((String)localObject);
              break;
            }
          }
          label208:
          mPrefKeyToMapMap.put(localayh, localObject);
          localaxx.a(localayh, (Map)localObject);
        }
      }
    };
    local1.setName("Cache sanitizeAll() thread");
    local1.start();
  }
  
  public static void b()
  {
    Thread local2 = new Thread()
    {
      public final void run()
      {
        awq.MY_STORY_SNAP_THUMBNAIL_CACHE.b();
        awq.STORY_SNAP_RECEIVED_THUMBNAIL_CACHE.b();
        awq.DSNAP_MEDIA_CACHE.b();
        awq.STORY_RECEIVED_IMAGE_CACHE.b();
        awq.STORY_RECEIVED_VIDEO_CACHE.b();
        awq.SNAP_RECEIVED_IMAGE_CACHE.b();
        awq.SNAP_RECEIVED_VIDEO_CACHE.b();
        awq.CHAT_MEDIA_IMAGE_CACHE.b();
        awq.UNENCRYPTED_VIDEO_CACHE.b();
        awq.SAVE_STORY_TO_GALLERY_IMAGE_CACHE.b();
        awq.GEOFILTER_CACHE.b();
        awq.PROFILE_IMAGE_CACHE.b();
        awq.DISCOVER_SHARE.b();
        amCache.b();
        awq.MY_SNAP_VIDEO_CACHE.b();
        awq.MY_SNAP_IMAGE_CACHE.b();
      }
    };
    local2.setName("Cache clearAll() thread");
    local2.start();
  }
}

/* Location:
 * Qualified Name:     awq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */