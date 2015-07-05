import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import com.snapchat.android.Timber;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Mediabryo.SnapType;
import com.snapchat.android.util.cache.DiscoverShareCache;
import com.snapchat.android.util.cache.DiscoverShareCache.DiscoverShareFileType;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;

public class awv
  extends AsyncTask<aim, Void, Void>
{
  protected static final String TAG = "SaveSentSnapToCacheTask";
  private awr mDiscoverShareCacheWrapper;
  private final azo mExceptionReporter;
  
  public awv()
  {
    this(awr.a.a(), new azo());
  }
  
  private awv(@cgb awr paramawr, @cgb azo paramazo)
  {
    mDiscoverShareCacheWrapper = paramawr;
    mExceptionReporter = paramazo;
  }
  
  private boolean a(aim paramaim)
  {
    if (isCancelled()) {
      return false;
    }
    awr localawr;
    String str;
    adb localadb;
    abk localabk;
    Object localObject1;
    Bitmap localBitmap;
    try
    {
      localawr = mDiscoverShareCacheWrapper;
      str = mClientId;
      localadb = (adb)mMediaExtras;
      if (localadb == null) {
        break label584;
      }
      localabk = mCompressor;
      localObject1 = (adb)mMediaExtras;
      if ((mSnapType != Mediabryo.SnapType.DISCOVER) || (localObject1 == null)) {
        throw new IllegalArgumentException("Incorrect snap type or need extra information about the DSnap.");
      }
    }
    catch (aws paramaim)
    {
      Timber.c("SaveSentSnapToCacheTask", "External storage not available.", new Object[0]);
      return false;
      localBitmap = mRawImageBitmap;
      if (localBitmap == null) {
        if (mVideoUri == null) {
          throw new abt("Media provided has both snap and video url being null.", a, d, e, w);
        }
      }
    }
    catch (abk.a paramaim)
    {
      Timber.c("SaveSentSnapToCacheTask", "Discover blob compressing error.", new Object[0]);
      return false;
      throw new abt("Discover videos must have a thumbnail. ", a, d, e, w);
    }
    catch (abt paramaim)
    {
      Timber.c("SaveSentSnapToCacheTask", "Invalid DSnap:\n%s", new Object[] { paramaim });
      mExceptionReporter.a(paramaim);
      return false;
    }
    Timber.c("DSnapMediaExtractor", "CHAT-LOG: Compressing Discover media %s ", new Object[] { mClientId });
    Object localObject2 = nb.a(paramaim);
    ho localho = nb.b(paramaim);
    abo localabo = new abo();
    b = a;
    c = b;
    d = c;
    e = d;
    f = e;
    g = x;
    m = h;
    n = i;
    k = f;
    l = g;
    o = j;
    p = k;
    q = n;
    v = 1;
    a = paramaim.h();
    r = aev.a(mCaptionStyleDescription);
    if (!mHasDrawing) {}
    for (int i = 0;; i = 1)
    {
      s = i;
      if (localObject2 != null) {
        t = ((hm)localObject2).toString();
      }
      if (localho != null) {
        u = localho.toString();
      }
      localObject2 = mVideoUri;
      localObject1 = mCompositeImageBitmap;
      if (paramaim.h() == 0) {
        if (localObject1 == null) {
          break label578;
        }
      }
      for (;;)
      {
        for (paramaim = localabk.a(localabo, aur.e((Bitmap)localObject1));; paramaim = localabk.a(localabo, (Uri)localObject2, aur.e(localBitmap), paramaim))
        {
          paramaim = new CbcEncryptionAlgorithm(l, m).a(paramaim, "no dataId provided");
          mCache.c(str);
          mCache.a(str, paramaim, DiscoverShareCache.DiscoverShareFileType.BLOB);
          break label584;
          if (!aut.a(paramaim)) {
            break;
          }
          paramaim = (aim)localObject1;
          if (localObject1 != null) {
            paramaim = aur.e((Bitmap)localObject1);
          }
        }
        throw new abk.a("Unsupported media type! " + paramaim.h());
        label578:
        localObject1 = localBitmap;
      }
      label584:
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     awv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */