import android.text.TextUtils;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public final class np
{
  private static final String GEO_FENCE_LOCAL = "LOCAL";
  private static final np sInstance = new np(ScAnalyticsEventEngine.a());
  private final ScAnalyticsEventEngine mScAnalyticsEventEngine;
  
  @cf
  private np(ScAnalyticsEventEngine paramScAnalyticsEventEngine)
  {
    mScAnalyticsEventEngine = paramScAnalyticsEventEngine;
  }
  
  @cf
  private static hy a(@cgb int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException(String.format("Invalid media type: %s", new Object[] { Integer.valueOf(paramInt) }));
    case 0: 
      return hy.IMAGE;
    case 2: 
      return hy.VIDEO_NO_SOUND;
    }
    return hy.VIDEO;
  }
  
  public static np a()
  {
    return sInstance;
  }
  
  public static void a(@cgb aim paramaim)
  {
    paramaim.b();
    gd localgd = new gd();
    if (mIsFrontFacingSnap) {}
    for (long l = 1L;; l = 0L)
    {
      camera = Long.valueOf(l);
      flash = Boolean.valueOf(mIsFlashOn);
      source = e(paramaim);
      mediaType = a(paramaim.h());
      snapTimeSec = Double.valueOf(mTimerValueOrDuration);
      ScAnalyticsEventEngine.a(localgd);
      return;
    }
  }
  
  public static void a(@cgb aje paramaje)
  {
    gg localgg = new gg();
    snapId = paramaje.ag();
    mediaType = a(paramaje.ak());
    snapTimeSec = Double.valueOf(paramaje.F());
    ScAnalyticsEventEngine.a(localgg);
  }
  
  public static void b(@cgb aim paramaim)
  {
    long l2 = 1L;
    boolean bool2 = false;
    paramaim.c();
    Object localObject1 = new gh();
    caption = f(paramaim);
    long l1;
    Object localObject2;
    boolean bool1;
    if (mIsFrontFacingSnap)
    {
      l1 = 1L;
      camera = Long.valueOf(l1);
      drawing = Boolean.valueOf(mHasDrawing);
      viewTimeSec = Double.valueOf(mViewTimeSec);
      new nb();
      localObject2 = nb.a(paramaim);
      if (localObject2 != null) {
        filterInfo = ((hm)localObject2);
      }
      localObject2 = nb.b(paramaim);
      if (localObject2 != null) {
        filterVisual = ((ho)localObject2);
      }
      flash = Boolean.valueOf(mIsFlashOn);
      source = e(paramaim);
      snapTimeSec = Double.valueOf(mTimerValueOrDuration);
      mediaType = a(paramaim.h());
      localObject2 = mMediaMailingMetadata;
      recipientCount = Long.valueOf(((MediaMailingMetadata)localObject2).d().size());
      if (!(localObject2 instanceof ajk)) {
        break label612;
      }
      ArrayList localArrayList = mPostToStories;
      if (localArrayList == null) {
        break label612;
      }
      Iterator localIterator = localArrayList.iterator();
      for (;;)
      {
        if (localIterator.hasNext()) {
          if (TextUtils.equals(nextmStoryId, "my_story_ads79sdf"))
          {
            bool1 = true;
            label247:
            if (((bool1) && (localArrayList.size() > 1)) || ((!bool1) && (localArrayList.size() > 0))) {
              bool2 = true;
            }
          }
        }
      }
    }
    for (;;)
    {
      label281:
      withMyStory = Boolean.valueOf(bool1);
      withOurStory = Boolean.valueOf(bool2);
      reply = Boolean.valueOf(mIsReply);
      withGallery = Boolean.valueOf(mSavedInGallery);
      ScAnalyticsEventEngine.a((lt)localObject1);
      if (paramaim.d())
      {
        localObject1 = new hp();
        caption = f(paramaim);
        if (!mIsFrontFacingSnap) {
          break label601;
        }
      }
      label601:
      for (l1 = l2;; l1 = 0L)
      {
        camera = Long.valueOf(l1);
        drawing = Boolean.valueOf(mHasDrawing);
        viewTimeSec = Double.valueOf(mViewTimeSec);
        new nb();
        localObject2 = nb.a(paramaim);
        if (localObject2 != null) {
          filterInfo = ((hm)localObject2);
        }
        localObject2 = nb.b(paramaim);
        if (localObject2 != null) {
          filterVisual = ((ho)localObject2);
        }
        flash = Boolean.valueOf(mIsFlashOn);
        source = e(paramaim);
        snapTimeSec = Double.valueOf(mTimerValueOrDuration);
        mediaType = a(paramaim.h());
        localObject2 = mMediaMailingMetadata;
        recipientCount = Long.valueOf(((MediaMailingMetadata)localObject2).d().size());
        withGallery = Boolean.valueOf(mSavedInGallery);
        filterGeofilterId = paramaim.e();
        filterIndexCount = Long.valueOf(mGeofilterSwipeMetaData.mGeofilterIndexCount);
        filterIndexPos = Long.valueOf(mGeofilterSwipeMetaData.mGeofilterIndexPos);
        storyPostCount = Long.valueOf(mPostToStories.size());
        ScAnalyticsEventEngine.a((ls)localObject1);
        return;
        l1 = 0L;
        break;
        bool2 = false;
        break label281;
      }
      bool1 = false;
      break label247;
      label612:
      bool1 = false;
    }
  }
  
  public static void b(@cgb aje paramaje)
  {
    gf localgf = new gf();
    snapId = paramaje.ag();
    mediaType = a(paramaje.ak());
    snapTimeSec = Double.valueOf(paramaje.F());
    ScAnalyticsEventEngine.a(localgf);
  }
  
  public static void c(@cgb aim paramaim)
  {
    paramaim.c();
    Object localObject1 = mMediaMailingMetadata;
    if (!(localObject1 instanceof ajk))
    {
      if (ReleaseManager.f()) {
        throw new IllegalArgumentException(String.format("Expected SnapMailingMetadata class, Actual class: %s", new Object[] { localObject1.getClass().getSimpleName() }));
      }
    }
    else
    {
      ArrayList localArrayList = mPostToStories;
      boolean bool1;
      label89:
      ajc localajc;
      label129:
      Object localObject2;
      label142:
      boolean bool3;
      if (((MediaMailingMetadata)localObject1).d().size() > 0)
      {
        bool1 = true;
        boolean bool2 = mSavedInGallery;
        Iterator localIterator = localArrayList.iterator();
        label184:
        do
        {
          if (!localIterator.hasNext()) {
            return;
          }
          localajc = (ajc)localIterator.next();
          if (!TextUtils.equals(mStoryId, "my_story_ads79sdf")) {
            break;
          }
          localObject1 = lr.MY;
          if (localObject1 != lr.MY) {
            break label607;
          }
          localObject2 = ajx.l();
          long l2 = localArrayList.size();
          bool3 = mIsLocalStory;
          lk locallk = new lk();
          caption = f(paramaim);
          if (!mIsFrontFacingSnap) {
            break label617;
          }
          l1 = 1L;
          camera = Long.valueOf(l1);
          drawing = Boolean.valueOf(mHasDrawing);
          new nb();
          filterInfo = nb.a(paramaim);
          filterVisual = nb.b(paramaim);
          flash = Boolean.valueOf(mIsFlashOn);
          source = e(paramaim);
          mediaType = a(paramaim.h());
          snapTime = Double.valueOf(mTimerValueOrDuration);
          view_time_sec = Double.valueOf(mViewTimeSec);
          posterId = ((String)localObject2);
          storyType = ((lr)localObject1);
          storyPostCount = Long.valueOf(l2);
          withSnap = Boolean.valueOf(bool1);
          withGallery = Boolean.valueOf(bool2);
          if (bool3) {
            geoFence = "LOCAL";
          }
          ScAnalyticsEventEngine.a(locallk);
        } while (!paramaim.d());
        bool3 = mIsLocalStory;
        localObject2 = new hr();
        caption = f(paramaim);
        if (!mIsFrontFacingSnap) {
          break label623;
        }
      }
      label607:
      label617:
      label623:
      for (long l1 = 1L;; l1 = 0L)
      {
        camera = Long.valueOf(l1);
        drawing = Boolean.valueOf(mHasDrawing);
        new nb();
        filterInfo = nb.a(paramaim);
        filterVisual = nb.b(paramaim);
        flash = Boolean.valueOf(mIsFlashOn);
        source = e(paramaim);
        mediaType = a(paramaim.h());
        snapTimeSec = Double.valueOf(mTimerValueOrDuration);
        viewTimeSec = Double.valueOf(mViewTimeSec);
        storyType = ((lr)localObject1);
        if (bool3) {
          geoFence = "LOCAL";
        }
        filterGeofilterId = paramaim.e();
        filterIndexCount = Long.valueOf(mGeofilterSwipeMetaData.mGeofilterIndexCount);
        filterIndexPos = Long.valueOf(mGeofilterSwipeMetaData.mGeofilterIndexPos);
        localObject1 = mMediaMailingMetadata;
        recipientCount = Long.valueOf(((MediaMailingMetadata)localObject1).d().size());
        withGallery = Boolean.valueOf(mSavedInGallery);
        ScAnalyticsEventEngine.a((ls)localObject2);
        break label89;
        bool1 = false;
        break;
        localObject1 = lr.OUR;
        break label129;
        localObject2 = mStoryId;
        break label142;
        l1 = 0L;
        break label184;
      }
    }
  }
  
  public static void c(@cgb aje paramaje)
  {
    gi localgi = new gi();
    snapId = paramaje.ag();
    mediaType = a(paramaje.ak());
    double d1 = paramaje.F();
    snapTimeSec = Double.valueOf(d1);
    double d2 = paramaje.y() / 1000L;
    viewTimeSec = Double.valueOf(d2);
    if (d2 >= d1) {}
    for (boolean bool = true;; bool = false)
    {
      fullView = Boolean.valueOf(bool);
      initialView = Boolean.valueOf(mIsViewedFromStart);
      ackTimeSec = Double.valueOf((paramaje.E() - paramaje.W()) * 1.0D / 1000.0D);
      ScAnalyticsEventEngine.a(localgi);
      return;
    }
  }
  
  public static void d(@cgb aim paramaim)
  {
    int i = paramaim.h();
    paramaim = mGeofilterSwipeMetaData.mData.values().iterator();
    while (paramaim.hasNext())
    {
      nd localnd = (nd)paramaim.next();
      hq localhq = new hq();
      filterGeofilterId = filterGeofilterId;
      localnd.a();
      viewTimeSec = Double.valueOf(viewTimeStopwatch.a(TimeUnit.MILLISECONDS) / 100L / 10.0D);
      filterIndexPos = Long.valueOf(filterIndexPos);
      filterIndexCount = Long.valueOf(filterIndexCount);
      filterCount = Long.valueOf(filterCount);
      mediaType = a(i);
      ScAnalyticsEventEngine.a(localhq);
    }
  }
  
  public static void d(@cgb aje paramaje)
  {
    gj localgj = new gj();
    mediaType = a(paramaje.ak());
    snapTimeSec = Double.valueOf(paramaje.F());
    ScAnalyticsEventEngine.a(localgj);
  }
  
  @cf
  private static lc e(@cgb aim paramaim)
  {
    switch (np.1.$SwitchMap$com$snapchat$android$model$Mediabryo$SnapType[mSnapType.ordinal()])
    {
    default: 
      return null;
    case 1: 
      return lc.FEED;
    }
    return lc.DISCOVER;
  }
  
  public static void e(@cgb aje paramaje)
  {
    ge localge = new ge();
    mediaType = a(paramaje.ak());
    snapTimeSec = Double.valueOf(paramaje.F());
    ScAnalyticsEventEngine.a(localge);
  }
  
  @cf
  private static Long f(@cgb aim paramaim)
  {
    paramaim = mCaptionAnalyticData;
    if (paramaim == null) {
      return Long.valueOf(0L);
    }
    switch (a)
    {
    default: 
      throw new IllegalArgumentException(String.format("Invalid caption type: %s", new Object[] { a }));
    case ???: 
      return Long.valueOf(1L);
    case ???: 
      return Long.valueOf(2L);
    }
    return Long.valueOf(3L);
  }
}

/* Location:
 * Qualified Name:     np
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */