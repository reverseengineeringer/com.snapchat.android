import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.stories.StoriesThumbnailType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class atv
  implements aah.a
{
  static final String CACHED_THUMBNAIL_COUNT = "CachedThumbnails";
  static final String DOWNLOAD_THUMBNAIL_COUNT = "DownloadThumbnails";
  private static final String ENABLE_MULTI_THUMBNAIL_VARIABLE = "ENABLE_MULTI_THUMBNAIL";
  private static final String MULTI_THUMBNAIL_STUDY_ID = "MULTI_THUMBNAIL";
  static final String PIE_SLICE_BUILD_TIME_METRIC = "PIE_SLICE_BUILD_TIME";
  private static final String TAG = "BuildPieSliceTask";
  static final String THUMBNAIL_DECRYPT_FAILURE_COUNT = "ThumbnailDecryptFailureCount";
  public static final int THUMBNAIL_SIZE = 102;
  private final awo mBitmapPool;
  private final Context mContext;
  private final EasyMetric.EasyMetricFactory mEasyMetricFactory;
  private final ExecutorService mMiscExecutor;
  private final AtomicInteger mPendingDownloadCount;
  protected EasyMetric mPieSliceBuildMetric = null;
  private final List<akl> mStorySnaps = new ArrayList();
  private final akn mStudySettings;
  private final aah mThumbnailDownloader;
  private final StoriesThumbnailType mThumbnailType;
  
  private atv(Context paramContext, aah paramaah, awo paramawo, ExecutorService paramExecutorService, List<akl> paramList, avx paramavx, apk paramapk, EasyMetric.EasyMetricFactory paramEasyMetricFactory, akn paramakn)
  {
    co.a(paramList, "stories is null");
    boolean bool;
    if (paramList.size() > 0)
    {
      bool = true;
      co.a(bool, "stories size is 0");
      mContext = ((Context)co.a(paramContext, "context is null"));
      mBitmapPool = paramawo;
      mThumbnailDownloader = paramaah;
      mMiscExecutor = paramExecutorService;
      mThumbnailType = mType;
      mEasyMetricFactory = paramEasyMetricFactory;
      mStudySettings = paramakn;
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
      mStorySnaps.addAll(paramapk.a(paramList));
    }
  }
  
  public atv(Context paramContext, List<akl> paramList, avx paramavx)
  {
    this(paramContext, new aah(), awo.a(), avf.MISCELLANEOUS_EXECUTOR, paramList, paramavx, new apk(), new EasyMetric.EasyMetricFactory(), akn.a());
  }
  
  private void b(final Bitmap paramBitmap)
  {
    bhp.a(new Runnable()
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
        localObject2 = (akl)((Iterator)localObject1).next();
        if ((!((akl)localObject2).au()) && (((akl)localObject2).ax() != null)) {
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
        akl localakl = (akl)((Iterator)localObject2).next();
        if ((!localakl.au()) && (localakl.ax() != null))
        {
          if ((!mNeedsAuth) || (i == 1) || (!mStudySettings.a("MULTI_THUMBNAIL", "ENABLE_MULTI_THUMBNAIL", false))) {
            mThumbnailDownloader.a(localakl, this);
          } else {
            ((List)localObject1).add(localakl);
          }
        }
        else {
          a(1);
        }
      }
    } while (((List)localObject1).isEmpty());
    mThumbnailDownloader.a((Collection)localObject1, this);
  }
  
  public final void a(int paramInt)
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
  
  protected abstract void a(Bitmap paramBitmap);
  
  protected final void b()
  {
    Bitmap localBitmap = mBitmapPool.a(102, 102, Bitmap.Config.ARGB_8888);
    if (localBitmap == null) {
      localBitmap = Bitmap.createBitmap(102, 102, Bitmap.Config.ARGB_8888);
    }
    for (;;)
    {
      Canvas localCanvas = new Canvas(localBitmap);
      Paint localPaint = new Paint();
      localPaint.setAntiAlias(true);
      Iterator localIterator = mStorySnaps.iterator();
      int i = 0;
      int j = 0;
      Object localObject3;
      Object localObject1;
      Object localObject2;
      Object localObject4;
      while (localIterator.hasNext())
      {
        localObject3 = (akl)localIterator.next();
        localObject1 = mClientId;
        localObject2 = axo.MY_STORY_SNAP_THUMBNAIL_CACHE.a(mContext, (String)localObject1, null, Bitmap.Config.RGB_565);
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          localObject1 = ((akl)localObject3).av();
          localObject2 = ((akl)localObject3).at();
          if (localObject2 == null)
          {
            ((akl)localObject3).Y();
          }
          else
          {
            localObject4 = axo.STORY_SNAP_RECEIVED_THUMBNAIL_CACHE.a((String)localObject2);
            if (localObject4 == null)
            {
              ((akl)localObject3).Y();
            }
            else
            {
              localObject1 = ((aza)localObject1).b((byte[])localObject4, (String)localObject2);
              if (localObject1 == null)
              {
                ((akl)localObject3).Y();
                i += 1;
              }
              else
              {
                localObject2 = mContext;
                localObject4 = Bitmap.Config.RGB_565;
                localObject1 = bmBitmap;
              }
            }
          }
        }
        else
        {
          if ((((Bitmap)localObject1).getWidth() == 102) && (((Bitmap)localObject1).getHeight() == 102)) {
            break label533;
          }
          localObject1 = aws.a((Bitmap)localObject1, 102, 102, false);
        }
      }
      label295:
      label439:
      label533:
      for (;;)
      {
        j = localBitmap.getWidth();
        if (102 == j)
        {
          localObject2 = new RectF(0.0F, 0.0F, j, j);
          if (mThumbnailType != StoriesThumbnailType.OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY) {
            break label439;
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
          int k = j / 2;
          j = k - 51;
          k += 51;
          localObject2 = new RectF(j, j, k, k);
          break label295;
          l = ((akl)localObject3).U();
        }
        if (mPieSliceBuildMetric != null)
        {
          mPieSliceBuildMetric.a("ThumbnailDecryptFailureCount", Integer.valueOf(i));
          mPieSliceBuildMetric.a(false);
        }
        mPieSliceBuildMetric = null;
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
}

/* Location:
 * Qualified Name:     atv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */