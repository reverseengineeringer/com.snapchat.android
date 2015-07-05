import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.support.v4.util.LruCache;
import com.snapchat.android.Timber;
import com.snapchat.android.model.Friend;
import com.snapchat.android.util.profileimages.ProfileImageUtils.ProfileImageSize;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.inject.Singleton;

@Singleton
public final class bfy
{
  private static final bfy INSTANCE = new bfy();
  private static final float LRU_CACHE_SIZE = 0.025F;
  private static final String TAG = "FriendsProfileImagesCache";
  private final avq mBitmapPool;
  private final awp mCache;
  private HashSet<Integer> mPendingRequestIds = new HashSet();
  private final LruCache<String, bfy.a> mProfileImagesCache;
  protected final Object mProfileImagesCacheMutex = new Object();
  private aok mServiceListener = new aok()
  {
    public final void a(amk paramAnonymousamk)
    {
      int i = aol.a(paramAnonymousamk);
      if (bfy.a(bfy.this).contains(Integer.valueOf(i)))
      {
        bfy.a(bfy.this).remove(Integer.valueOf(i));
        if ((paramAnonymousamk instanceof amv))
        {
          paramAnonymousamk = a.iterator();
          while (paramAnonymousamk.hasNext())
          {
            String str = (String)paramAnonymousamk.next();
            bfy.a(bfy.this, str);
          }
        }
      }
    }
  };
  
  private bfy()
  {
    this(avq.a(), awq.PROFILE_IMAGE_CACHE);
  }
  
  private bfy(avq paramavq, awp paramawp)
  {
    mBitmapPool = paramavq;
    mCache = paramawp;
    int i = (int)((int)(Runtime.getRuntime().maxMemory() / 1024L) * 0.025F);
    Timber.b("FriendsProfileImagesCache", "FriendsProfileImagesCache has size = " + i + " kilobytes", new Object[0]);
    mProfileImagesCache = new LruCache(i) {};
    aol.a().a(1031, mServiceListener);
  }
  
  public static bfy a()
  {
    return INSTANCE;
  }
  
  private void b(final String paramString)
  {
    bfv localbfv = new bfv(paramString);
    new bfv.1(localbfv, new bfx()
    {
      public final void a(List<Bitmap> paramAnonymousList)
      {
        Object localObject = mProfileImagesCacheMutex;
        if (paramAnonymousList == null) {}
        try
        {
          bfy.b(bfy.this).remove(paramString);
          return;
        }
        finally {}
        if ((bfy.a)bfy.b(bfy.this).put(paramString, new bfy.a(bfy.this, paramAnonymousList)) != null)
        {
          paramAnonymousList = paramAnonymousList.iterator();
          while (paramAnonymousList.hasNext())
          {
            Bitmap localBitmap = (Bitmap)paramAnonymousList.next();
            bfy.c(bfy.this).a(localBitmap);
          }
        }
        ban.a().a(new bbn(paramString));
      }
    }).executeOnExecutor(mExecutor, new Void[0]);
  }
  
  @avl
  public final List<Bitmap> a(String paramString)
  {
    synchronized (mProfileImagesCacheMutex)
    {
      paramString = (bfy.a)mProfileImagesCache.get(paramString);
      if (paramString == null) {
        return null;
      }
      paramString = mBitmapList;
      return paramString;
    }
  }
  
  @avl
  public final void a(Context paramContext, Friend paramFriend)
  {
    for (;;)
    {
      synchronized (mProfileImagesCacheMutex)
      {
        if ((mProfileImagesFetched) && (!mCache.d(paramFriend.h())))
        {
          Timber.c("FriendsProfileImagesCache", "friends profile images - friend " + paramFriend.h() + " has no profile images", new Object[0]);
          return;
        }
        if ((bfy.a)mProfileImagesCache.get(paramFriend.h()) == null)
        {
          mProfileImagesCache.put(paramFriend.h(), new bfy.a(null));
          if (mCache.d(paramFriend.h())) {
            b(paramFriend.h());
          }
        }
        else
        {
          return;
        }
      }
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramFriend.h());
      paramFriend = aol.a();
      String str = ProfileImageUtils.ProfileImageSize.THUMBNAIL.toString();
      Intent localIntent = paramFriend.b(paramContext);
      localIntent.putExtra("op_code", 1031);
      localIntent.putExtra("size", str);
      localIntent.putStringArrayListExtra("added_friends", localArrayList);
      int i = paramFriend.a(paramContext, localIntent);
      mPendingRequestIds.add(Integer.valueOf(i));
    }
  }
  
  public final void b()
  {
    synchronized (mProfileImagesCacheMutex)
    {
      Iterator localIterator = mProfileImagesCache.snapshot().entrySet().iterator();
      while (localIterator.hasNext())
      {
        Object localObject3 = nextgetValuemBitmapList;
        if (localObject3 != null)
        {
          localObject3 = ((List)localObject3).iterator();
          if (((Iterator)localObject3).hasNext())
          {
            Bitmap localBitmap = (Bitmap)((Iterator)localObject3).next();
            mBitmapPool.a(localBitmap);
          }
        }
      }
    }
    mProfileImagesCache.trimToSize(-1);
    mCache.b();
  }
  
  final class a
  {
    List<Bitmap> mBitmapList;
    
    public a()
    {
      List localList;
      mBitmapList = localList;
    }
  }
}

/* Location:
 * Qualified Name:     bfy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */