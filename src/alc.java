import android.net.Uri;
import android.text.TextUtils;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.chat.ChatMedia.MediaType;
import com.snapchat.android.model.chat.ChatMedia.a;

public final class alc
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
  
  public alc(aji paramaji)
  {
    super(paramaji);
    mMediaType = ChatMedia.MediaType.fromSnapMediaType(paramaji.h());
    paramaji = (aeb)mMediaExtras;
    if (paramaji != null)
    {
      f(l);
      g(m);
    }
  }
  
  public alc(alc.a parama)
  {
    super(parama);
  }
  
  public alc(bif parambif)
  {
    super(parambif);
    if ((parambif.b()) && (parambif.a().b()))
    {
      parambif = parambif.a().a().b();
      if (parambif == null) {
        break label72;
      }
    }
    label72:
    for (parambif = ChatMedia.MediaType.valueOf(parambif.toUpperCase());; parambif = ChatMedia.MediaType.IMAGE)
    {
      mMediaType = parambif;
      return;
      parambif = null;
      break;
    }
  }
  
  @chc
  private static String a(@chd String paramString1, @chc String paramString2)
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
  
  public final Uri K()
  {
    return mVideoUri;
  }
  
  public final String L()
  {
    return mOverlayPath;
  }
  
  public final boolean M()
  {
    return (X()) && (mOverlayPath != null);
  }
  
  public final boolean N()
  {
    return mMediaType == ChatMedia.MediaType.VIDEO;
  }
  
  public final float S()
  {
    return mViewportX;
  }
  
  public final float T()
  {
    return mViewportY;
  }
  
  public final float V()
  {
    return mViewportWidth;
  }
  
  public final float W()
  {
    return mViewportHeight;
  }
  
  public final boolean X()
  {
    return (mMediaType == ChatMedia.MediaType.VIDEO) || (mMediaType == ChatMedia.MediaType.VIDEO_NO_SOUND);
  }
  
  public final void a(aco paramaco)
  {
    if (paramaco != null)
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
  
  public final void a(aeb paramaeb)
  {
    if (paramaeb != null)
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
  
  public final void a(@chc Uri paramUri, @chd String paramString)
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
 * Qualified Name:     alc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */