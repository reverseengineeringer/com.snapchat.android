import android.graphics.Bitmap;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Mediabryo.a;
import java.util.Locale;
import java.util.UUID;

public abstract class aim$a<T extends a<T>>
  extends Mediabryo.a<T>
{
  oi mBaseFilter;
  apo mCaptionAnalyticData;
  String mCaptionStyleDescription;
  public String mCaptionText;
  Bitmap mCompositeImageBitmap;
  int mGeofilterImpressions;
  nc mGeofilterSwipeMetaData;
  boolean mHasDrawing;
  oi mStackedFilter;
  int mSwipeFilterNumDoubleSwipes;
  int mSwipeFilterNumSingleSwipes;
  cn mViewTimeStopWatch;
  
  public aim$a()
  {
    mClientId = (ajx.l() + "~" + UUID.randomUUID().toString()).toUpperCase(Locale.US);
    mViewTimeStopWatch = new cn();
  }
  
  public final T a(aim paramaim)
  {
    mClientId = Mediabryo.a(paramaim);
    mTime = Mediabryo.b(paramaim);
    mVideoUri = Mediabryo.c(paramaim);
    mOverlayBitmap = Mediabryo.d(paramaim);
    mRawImageBitmap = Mediabryo.e(paramaim);
    mOverlayPath = Mediabryo.f(paramaim);
    mPreviewConfiguration = Mediabryo.g(paramaim);
    mSnapType = Mediabryo.h(paramaim);
    mIsChatMedia = Mediabryo.i(paramaim);
    mIsReply = Mediabryo.j(paramaim);
    mIsFrontFacingSnap = Mediabryo.k(paramaim);
    mIsFlashOn = Mediabryo.l(paramaim);
    mIsZipUpload = Mediabryo.m(paramaim);
    mSnapOrientation = Mediabryo.n(paramaim);
    mMediaExtras = Mediabryo.o(paramaim);
    mMediaMailingMetadata = Mediabryo.p(paramaim).a();
    mTimerValueOrDuration = Mediabryo.q(paramaim);
    mShouldEnableSmartFilters = Mediabryo.r(paramaim);
    mShouldEnableVisualFilters = Mediabryo.s(paramaim);
    mCaptionText = aim.a(paramaim);
    mHasDrawing = aim.b(paramaim);
    mSwipeFilterNumSingleSwipes = aim.c(paramaim);
    mSwipeFilterNumDoubleSwipes = aim.d(paramaim);
    mGeofilterImpressions = aim.e(paramaim);
    mGeofilterSwipeMetaData = aim.f(paramaim);
    mCaptionStyleDescription = aim.g(paramaim);
    mCaptionAnalyticData = aim.h(paramaim);
    mCompositeImageBitmap = aim.i(paramaim);
    mBaseFilter = aim.j(paramaim);
    mStackedFilter = aim.k(paramaim);
    mViewTimeStopWatch = aim.l(paramaim);
    return this;
  }
  
  protected final void a()
  {
    super.a();
    if (mGeofilterSwipeMetaData == null) {
      mGeofilterSwipeMetaData = new nc();
    }
  }
  
  public aim b()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     aim.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */