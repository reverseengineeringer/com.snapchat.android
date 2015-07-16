import android.graphics.Bitmap;
import android.os.Build.VERSION;
import com.snapchat.android.util.debug.ReleaseManager;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class axe
{
  private static final axe INSTANCE = new axe();
  private static final String TAG = "BitmapPoolMonitor";
  private static final boolean VERBOSE = false;
  private final Map<Integer, axj> mInfoMap = du.b();
  public final Object mMutex = new Object();
  private final ReleaseManager mReleaseManager;
  
  private axe()
  {
    this(ReleaseManager.a());
  }
  
  private axe(ReleaseManager paramReleaseManager)
  {
    mReleaseManager = paramReleaseManager;
  }
  
  public static axe a()
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
  
  public final axj a(Bitmap paramBitmap)
  {
    synchronized (mMutex)
    {
      Integer localInteger = Integer.valueOf(paramBitmap.hashCode());
      if (mInfoMap.containsKey(localInteger))
      {
        paramBitmap = (axj)mInfoMap.get(localInteger);
        return paramBitmap;
      }
      paramBitmap = new axj(paramBitmap);
      return paramBitmap;
    }
  }
  
  public final void a(int paramInt)
  {
    if (!ReleaseManager.c()) {
      return;
    }
    Object localObject = b();
    mLostBitmaps.size();
    mUnusedBitmaps.size();
    Iterator localIterator = mUnusedBitmaps.iterator();
    int k = 0;
    int m = 0;
    int j = 0;
    int i = 0;
    int n;
    if (localIterator.hasNext())
    {
      axj localaxj = (axj)localIterator.next();
      Bitmap localBitmap = localaxj.b();
      if (localBitmap == null) {
        break label177;
      }
      if (Build.VERSION.SDK_INT >= 19) {}
      for (n = localBitmap.getAllocationByteCount();; n = localBitmap.getByteCount())
      {
        if ((paramInt >= 0) && (localaxj.a() > paramInt)) {
          break label145;
        }
        m += 1;
        k += n;
        break;
      }
      label145:
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
      localObject = mUsedBitmaps;
      return;
      label177:
      n = i;
      i = j;
      j = n;
    }
  }
  
  public final void a(Bitmap paramBitmap, axj paramaxj)
  {
    synchronized (mMutex)
    {
      int i = paramBitmap.hashCode();
      mInfoMap.put(Integer.valueOf(i), paramaxj);
      return;
    }
  }
  
  public final axe.a b()
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList();
    axj localaxj;
    synchronized (mMutex)
    {
      Iterator localIterator = mInfoMap.entrySet().iterator();
      if (!localIterator.hasNext()) {
        break label156;
      }
      localaxj = (axj)((Map.Entry)localIterator.next()).getValue();
      if (localaxj.b() == null)
      {
        localArrayList1.add(localaxj);
        localIterator.remove();
      }
    }
    if (mAddedCount > mRemovedCount) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        localArrayList2.add(localaxj);
        break;
      }
      localArrayList3.add(localaxj);
      break;
      label156:
      return new axe.a(localList, localArrayList2, localArrayList3);
    }
  }
  
  public final class a
  {
    @chc
    public final List<axj> mLostBitmaps;
    @chc
    public final List<axj> mUnusedBitmaps;
    @chc
    public final List<axj> mUsedBitmaps;
    
    public a(@chc List<axj> paramList1, @chc List<axj> paramList2)
    {
      mLostBitmaps = paramList1;
      mUnusedBitmaps = paramList2;
      List localList;
      mUsedBitmaps = localList;
    }
  }
}

/* Location:
 * Qualified Name:     axe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */