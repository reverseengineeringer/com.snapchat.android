import android.content.Context;
import android.graphics.Bitmap;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Mediabryo.a;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

public abstract class aji
  extends Mediabryo
{
  public oz mBaseFilter;
  public aqn mCaptionAnalyticData;
  public String mCaptionStyleDescription;
  public String mCaptionText;
  public Bitmap mCompositeImageBitmap;
  public int mGeofilterImpressions;
  public final nt mGeofilterSwipeMetaData;
  public boolean mHasDrawing;
  public oz mStackedFilter;
  public int mSwipeFilterNumDoubleSwipes;
  public int mSwipeFilterNumSingleSwipes;
  public double mViewTimeSec;
  private final cs mViewTimeStopWatch;
  
  protected aji(aji.a<?> parama)
  {
    super(parama);
    mCaptionText = mCaptionText;
    mHasDrawing = mHasDrawing;
    mSwipeFilterNumDoubleSwipes = mSwipeFilterNumDoubleSwipes;
    mSwipeFilterNumSingleSwipes = mSwipeFilterNumSingleSwipes;
    mGeofilterImpressions = mGeofilterImpressions;
    mGeofilterSwipeMetaData = mGeofilterSwipeMetaData;
    mCaptionStyleDescription = mCaptionStyleDescription;
    mCaptionAnalyticData = mCaptionAnalyticData;
    mCompositeImageBitmap = mCompositeImageBitmap;
    mBaseFilter = mBaseFilter;
    mStackedFilter = mStackedFilter;
    mViewTimeSec = 0.0D;
    mViewTimeStopWatch = mViewTimeStopWatch;
  }
  
  private static boolean a(@chd oz paramoz)
  {
    return (paramoz != null) && (c == FilterPageType.GEOFILTER);
  }
  
  public final int a(@chc Context paramContext)
  {
    if (mIsChatMedia) {
      return 3;
    }
    return super.a(paramContext);
  }
  
  public abstract aji a();
  
  public void a(@chd Bitmap paramBitmap)
  {
    mCompositeImageBitmap = paramBitmap;
  }
  
  public final void b()
  {
    if (mViewTimeStopWatch.a) {
      mViewTimeStopWatch.b();
    }
    mViewTimeStopWatch.a();
  }
  
  public final void c()
  {
    if (mViewTimeStopWatch.a)
    {
      mViewTimeStopWatch.b();
      mViewTimeSec += mViewTimeStopWatch.a(TimeUnit.MILLISECONDS) * 1.0D / 1000.0D;
    }
    Iterator localIterator = mGeofilterSwipeMetaData.mData.values().iterator();
    while (localIterator.hasNext()) {
      ((nu)localIterator.next()).a();
    }
  }
  
  public final boolean d()
  {
    return (a(mBaseFilter)) || (a(mStackedFilter));
  }
  
  @chd
  public final String e()
  {
    if (a(mBaseFilter)) {
      return mBaseFilter.b;
    }
    return mStackedFilter.b;
  }
  
  public final void f()
  {
    Mediabryo.a(new Bitmap[] { mCompositeImageBitmap });
    mCompositeImageBitmap = null;
  }
  
  public static abstract class a<T extends a<T>>
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
    
    public a()
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
}

/* Location:
 * Qualified Name:     aji
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */