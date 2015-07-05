import android.os.SystemClock;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

final class awq$1
  extends Thread
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
}

/* Location:
 * Qualified Name:     awq.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */