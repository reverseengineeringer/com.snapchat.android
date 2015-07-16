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

public final class og
{
  private static final String GEO_FENCE_LOCAL = "LOCAL";
  private static final og sInstance = new og(ScAnalyticsEventEngine.a());
  private final ScAnalyticsEventEngine mScAnalyticsEventEngine;
  
  @cf
  private og(ScAnalyticsEventEngine paramScAnalyticsEventEngine)
  {
    mScAnalyticsEventEngine = paramScAnalyticsEventEngine;
  }
  
  @cf
  private static ih a(@chc int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException(String.format("Invalid media type: %s", new Object[] { Integer.valueOf(paramInt) }));
    case 0: 
      return ih.IMAGE;
    case 2: 
      return ih.VIDEO_NO_SOUND;
    }
    return ih.VIDEO;
  }
  
  public static og a()
  {
    return sInstance;
  }
  
  public static void a(@chc aji paramaji)
  {
    paramaji.b();
    gm localgm = new gm();
    if (mIsFrontFacingSnap) {}
    for (long l = 1L;; l = 0L)
    {
      camera = Long.valueOf(l);
      flash = Boolean.valueOf(mIsFlashOn);
      source = e(paramaji);
      mediaType = a(paramaji.h());
      snapTimeSec = Double.valueOf(mTimerValueOrDuration);
      ScAnalyticsEventEngine.a(localgm);
      return;
    }
  }
  
  public static void a(@chc aka paramaka)
  {
    gp localgp = new gp();
    snapId = paramaka.ae();
    mediaType = a(paramaka.ai());
    snapTimeSec = Double.valueOf(paramaka.G());
    ScAnalyticsEventEngine.a(localgp);
  }
  
  public static void b(@chc aji paramaji)
  {
    long l2 = 1L;
    boolean bool2 = false;
    paramaji.c();
    Object localObject1 = new gq();
    caption = f(paramaji);
    long l1;
    Object localObject2;
    boolean bool1;
    if (mIsFrontFacingSnap)
    {
      l1 = 1L;
      camera = Long.valueOf(l1);
      drawing = Boolean.valueOf(mHasDrawing);
      viewTimeSec = Double.valueOf(mViewTimeSec);
      localObject2 = ns.a(paramaji);
      if (localObject2 != null) {
        filterInfo = ((hv)localObject2);
      }
      localObject2 = ns.b(paramaji);
      if (localObject2 != null) {
        filterVisual = ((hx)localObject2);
      }
      flash = Boolean.valueOf(mIsFlashOn);
      source = e(paramaji);
      snapTimeSec = Double.valueOf(mTimerValueOrDuration);
      mediaType = a(paramaji.h());
      localObject2 = mMediaMailingMetadata;
      recipientCount = Long.valueOf(((MediaMailingMetadata)localObject2).d().size());
      if (!(localObject2 instanceof akg)) {
        break label596;
      }
      ArrayList localArrayList = mPostToStories;
      if (localArrayList == null) {
        break label596;
      }
      Iterator localIterator = localArrayList.iterator();
      for (;;)
      {
        if (localIterator.hasNext()) {
          if (TextUtils.equals(nextmStoryId, "my_story_ads79sdf"))
          {
            bool1 = true;
            label239:
            if (((bool1) && (localArrayList.size() > 1)) || ((!bool1) && (localArrayList.size() > 0))) {
              bool2 = true;
            }
          }
        }
      }
    }
    for (;;)
    {
      label273:
      withMyStory = Boolean.valueOf(bool1);
      withOurStory = Boolean.valueOf(bool2);
      reply = Boolean.valueOf(mIsReply);
      withGallery = Boolean.valueOf(mSavedInGallery);
      ScAnalyticsEventEngine.a((ml)localObject1);
      if (paramaji.d())
      {
        localObject1 = new hy();
        caption = f(paramaji);
        if (!mIsFrontFacingSnap) {
          break label585;
        }
      }
      label585:
      for (l1 = l2;; l1 = 0L)
      {
        camera = Long.valueOf(l1);
        drawing = Boolean.valueOf(mHasDrawing);
        viewTimeSec = Double.valueOf(mViewTimeSec);
        localObject2 = ns.a(paramaji);
        if (localObject2 != null) {
          filterInfo = ((hv)localObject2);
        }
        localObject2 = ns.b(paramaji);
        if (localObject2 != null) {
          filterVisual = ((hx)localObject2);
        }
        flash = Boolean.valueOf(mIsFlashOn);
        source = e(paramaji);
        snapTimeSec = Double.valueOf(mTimerValueOrDuration);
        mediaType = a(paramaji.h());
        localObject2 = mMediaMailingMetadata;
        recipientCount = Long.valueOf(((MediaMailingMetadata)localObject2).d().size());
        withGallery = Boolean.valueOf(mSavedInGallery);
        filterGeofilterId = paramaji.e();
        filterIndexCount = Long.valueOf(mGeofilterSwipeMetaData.mGeofilterIndexCount);
        filterIndexPos = Long.valueOf(mGeofilterSwipeMetaData.mGeofilterIndexPos);
        storyPostCount = Long.valueOf(mPostToStories.size());
        ScAnalyticsEventEngine.a((mk)localObject1);
        return;
        l1 = 0L;
        break;
        bool2 = false;
        break label273;
      }
      bool1 = false;
      break label239;
      label596:
      bool1 = false;
    }
  }
  
  public static void b(@chc aka paramaka)
  {
    go localgo = new go();
    snapId = paramaka.ae();
    mediaType = a(paramaka.ai());
    snapTimeSec = Double.valueOf(paramaka.G());
    ScAnalyticsEventEngine.a(localgo);
  }
  
  public static void c(@chc aji paramaji)
  {
    paramaji.c();
    Object localObject1 = mMediaMailingMetadata;
    if (!(localObject1 instanceof akg))
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
      ajy localajy;
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
          localajy = (ajy)localIterator.next();
          if (!TextUtils.equals(mStoryId, "my_story_ads79sdf")) {
            break;
          }
          localObject1 = mj.MY;
          if (localObject1 != mj.MY) {
            break label591;
          }
          localObject2 = akr.l();
          long l2 = localArrayList.size();
          bool3 = mIsLocalStory;
          mc localmc = new mc();
          caption = f(paramaji);
          if (!mIsFrontFacingSnap) {
            break label601;
          }
          l1 = 1L;
          camera = Long.valueOf(l1);
          drawing = Boolean.valueOf(mHasDrawing);
          filterInfo = ns.a(paramaji);
          filterVisual = ns.b(paramaji);
          flash = Boolean.valueOf(mIsFlashOn);
          source = e(paramaji);
          mediaType = a(paramaji.h());
          snapTime = Double.valueOf(mTimerValueOrDuration);
          view_time_sec = Double.valueOf(mViewTimeSec);
          posterId = ((String)localObject2);
          storyType = ((mj)localObject1);
          storyPostCount = Long.valueOf(l2);
          withSnap = Boolean.valueOf(bool1);
          withGallery = Boolean.valueOf(bool2);
          if (bool3) {
            geoFence = "LOCAL";
          }
          ScAnalyticsEventEngine.a(localmc);
        } while (!paramaji.d());
        bool3 = mIsLocalStory;
        localObject2 = new ia();
        caption = f(paramaji);
        if (!mIsFrontFacingSnap) {
          break label607;
        }
      }
      label591:
      label601:
      label607:
      for (long l1 = 1L;; l1 = 0L)
      {
        camera = Long.valueOf(l1);
        drawing = Boolean.valueOf(mHasDrawing);
        filterInfo = ns.a(paramaji);
        filterVisual = ns.b(paramaji);
        flash = Boolean.valueOf(mIsFlashOn);
        source = e(paramaji);
        mediaType = a(paramaji.h());
        snapTimeSec = Double.valueOf(mTimerValueOrDuration);
        viewTimeSec = Double.valueOf(mViewTimeSec);
        storyType = ((mj)localObject1);
        if (bool3) {
          geoFence = "LOCAL";
        }
        filterGeofilterId = paramaji.e();
        filterIndexCount = Long.valueOf(mGeofilterSwipeMetaData.mGeofilterIndexCount);
        filterIndexPos = Long.valueOf(mGeofilterSwipeMetaData.mGeofilterIndexPos);
        localObject1 = mMediaMailingMetadata;
        recipientCount = Long.valueOf(((MediaMailingMetadata)localObject1).d().size());
        withGallery = Boolean.valueOf(mSavedInGallery);
        ScAnalyticsEventEngine.a((mk)localObject2);
        break label89;
        bool1 = false;
        break;
        localObject1 = mj.OUR;
        break label129;
        localObject2 = mStoryId;
        break label142;
        l1 = 0L;
        break label184;
      }
    }
  }
  
  public static void c(@chc aka paramaka)
  {
    gr localgr = new gr();
    snapId = paramaka.ae();
    mediaType = a(paramaka.ai());
    double d1 = paramaka.G();
    snapTimeSec = Double.valueOf(d1);
    double d2 = paramaka.z() / 1000L;
    viewTimeSec = Double.valueOf(d2);
    if (d2 >= d1) {}
    for (boolean bool = true;; bool = false)
    {
      fullView = Boolean.valueOf(bool);
      initialView = Boolean.valueOf(mIsViewedFromStart);
      ackTimeSec = Double.valueOf((paramaka.F() - paramaka.U()) * 1.0D / 1000.0D);
      ScAnalyticsEventEngine.a(localgr);
      return;
    }
  }
  
  public static void d(@chc aji paramaji)
  {
    int i = paramaji.h();
    paramaji = mGeofilterSwipeMetaData.mData.values().iterator();
    while (paramaji.hasNext())
    {
      nu localnu = (nu)paramaji.next();
      hz localhz = new hz();
      filterGeofilterId = filterGeofilterId;
      localnu.a();
      viewTimeSec = Double.valueOf(viewTimeStopwatch.a(TimeUnit.MILLISECONDS) / 100L / 10.0D);
      filterIndexPos = Long.valueOf(filterIndexPos);
      filterIndexCount = Long.valueOf(filterIndexCount);
      filterCount = Long.valueOf(filterCount);
      mediaType = a(i);
      ScAnalyticsEventEngine.a(localhz);
    }
  }
  
  public static void d(@chc aka paramaka)
  {
    gs localgs = new gs();
    mediaType = a(paramaka.ai());
    snapTimeSec = Double.valueOf(paramaka.G());
    ScAnalyticsEventEngine.a(localgs);
  }
  
  @cf
  private static lu e(@chc aji paramaji)
  {
    switch (og.1.$SwitchMap$com$snapchat$android$model$Mediabryo$SnapType[mSnapType.ordinal()])
    {
    default: 
      return null;
    case 1: 
      return lu.FEED;
    }
    return lu.DISCOVER;
  }
  
  public static void e(@chc aka paramaka)
  {
    gn localgn = new gn();
    mediaType = a(paramaka.ai());
    snapTimeSec = Double.valueOf(paramaka.G());
    ScAnalyticsEventEngine.a(localgn);
  }
  
  @cf
  private static Long f(@chc aji paramaji)
  {
    paramaji = mCaptionAnalyticData;
    if (paramaji == null) {
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
 * Qualified Name:     og
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */