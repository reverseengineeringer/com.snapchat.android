import android.net.Uri;
import android.text.TextUtils;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.chat.ChatMedia.MediaType;
import com.snapchat.android.model.chat.ChatMedia.a;

public final class akh
  extends ChatMedia
{
  public static final String TYPE = "dsnap";
  public String mAdId;
  public int mCaption;
  public String mDSnapId;
  public int mDrawing;
  public String mEditionId;
  public final Object mExtractionLock = new Object();
  public String mFilterInfo;
  public String mFilterVisual;
  public boolean mIsExtracted = false;
  public boolean mLinkToLongform;
  private String mOverlayPath;
  public String mPublisherFormalName;
  public String mPublisherInternationalName;
  public String mPublisherName;
  private String mUri;
  public float mVideoHeight;
  private Uri mVideoUri;
  public float mVideoWidth;
  private float mViewportHeight;
  private float mViewportWidth;
  private float mViewportX;
  private float mViewportY;
  
  public akh(aim paramaim)
  {
    super(paramaim);
    mMediaType = ChatMedia.MediaType.fromSnapMediaType(paramaim.h());
    paramaim = (adb)mMediaExtras;
    if (paramaim != null)
    {
      f(l);
      g(m);
    }
  }
  
  public akh(akh.a parama)
  {
    super(parama);
  }
  
  public akh(bhf parambhf)
  {
    super(parambhf);
    if ((parambhf.b()) && (parambhf.a().b()))
    {
      parambhf = parambhf.a().a().b();
      if (parambhf == null) {
        break label72;
      }
    }
    label72:
    for (parambhf = ChatMedia.MediaType.valueOf(parambhf.toUpperCase());; parambhf = ChatMedia.MediaType.IMAGE)
    {
      mMediaType = parambhf;
      return;
      parambhf = null;
      break;
    }
  }
  
  @cgb
  private static String a(@cgc String paramString1, @cgb String paramString2)
  {
    if (TextUtils.isEmpty(paramString1))
    {
      paramString1 = paramString2;
      if (paramString2.indexOf('-') > 0) {
        paramString1 = paramString2.split("-")[0].trim();
      }
      return paramString1;
    }
    return paramString1;
  }
  
  public final Uri J()
  {
    return mVideoUri;
  }
  
  public final String K()
  {
    return mOverlayPath;
  }
  
  public final boolean L()
  {
    return (V()) && (mOverlayPath != null);
  }
  
  public final boolean M()
  {
    return mMediaType == ChatMedia.MediaType.VIDEO;
  }
  
  public final float R()
  {
    return mViewportX;
  }
  
  public final float S()
  {
    return mViewportY;
  }
  
  public final float T()
  {
    return mViewportWidth;
  }
  
  public final float U()
  {
    return mViewportHeight;
  }
  
  public final boolean V()
  {
    return (mMediaType == ChatMedia.MediaType.VIDEO) || (mMediaType == ChatMedia.MediaType.VIDEO_NO_SOUND);
  }
  
  public final void a(abo paramabo)
  {
    if (paramabo != null)
    {
      mEditionId = e;
      mPublisherName = b;
      mPublisherFormalName = c;
      mPublisherInternationalName = a(d, b);
      mDSnapId = f;
      mAdId = g;
      mViewportX = k;
      mViewportY = l;
      mViewportWidth = m;
      mViewportHeight = n;
      mVideoWidth = o;
      mVideoHeight = p;
      mCaption = r;
      mDrawing = s;
      mFilterInfo = t;
      mFilterVisual = u;
      mLinkToLongform = q;
      setChanged();
      notifyObservers();
    }
  }
  
  public final void a(adb paramadb)
  {
    if (paramadb != null)
    {
      mEditionId = d;
      mPublisherName = a;
      mPublisherFormalName = b;
      mPublisherInternationalName = a(c, a);
      mDSnapId = e;
      mAdId = x;
      mViewportX = f;
      mViewportY = g;
      mViewportWidth = h;
      mViewportHeight = i;
      mVideoWidth = j;
      mVideoHeight = k;
      mCaption = q;
      mDrawing = r;
      mFilterInfo = s;
      mFilterVisual = t;
      mLinkToLongform = n;
      setChanged();
      notifyObservers();
    }
  }
  
  public final void a(@cgb Uri paramUri, @cgc String paramString)
  {
    mVideoUri = paramUri;
    mOverlayPath = paramString;
    setChanged();
    notifyObservers();
  }
  
  public final String h()
  {
    return "dsnap";
  }
  
  public final String toString()
  {
    return "ChatSharedDSnap{mAdId='" + mAdId + '\'' + ", mUri='" + mUri + '\'' + ", mVideoUri=" + mVideoUri + ", mOverlayPath='" + mOverlayPath + '\'' + ", mEditionId='" + mEditionId + '\'' + ", mPublisherName='" + mPublisherName + '\'' + ", mDSnapId='" + mDSnapId + '\'' + ", mViewportX=" + mViewportX + ", mViewportY=" + mViewportY + ", mViewportWidth=" + mViewportWidth + ", mViewportHeight=" + mViewportHeight + ", mVideoWidth=" + mVideoWidth + ", mVideoHeight=" + mVideoHeight + ", mIsExtracted=" + mIsExtracted + ", mIsLoaded='" + mIsLoaded + ", mLinkToLongform=" + mLinkToLongform + ", mMediaType=" + mMediaType + '}';
  }
  
  public static final class a
    extends ChatMedia.a
  {
    public a(String paramString1, String paramString2)
    {
      super(paramString2);
    }
  }
}

/* Location:
 * Qualified Name:     akh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */