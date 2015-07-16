import android.os.SystemClock;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

final class axo$1
  extends Thread
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
}

/* Location:
 * Qualified Name:     axo.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */