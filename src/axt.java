import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Mediabryo.SnapType;
import com.snapchat.android.util.cache.DiscoverShareCache;
import com.snapchat.android.util.cache.DiscoverShareCache.DiscoverShareFileType;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;

public class axt
  extends AsyncTask<aji, Void, Void>
{
  protected static final String TAG = "SaveSentSnapToCacheTask";
  private axp mDiscoverShareCacheWrapper;
  private final ban mExceptionReporter;
  
  public axt()
  {
    this(axp.a.a(), new ban());
  }
  
  private axt(@chc axp paramaxp, @chc ban paramban)
  {
    mDiscoverShareCacheWrapper = paramaxp;
    mExceptionReporter = paramban;
  }
  
  private boolean a(aji paramaji)
  {
    if (isCancelled()) {
      return false;
    }
    for (;;)
    {
      try
      {
        localaxp = mDiscoverShareCacheWrapper;
        str = mClientId;
        localaeb = (aeb)mMediaExtras;
        if (localaeb != null)
        {
          localack = mCompressor;
          localObject1 = (aeb)mMediaExtras;
          if ((mSnapType != Mediabryo.SnapType.DISCOVER) || (localObject1 == null)) {
            throw new IllegalArgumentException("Incorrect snap type or need extra information about the DSnap.");
          }
          localBitmap = mRawImageBitmap;
          if (localBitmap == null)
          {
            if (mVideoUri == null) {
              throw new act("Media provided has both snap and video url being null.", a, d, e, w);
            }
            throw new act("Discover videos must have a thumbnail. ", a, d, e, w);
          }
        }
      }
      catch (act paramaji)
      {
        axp localaxp;
        String str;
        aeb localaeb;
        ack localack;
        Bitmap localBitmap;
        mExceptionReporter.a(paramaji);
        return false;
        Object localObject2 = mClientId;
        Object localObject3 = ns.a(paramaji);
        hx localhx = ns.b(paramaji);
        localObject2 = new aco();
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
        a = paramaji.h();
        r = afv.a(mCaptionStyleDescription);
        if (mHasDrawing) {
          break label536;
        }
        i = 0;
        s = i;
        if (localObject3 != null) {
          t = ((hv)localObject3).toString();
        }
        if (localhx != null) {
          u = localhx.toString();
        }
        localObject3 = mVideoUri;
        Object localObject1 = mCompositeImageBitmap;
        if (paramaji.h() == 0)
        {
          if (localObject1 != null)
          {
            paramaji = localack.a((aco)localObject2, avp.e((Bitmap)localObject1));
            paramaji = new CbcEncryptionAlgorithm(l, m).a(paramaji, "no dataId provided");
            mCache.c(str);
            mCache.a(str, paramaji, DiscoverShareCache.DiscoverShareFileType.BLOB);
            break label534;
          }
        }
        else
        {
          if (avr.a(paramaji))
          {
            paramaji = (aji)localObject1;
            if (localObject1 != null) {
              paramaji = avp.e((Bitmap)localObject1);
            }
            paramaji = localack.a((aco)localObject2, (Uri)localObject3, avp.e(localBitmap), paramaji);
            continue;
          }
          throw new ack.a("Unsupported media type! " + paramaji.h());
        }
        localObject1 = localBitmap;
        continue;
      }
      catch (axq paramaji)
      {
        return false;
      }
      catch (ack.a paramaji)
      {
        return false;
      }
      label534:
      return true;
      label536:
      int i = 1;
    }
  }
}

/* Location:
 * Qualified Name:     axt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */