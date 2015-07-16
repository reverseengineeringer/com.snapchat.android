import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;

@bxs
public final class awo
{
  private static final int DEFAULT_SIZE = 6;
  private static final String TAG = "BitmapPool";
  private static final awo sInstance = new awo();
  @bxp
  public final PriorityQueue<Bitmap> mBitmapCache = new PriorityQueue(6, new awr());
  public final axe mMonitor;
  public final Object mMutex = new Object();
  private final ReleaseManager mReleaseManager;
  
  private awo()
  {
    this(axe.a(), ReleaseManager.a());
  }
  
  private awo(axe paramaxe, ReleaseManager paramReleaseManager)
  {
    mMonitor = paramaxe;
    mReleaseManager = paramReleaseManager;
  }
  
  public static awo a()
  {
    return sInstance;
  }
  
  @chd
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
  
  @awj
  @chd
  public final Bitmap a(@chc BitmapFactory.Options arg1, boolean paramBoolean)
  {
    Iterator localIterator;
    Bitmap localBitmap;
    Object localObject3;
    Object localObject4;
    synchronized (mMutex)
    {
      localIterator = mBitmapCache.iterator();
      if (!localIterator.hasNext()) {
        break label373;
      }
      localBitmap = (Bitmap)localIterator.next();
      localObject3 = inPreferredConfig;
      localObject4 = localBitmap.getConfig();
      switch (aws.1.$SwitchMap$android$graphics$Bitmap$Config[localObject4.ordinal()])
      {
      case 1: 
        label92:
        if (!ReleaseManager.e()) {
          break label395;
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
            break label385;
          }
          if (localBitmap.getWidth() != outWidth) {
            break label385;
          }
        }
      }
    }
    while (i != 0)
    {
      localObject3 = mMonitor;
      localObject4 = axe.c();
      synchronized (mMutex)
      {
        axj localaxj = ((axe)localObject3).a(localBitmap);
        localaxj.a((String)localObject4);
        ((axe)localObject3).a(localBitmap, localaxj);
        localBitmap.setHasAlpha(true);
        localBitmap.eraseColor(0);
        localIterator.remove();
        return localBitmap;
        if ((localObject4 != localObject3) || (aws.a((Bitmap.Config)localObject4) < aws.a((Bitmap.Config)localObject3))) {
          break label390;
        }
        i = 1;
        break label116;
        i = outWidth / inSampleSize * (outHeight / inSampleSize) * aws.a(inPreferredConfig);
        if (i <= localBitmap.getAllocationByteCount())
        {
          localObject3 = inPreferredConfig;
          localBitmap.getConfig();
        }
        if (i > localBitmap.getAllocationByteCount()) {
          break label400;
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
      label373:
      ReleaseManager.c();
      return null;
      break label92;
      label385:
      i = 0;
      continue;
      label390:
      i = 0;
      break label116;
      label395:
      i = 0;
      break label116;
      label400:
      i = 0;
    }
  }
  
  public final void a(int paramInt)
  {
    Object localObject3;
    synchronized (mMutex)
    {
      mMonitor.a(paramInt);
      localObject3 = mMonitor.b();
      ArrayList localArrayList = new ArrayList();
      localObject3 = mUnusedBitmaps.iterator();
      while (((Iterator)localObject3).hasNext())
      {
        Object localObject4 = (axj)((Iterator)localObject3).next();
        if (((axj)localObject4).a() <= paramInt)
        {
          localObject4 = ((axj)localObject4).b();
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
  
  public final void a(@chd final Bitmap paramBitmap)
  {
    if ((paramBitmap == null) || (paramBitmap.getConfig() == null) || (!paramBitmap.isMutable()) || (paramBitmap.isRecycled())) {
      return;
    }
    axe localaxe = mMonitor;
    String str = axe.c();
    axj localaxj;
    synchronized (mMutex)
    {
      localaxj = localaxe.a(paramBitmap);
      mAddedCount += 1;
      if (mAddedList.size() >= 5) {
        mAddedList.removeFirst();
      }
    }
    mAddedList.addLast(str);
    localaxe.a(paramBitmap, localaxj);
    bhp.b(new Runnable()
    {
      public final void run()
      {
        awo localawo = awo.this;
        Bitmap localBitmap = paramBitmap;
        bhp.b();
        synchronized (mMutex)
        {
          if (!mBitmapCache.contains(localBitmap)) {
            mBitmapCache.add(localBitmap);
          }
          return;
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     awo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */