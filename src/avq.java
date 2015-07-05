import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import com.snapchat.android.Timber;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;

@bwr
public final class avq
{
  private static final int DEFAULT_SIZE = 6;
  private static final String TAG = "BitmapPool";
  private static final avq sInstance = new avq();
  @bwo
  public final PriorityQueue<Bitmap> mBitmapCache = new PriorityQueue(6, new avt());
  public final awg mMonitor;
  public final Object mMutex = new Object();
  private final ReleaseManager mReleaseManager;
  
  private avq()
  {
    this(awg.a(), ReleaseManager.a());
  }
  
  private avq(awg paramawg, ReleaseManager paramReleaseManager)
  {
    mMonitor = paramawg;
    mReleaseManager = paramReleaseManager;
  }
  
  public static avq a()
  {
    return sInstance;
  }
  
  @cgc
  public final Bitmap a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    outWidth = paramInt1;
    outHeight = paramInt2;
    inPreferredConfig = paramConfig;
    inSampleSize = 1;
    inJustDecodeBounds = false;
    return a(localOptions, true);
  }
  
  @avl
  @cgc
  public final Bitmap a(@cgb BitmapFactory.Options arg1, boolean paramBoolean)
  {
    Iterator localIterator;
    Bitmap localBitmap;
    Object localObject3;
    Object localObject4;
    synchronized (mMutex)
    {
      localIterator = mBitmapCache.iterator();
      if (!localIterator.hasNext()) {
        break label395;
      }
      localBitmap = (Bitmap)localIterator.next();
      localObject3 = inPreferredConfig;
      localObject4 = localBitmap.getConfig();
      switch (avu.1.$SwitchMap$android$graphics$Bitmap$Config[localObject4.ordinal()])
      {
      case 1: 
        label92:
        if (!ReleaseManager.e()) {
          break label428;
        }
        throw new RuntimeException("Unknown Bitmap config.");
      }
    }
    int i = 1;
    label116:
    if (i != 0) {
      if (Build.VERSION.SDK_INT >= 19) {
        if (paramBoolean)
        {
          if (localBitmap.getHeight() != outHeight) {
            break label418;
          }
          if (localBitmap.getWidth() != outWidth) {
            break label418;
          }
        }
      }
    }
    while (i != 0)
    {
      localObject3 = mMonitor;
      localObject4 = awg.c();
      synchronized (mMutex)
      {
        awl localawl = ((awg)localObject3).a(localBitmap);
        localawl.a((String)localObject4);
        ((awg)localObject3).a(localBitmap, localawl);
        Timber.c("BitmapPool", "Found a matching candidate.", new Object[0]);
        localBitmap.setHasAlpha(true);
        localBitmap.eraseColor(0);
        localIterator.remove();
        return localBitmap;
        if ((localObject4 != localObject3) || (avu.a((Bitmap.Config)localObject4) < avu.a((Bitmap.Config)localObject3))) {
          break label423;
        }
        i = 1;
        break label116;
        i = outWidth / inSampleSize * (outHeight / inSampleSize) * avu.a(inPreferredConfig);
        if ((i <= localBitmap.getAllocationByteCount()) && (inPreferredConfig != localBitmap.getConfig())) {
          Timber.c("BitmapPool", "Using a candidate bitmap whose config != target bitmap config", new Object[0]);
        }
        if (i > localBitmap.getAllocationByteCount()) {
          break label433;
        }
        i = 1;
        continue;
        if ((localBitmap.getWidth() == outWidth) && (localBitmap.getHeight() == outHeight))
        {
          i = inSampleSize;
          if (i == 1)
          {
            i = 1;
            continue;
          }
        }
        i = 0;
      }
      label395:
      ReleaseManager.c();
      Timber.c("BitmapPool", "No matching candidates found.", new Object[0]);
      return null;
      break label92;
      label418:
      i = 0;
      continue;
      label423:
      i = 0;
      break label116;
      label428:
      i = 0;
      break label116;
      label433:
      i = 0;
    }
  }
  
  public final void a(int paramInt)
  {
    Object localObject3;
    synchronized (mMutex)
    {
      mMonitor.a(paramInt);
      Timber.c("BitmapPool", "Clearing unused bitmaps from pool", new Object[0]);
      localObject3 = mMonitor.b();
      ArrayList localArrayList = new ArrayList();
      localObject3 = mUnusedBitmaps.iterator();
      while (((Iterator)localObject3).hasNext())
      {
        Object localObject4 = (awl)((Iterator)localObject3).next();
        if (((awl)localObject4).a() <= paramInt)
        {
          localObject4 = ((awl)localObject4).b();
          if (localObject4 != null) {
            localArrayList.add(localObject4);
          }
        }
      }
    }
    Iterator localIterator = ((List)localObject2).iterator();
    while (localIterator.hasNext())
    {
      localObject3 = (Bitmap)localIterator.next();
      mBitmapCache.remove(localObject3);
    }
  }
  
  public final void a(@cgc final Bitmap paramBitmap)
  {
    if ((paramBitmap == null) || (paramBitmap.getConfig() == null) || (!paramBitmap.isMutable()) || (paramBitmap.isRecycled())) {
      return;
    }
    awg localawg = mMonitor;
    String str = awg.c();
    awl localawl;
    synchronized (mMutex)
    {
      localawl = localawg.a(paramBitmap);
      mAddedCount += 1;
      if (mAddedList.size() >= 5) {
        mAddedList.removeFirst();
      }
    }
    mAddedList.addLast(str);
    localawg.a(paramBitmap, localawl);
    bgp.b(new Runnable()
    {
      public final void run()
      {
        avq localavq = avq.this;
        Bitmap localBitmap = paramBitmap;
        bgp.b();
        synchronized (mMutex)
        {
          if (mBitmapCache.contains(localBitmap))
          {
            if (!ReleaseManager.c()) {
              break label61;
            }
            throw new RuntimeException("You shouldn't add the same bitmap in twice!!");
          }
        }
        mBitmapCache.add(localBitmap);
        label61:
      }
    });
  }
}

/* Location:
 * Qualified Name:     avq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */