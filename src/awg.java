import android.graphics.Bitmap;
import android.os.Build.VERSION;
import com.snapchat.android.Timber;
import com.snapchat.android.util.debug.ReleaseManager;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class awg
{
  private static final awg INSTANCE = new awg();
  private static final String TAG = "BitmapPoolMonitor";
  private static final boolean VERBOSE = false;
  private final Map<Integer, awl> mInfoMap = dl.b();
  public final Object mMutex = new Object();
  private final ReleaseManager mReleaseManager;
  
  private awg()
  {
    this(ReleaseManager.a());
  }
  
  private awg(ReleaseManager paramReleaseManager)
  {
    mReleaseManager = paramReleaseManager;
  }
  
  public static awg a()
  {
    return INSTANCE;
  }
  
  public static String c()
  {
    if (ReleaseManager.c())
    {
      Throwable localThrowable = new Throwable();
      StringWriter localStringWriter = new StringWriter();
      localThrowable.printStackTrace(new PrintWriter(localStringWriter));
      return localStringWriter.toString();
    }
    return "";
  }
  
  public final awl a(Bitmap paramBitmap)
  {
    synchronized (mMutex)
    {
      Integer localInteger = Integer.valueOf(paramBitmap.hashCode());
      if (mInfoMap.containsKey(localInteger))
      {
        paramBitmap = (awl)mInfoMap.get(localInteger);
        return paramBitmap;
      }
      paramBitmap = new awl(paramBitmap);
      return paramBitmap;
    }
  }
  
  public final void a(int paramInt)
  {
    if (!ReleaseManager.c()) {
      return;
    }
    awg.a locala = b();
    Timber.i("BitmapPoolMonitor", "Lost bitmaps: %d", new Object[] { Integer.valueOf(mLostBitmaps.size()) });
    Timber.i("BitmapPoolMonitor", "Unused bitmaps: %d", new Object[] { Integer.valueOf(mUnusedBitmaps.size()) });
    Iterator localIterator = mUnusedBitmaps.iterator();
    int k = 0;
    int m = 0;
    int j = 0;
    int i = 0;
    int n;
    if (localIterator.hasNext())
    {
      awl localawl = (awl)localIterator.next();
      Bitmap localBitmap = localawl.b();
      if (localBitmap == null) {
        break label287;
      }
      if (Build.VERSION.SDK_INT >= 19) {}
      for (n = localBitmap.getAllocationByteCount();; n = localBitmap.getByteCount())
      {
        if ((paramInt >= 0) && (localawl.a() > paramInt)) {
          break label177;
        }
        m += 1;
        k += n;
        break;
      }
      label177:
      n = j + n;
      j = i + 1;
      i = n;
    }
    for (;;)
    {
      n = j;
      j = i;
      i = n;
      break;
      Timber.i("BitmapPoolMonitor", "Bitmaps used less than %d times: %d total bytes %d ", new Object[] { Integer.valueOf(paramInt), Integer.valueOf(m), Integer.valueOf(k) });
      Timber.i("BitmapPoolMonitor", "Bitmaps used more than %d times: %d total bytes %d ", new Object[] { Integer.valueOf(paramInt), Integer.valueOf(i), Integer.valueOf(j) });
      Timber.i("BitmapPoolMonitor", "Currently used bitmaps: %d", new Object[] { mUsedBitmaps });
      return;
      label287:
      n = i;
      i = j;
      j = n;
    }
  }
  
  public final void a(Bitmap paramBitmap, awl paramawl)
  {
    synchronized (mMutex)
    {
      int i = paramBitmap.hashCode();
      mInfoMap.put(Integer.valueOf(i), paramawl);
      return;
    }
  }
  
  public final awg.a b()
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList();
    awl localawl;
    synchronized (mMutex)
    {
      Iterator localIterator = mInfoMap.entrySet().iterator();
      if (!localIterator.hasNext()) {
        break label156;
      }
      localawl = (awl)((Map.Entry)localIterator.next()).getValue();
      if (localawl.b() == null)
      {
        localArrayList1.add(localawl);
        localIterator.remove();
      }
    }
    if (mAddedCount > mRemovedCount) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        localArrayList2.add(localawl);
        break;
      }
      localArrayList3.add(localawl);
      break;
      label156:
      return new awg.a(localList, localArrayList2, localArrayList3);
    }
  }
  
  public final class a
  {
    @cgb
    public final List<awl> mLostBitmaps;
    @cgb
    public final List<awl> mUnusedBitmaps;
    @cgb
    public final List<awl> mUsedBitmaps;
    
    public a(@cgb List<awl> paramList1, @cgb List<awl> paramList2)
    {
      mLostBitmaps = paramList1;
      mUnusedBitmaps = paramList2;
      List localList;
      mUsedBitmaps = localList;
    }
  }
}

/* Location:
 * Qualified Name:     awg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */