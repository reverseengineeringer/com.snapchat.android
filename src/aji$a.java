import android.graphics.Bitmap;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Mediabryo.a;
import java.util.Locale;
import java.util.UUID;

public abstract class aji$a<T extends a<T>>
  extends Mediabryo.a<T>
{
  oz mBaseFilter;
  aqn mCaptionAnalyticData;
  String mCaptionStyleDescription;
  public String mCaptionText;
  Bitmap mCompositeImageBitmap;
  int mGeofilterImpressions;
  nt mGeofilterSwipeMetaData;
  boolean mHasDrawing;
  oz mStackedFilter;
  int mSwipeFilterNumDoubleSwipes;
  int mSwipeFilterNumSingleSwipes;
  cs mViewTimeStopWatch;
  
  public aji$a()
  {
    mClientId = (akr.l() + "~" + UUID.randomUUID().toString()).toUpperCase(Locale.US);
    mViewTimeStopWatch = new cs();
  }
  
  public final T a(aji paramaji)
  {
    mClientId = Mediabryo.a(paramaji);
    mTime = Mediabryo.b(paramaji);
    mVideoUri = Mediabryo.c(paramaji);
    mOverlayBitmap = Mediabryo.d(paramaji);
    mRawImageBitmap = Mediabryo.e(paramaji);
    mOverlayPath = Mediabryo.f(paramaji);
    mPreviewConfiguration = Mediabryo.g(paramaji);
    mSnapType = Mediabryo.h(paramaji);
    mIsChatMedia = Mediabryo.i(paramaji);
    mIsReply = Mediabryo.j(paramaji);
    mIsFrontFacingSnap = Mediabryo.k(paramaji);
    mIsFlashOn = Mediabryo.l(paramaji);
    mIsZipUpload = Mediabryo.m(paramaji);
    mSnapOrientation = Mediabryo.n(paramaji);
    mMediaExtras = Mediabryo.o(paramaji);
    mMediaMailingMetadata = Mediabryo.p(paramaji).a();
    mTimerValueOrDuration = Mediabryo.q(paramaji);
    mShouldEnableSmartFilters = Mediabryo.r(paramaji);
    mShouldEnableVisualFilters = Mediabryo.s(paramaji);
    mCaptionText = aji.a(paramaji);
    mHasDrawing = aji.b(paramaji);
    mSwipeFilterNumSingleSwipes = aji.c(paramaji);
    mSwipeFilterNumDoubleSwipes = aji.d(paramaji);
    mGeofilterImpressions = aji.e(paramaji);
    mGeofilterSwipeMetaData = aji.f(paramaji);
    mCaptionStyleDescription = aji.g(paramaji);
    mCaptionAnalyticData = aji.h(paramaji);
    mCompositeImageBitmap = aji.i(paramaji);
    mBaseFilter = aji.j(paramaji);
    mStackedFilter = aji.k(paramaji);
    mViewTimeStopWatch = aji.l(paramaji);
    return this;
  }
  
  protected final void a()
  {
    super.a();
    if (mGeofilterSwipeMetaData == null) {
      mGeofilterSwipeMetaData = new nt();
    }
  }
  
  public aji b()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     aji.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */