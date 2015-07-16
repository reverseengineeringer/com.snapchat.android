import android.os.SystemClock;
import com.snapchat.android.util.cache.CacheType;
import com.snapchat.android.util.cache.DiscoverShareCache;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class axo
{
  public static final axn CHAT_MEDIA_IMAGE_CACHE;
  public static final int DAY_IN_MINUTES = 1440;
  public static final axn DISCOVER_SHARE;
  public static final axn DSNAP_MEDIA_CACHE = new axn(CacheType.MY_MEDIA, 1440L);
  public static final axn FONT_CACHE = new axs(CacheType.FONTS, 10);
  public static final axn GEOFILTER_CACHE;
  public static final axn GEOFILTER_METADATA_CACHE;
  private static final int MAX_CACHED_FONTS = 10;
  private static final int MAX_CACHED_GEOFITLER_METADATA = 20;
  public static final int MONTH_IN_MINUTES = 40000;
  public static final axn MY_SNAP_IMAGE_CACHE;
  public static final axn MY_SNAP_VIDEO_CACHE;
  public static final axn MY_STORY_SNAP_THUMBNAIL_CACHE = new axn(CacheType.MY_STORY_THUMBNAIL, 1440L);
  public static final axn PROFILE_IMAGE_CACHE;
  public static final axn SAVE_STORY_TO_GALLERY_IMAGE_CACHE;
  public static final axn SNAP_RECEIVED_IMAGE_CACHE;
  public static final axn SNAP_RECEIVED_VIDEO_CACHE;
  public static final axn STORY_RECEIVED_IMAGE_CACHE;
  public static final axn STORY_RECEIVED_VIDEO_CACHE;
  public static final axn STORY_SNAP_RECEIVED_THUMBNAIL_CACHE = new axn(CacheType.STORIES_RECEIVED_THUMBNAIL, 1440L);
  public static final int THREE_DAYS_IN_MINUTES = 4320;
  public static final axn UNENCRYPTED_VIDEO_CACHE;
  public static final String UNZIPPED_BITMAP_SUFFIX = "-unzippedbitmap";
  
  static
  {
    STORY_RECEIVED_IMAGE_CACHE = new axn(CacheType.STORIES_RECEIVED_IMAGE, 1440L);
    STORY_RECEIVED_VIDEO_CACHE = new axn(CacheType.STORIES_RECEIVED_VIDEO, 1440L);
    DISCOVER_SHARE = new DiscoverShareCache(CacheType.DISCOVER_SHARE);
    SNAP_RECEIVED_IMAGE_CACHE = new axn(CacheType.SNAPS_RECEIVED_IMAGE, 40000L);
    SNAP_RECEIVED_VIDEO_CACHE = new axn(CacheType.SNAPS_RECEIVED_VIDEO, 40000L);
    MY_SNAP_IMAGE_CACHE = new axn(CacheType.SNAPS_TO_SEND_IMAGE, 1440L);
    MY_SNAP_VIDEO_CACHE = new axn(CacheType.SNAPS_TO_SEND_VIDEO, 1440L);
    CHAT_MEDIA_IMAGE_CACHE = new axn(CacheType.CHAT_MEDIA_RECEIVED_IMAGE, 1440L);
    PROFILE_IMAGE_CACHE = new axn(CacheType.PROFILE_IMAGE, 40000L);
    UNENCRYPTED_VIDEO_CACHE = new axn(CacheType.UNENCRYPTED_VIDEOS, 1440L);
    SAVE_STORY_TO_GALLERY_IMAGE_CACHE = new axn(CacheType.SAVE_STORY_TO_GALLERY_IMAGES, 1440L);
    GEOFILTER_CACHE = new axn(CacheType.GEOFILTERS_MEDIA, 4320L);
    GEOFILTER_METADATA_CACHE = new axs(CacheType.GEOFILTERS_METADATA, 20);
  }
  
  public static void a()
  {
    Thread local1 = new Thread()
    {
      public final void run()
      {
        axo.MY_STORY_SNAP_THUMBNAIL_CACHE.e();
        axo.STORY_SNAP_RECEIVED_THUMBNAIL_CACHE.e();
        axo.DSNAP_MEDIA_CACHE.e();
        axo.STORY_RECEIVED_IMAGE_CACHE.e();
        axo.STORY_RECEIVED_VIDEO_CACHE.e();
        axo.SNAP_RECEIVED_IMAGE_CACHE.e();
        axo.SNAP_RECEIVED_VIDEO_CACHE.e();
        axo.CHAT_MEDIA_IMAGE_CACHE.e();
        axo.UNENCRYPTED_VIDEO_CACHE.e();
        axo.SAVE_STORY_TO_GALLERY_IMAGE_CACHE.e();
        axo.GEOFILTER_CACHE.e();
        axo.DISCOVER_SHARE.e();
        amCache.a(true);
        axo.MY_SNAP_IMAGE_CACHE.e();
        axo.MY_SNAP_VIDEO_CACHE.e();
        ayv localayv = new ayv();
        azf localazf = azh.CHAT_MEDIA_KEYS_AND_IVS;
        Object localObject = mSlightlySecurePreferences.a(localazf);
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
            ays localays = (ays)localIterator.next();
            if (SystemClock.elapsedRealtime() - mTimestamp > 86400000L) {}
            for (int i = 1;; i = 0)
            {
              if (i == 0) {
                break label206;
              }
              localIterator.remove();
              break label140;
              localObject = localayv.a((String)localObject);
              break;
            }
          }
          label208:
          mPrefKeyToMapMap.put(localazf, localObject);
          localayv.a(localazf, (Map)localObject);
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
        axo.MY_STORY_SNAP_THUMBNAIL_CACHE.b();
        axo.STORY_SNAP_RECEIVED_THUMBNAIL_CACHE.b();
        axo.DSNAP_MEDIA_CACHE.b();
        axo.STORY_RECEIVED_IMAGE_CACHE.b();
        axo.STORY_RECEIVED_VIDEO_CACHE.b();
        axo.SNAP_RECEIVED_IMAGE_CACHE.b();
        axo.SNAP_RECEIVED_VIDEO_CACHE.b();
        axo.CHAT_MEDIA_IMAGE_CACHE.b();
        axo.UNENCRYPTED_VIDEO_CACHE.b();
        axo.SAVE_STORY_TO_GALLERY_IMAGE_CACHE.b();
        axo.GEOFILTER_CACHE.b();
        axo.PROFILE_IMAGE_CACHE.b();
        axo.DISCOVER_SHARE.b();
        amCache.b();
        axo.MY_SNAP_VIDEO_CACHE.b();
        axo.MY_SNAP_IMAGE_CACHE.b();
      }
    };
    local2.setName("Cache clearAll() thread");
    local2.start();
  }
}

/* Location:
 * Qualified Name:     axo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */