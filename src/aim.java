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

public abstract class aim
  extends Mediabryo
{
  public oi mBaseFilter;
  public apo mCaptionAnalyticData;
  public String mCaptionStyleDescription;
  public String mCaptionText;
  public Bitmap mCompositeImageBitmap;
  public int mGeofilterImpressions;
  public final nc mGeofilterSwipeMetaData;
  public boolean mHasDrawing;
  public oi mStackedFilter;
  public int mSwipeFilterNumDoubleSwipes;
  public int mSwipeFilterNumSingleSwipes;
  public double mViewTimeSec;
  private final cn mViewTimeStopWatch;
  
  protected aim(aim.a<?> parama)
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
  
  private static boolean a(@cgc oi paramoi)
  {
    return (paramoi != null) && (c == FilterPageType.GEOFILTER);
  }
  
  public final int a(@cgb Context paramContext)
  {
    if (mIsChatMedia) {
      return 3;
    }
    return super.a(paramContext);
  }
  
  public abstract aim a();
  
  public void a(@cgc Bitmap paramBitmap)
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
      ((nd)localIterator.next()).a();
    }
  }
  
  public final boolean d()
  {
    return (a(mBaseFilter)) || (a(mStackedFilter));
  }
  
  @cgc
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
    
    public a()
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
}

/* Location:
 * Qualified Name:     aim
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */