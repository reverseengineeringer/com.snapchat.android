import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.stories.StoriesThumbnailType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class asw
  implements als.a
{
  static final String CACHED_THUMBNAIL_COUNT = "CachedThumbnails";
  static final String DOWNLOAD_THUMBNAIL_COUNT = "DownloadThumbnails";
  private static final String ENABLE_MULTI_THUMBNAIL_VARIABLE = "ENABLE_MULTI_THUMBNAIL";
  private static final String MULTI_THUMBNAIL_STUDY_ID = "MULTI_THUMBNAIL";
  static final String PIE_SLICE_BUILD_TIME_METRIC = "PIE_SLICE_BUILD_TIME";
  public static final int SPONSORED_STORY_BITMAP_THUMBNAIL_SIZE = 95;
  private static final String TAG = "BuildPieSliceTask";
  public static final int THUMBNAIL_SIZE = 102;
  private final avq mBitmapPool;
  private final Context mContext;
  private final EasyMetric.EasyMetricFactory mEasyMetricFactory;
  private final als mMediaDownloader;
  private final ExecutorService mMiscExecutor;
  private final AtomicInteger mPendingDownloadCount;
  protected EasyMetric mPieSliceBuildMetric = null;
  private final List<ajr> mStorySnaps = new ArrayList();
  private final ajt mStudySettings;
  private final StoriesThumbnailType mThumbnailType;
  
  private asw(Context paramContext, als paramals, avq paramavq, ExecutorService paramExecutorService, List<ajr> paramList, auz paramauz, aoo paramaoo, EasyMetric.EasyMetricFactory paramEasyMetricFactory, ajt paramajt)
  {
    ck.a(paramList, "stories is null");
    boolean bool;
    if (paramList.size() > 0)
    {
      bool = true;
      ck.a(bool, "stories size is 0");
      mContext = ((Context)ck.a(paramContext, "context is null"));
      mBitmapPool = paramavq;
      mMediaDownloader = paramals;
      mMiscExecutor = paramExecutorService;
      mThumbnailType = mType;
      mEasyMetricFactory = paramEasyMetricFactory;
      mStudySettings = paramajt;
      switch (mThumbnailType)
      {
      }
    }
    for (;;)
    {
      mPendingDownloadCount = new AtomicInteger(mStorySnaps.size());
      return;
      bool = false;
      break;
      mStorySnaps.addAll(paramList);
      continue;
      mStorySnaps.add(paramList.get(paramList.size() - 1));
      continue;
      mStorySnaps.addAll(paramaoo.a(paramList));
    }
  }
  
  public asw(Context paramContext, List<ajr> paramList, auz paramauz)
  {
    this(paramContext, new als(), avq.a(), auh.MISCELLANEOUS_EXECUTOR, paramList, paramauz, new aoo(), new EasyMetric.EasyMetricFactory(), ajt.a());
  }
  
  private Object a(Collection<ajr> paramCollection)
  {
    ArrayList localArrayList = new ArrayList();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      localArrayList.add(nextmMediaId);
    }
    return ts.a(new asw.a().a(localArrayList));
  }
  
  private void a(int paramInt)
  {
    if (mPendingDownloadCount.addAndGet(paramInt * -1) == 0) {
      mMiscExecutor.execute(new Runnable()
      {
        public final void run()
        {
          b();
        }
      });
    }
  }
  
  private void b(final Bitmap paramBitmap)
  {
    bgp.a(new Runnable()
    {
      public final void run()
      {
        a(paramBitmap);
      }
    });
  }
  
  public final void a()
  {
    if (mStorySnaps.size() == 0) {
      b(null);
    }
    Object localObject1;
    do
    {
      return;
      localObject1 = mStorySnaps.iterator();
      int j = 0;
      int i = 0;
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ajr)((Iterator)localObject1).next();
        if ((!((ajr)localObject2).az()) && (((ajr)localObject2).aC() != null)) {
          i += 1;
        } else {
          j += 1;
        }
      }
      if (i > 0)
      {
        mPieSliceBuildMetric = EasyMetric.EasyMetricFactory.a("PIE_SLICE_BUILD_TIME");
        mPieSliceBuildMetric.a("DownloadThumbnails", Integer.valueOf(i));
        mPieSliceBuildMetric.a("CachedThumbnails", Integer.valueOf(j));
        mPieSliceBuildMetric.b();
      }
      localObject1 = new ArrayList();
      Object localObject2 = mStorySnaps.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        Object localObject3 = (ajr)((Iterator)localObject2).next();
        if ((!((ajr)localObject3).az()) && (((ajr)localObject3).aC() != null))
        {
          if (!mNeedsAuth)
          {
            mMediaDownloader.a(Collections.singletonList(localObject3), ((ajr)localObject3).aC(), null, this);
          }
          else if ((i == 1) || (!mStudySettings.a("MULTI_THUMBNAIL", "ENABLE_MULTI_THUMBNAIL", false)))
          {
            localObject3 = Collections.singletonList(localObject3);
            mMediaDownloader.a((Collection)localObject3, ajr.au(), a((Collection)localObject3), this);
          }
          else
          {
            ((List)localObject1).add(localObject3);
          }
        }
        else {
          a(1);
        }
      }
    } while (((List)localObject1).isEmpty());
    mMediaDownloader.a((Collection)localObject1, ajr.au(), a((Collection)localObject1), this);
  }
  
  public final void a(als.b paramb)
  {
    a(c);
  }
  
  protected abstract void a(Bitmap paramBitmap);
  
  protected final void b()
  {
    if (mPieSliceBuildMetric != null) {
      mPieSliceBuildMetric.a(false);
    }
    mPieSliceBuildMetric = null;
    int i;
    Bitmap localBitmap;
    if ((!mStorySnaps.isEmpty()) && (((ajr)mStorySnaps.get(0)).aw()))
    {
      i = 1;
      localBitmap = mBitmapPool.a(102, 102, Bitmap.Config.ARGB_8888);
      if (localBitmap != null) {
        break label634;
      }
      localBitmap = Bitmap.createBitmap(102, 102, Bitmap.Config.ARGB_8888);
    }
    label191:
    label424:
    label571:
    label631:
    label634:
    for (;;)
    {
      Canvas localCanvas = new Canvas(localBitmap);
      Paint localPaint = new Paint();
      localPaint.setAntiAlias(true);
      Object localObject1;
      if (i != 0)
      {
        localObject1 = new Paint();
        ((Paint)localObject1).setColor(mContext.getResources().getColor(2131230784));
        ((Paint)localObject1).setAntiAlias(true);
        localCanvas.drawArc(new RectF(0.0F, 0.0F, localCanvas.getWidth(), localCanvas.getHeight()), -450.0F, 360.0F, true, (Paint)localObject1);
      }
      Iterator localIterator;
      int j;
      if (i != 0)
      {
        i = 95;
        localIterator = mStorySnaps.iterator();
        j = 0;
      }
      Object localObject3;
      Object localObject2;
      Object localObject4;
      for (;;)
      {
        if (localIterator.hasNext())
        {
          localObject3 = (ajr)localIterator.next();
          localObject1 = mClientId;
          localObject2 = awq.MY_STORY_SNAP_THUMBNAIL_CACHE.a(mContext, (String)localObject1, null, Bitmap.Config.RGB_565);
          localObject1 = localObject2;
          if (localObject2 == null)
          {
            localObject1 = ((ajr)localObject3).aA();
            localObject4 = ((ajr)localObject3).av();
            if (localObject4 == null)
            {
              Timber.f("BuildPieSliceTask", "Failed to load thumbnail for %s from cache because key is null", new Object[] { ((ajr)localObject3).aa() });
              return;
              i = 0;
              break;
              i = 102;
              break label191;
            }
            localObject2 = awq.STORY_SNAP_RECEIVED_THUMBNAIL_CACHE.a(mContext, (String)localObject4, (ayc)localObject1, Bitmap.Config.RGB_565);
            localObject1 = localObject2;
            if (localObject2 == null)
            {
              Timber.f("BuildPieSliceTask", "Failed to load thumbnail for %s with key %s from cache", new Object[] { ((ajr)localObject3).aa(), localObject4 });
              continue;
            }
          }
          if ((((Bitmap)localObject1).getWidth() == i) && (((Bitmap)localObject1).getHeight() == i)) {
            break label631;
          }
          localObject1 = avu.a((Bitmap)localObject1, i, i);
        }
      }
      for (;;)
      {
        int k = localBitmap.getWidth();
        if (i == k)
        {
          localObject2 = new RectF(0.0F, 0.0F, k, k);
          if (mThumbnailType != StoriesThumbnailType.OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY) {
            break label571;
          }
        }
        long l;
        for (float f = 1.0F;; f = (24.0F - (float)(Long.valueOf(new Date().getTime()).longValue() - l) / 3600000.0F) / 24.0F)
        {
          f = 360.0F * f;
          localObject3 = new BitmapShader((Bitmap)localObject1, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
          localObject4 = new Matrix();
          ((Matrix)localObject4).setTranslate(left, top);
          ((BitmapShader)localObject3).setLocalMatrix((Matrix)localObject4);
          localPaint.setShader((Shader)localObject3);
          localCanvas.drawArc((RectF)localObject2, -90.0F - f, f, true, localPaint);
          mBitmapPool.a((Bitmap)localObject1);
          j = 1;
          break;
          j = i / 2;
          int m = k / 2;
          k = m - j;
          j = m + j;
          localObject2 = new RectF(k, k, j, j);
          break label424;
          l = ((ajr)localObject3).W();
        }
        if (j != 0)
        {
          b(localBitmap);
          return;
        }
        b(null);
        return;
      }
    }
  }
  
  @tn
  public final class a
    extends bjo
  {
    public a() {}
  }
}

/* Location:
 * Qualified Name:     asw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */