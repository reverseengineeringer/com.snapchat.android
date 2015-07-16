import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.support.v4.util.LruCache;
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
public final class bgy
{
  private static final bgy INSTANCE = new bgy();
  private static final float LRU_CACHE_SIZE = 0.025F;
  private static final String TAG = "FriendsProfileImagesCache";
  private final awo mBitmapPool;
  private final axn mCache;
  private HashSet<Integer> mPendingRequestIds = new HashSet();
  private final LruCache<String, bgy.a> mProfileImagesCache;
  protected final Object mProfileImagesCacheMutex = new Object();
  private apg mServiceListener = new apg()
  {
    public final void a(anh paramAnonymousanh)
    {
      int i = aph.a(paramAnonymousanh);
      if (bgy.a(bgy.this).contains(Integer.valueOf(i)))
      {
        bgy.a(bgy.this).remove(Integer.valueOf(i));
        if ((paramAnonymousanh instanceof ans))
        {
          paramAnonymousanh = a.iterator();
          while (paramAnonymousanh.hasNext())
          {
            String str = (String)paramAnonymousanh.next();
            bgy.a(bgy.this, str);
          }
        }
      }
    }
  };
  
  private bgy()
  {
    this(awo.a(), axo.PROFILE_IMAGE_CACHE);
  }
  
  private bgy(awo paramawo, axn paramaxn)
  {
    mBitmapPool = paramawo;
    mCache = paramaxn;
    int i = (int)((int)(Runtime.getRuntime().maxMemory() / 1024L) * 0.025F);
    new StringBuilder("FriendsProfileImagesCache has size = ").append(i).append(" kilobytes");
    mProfileImagesCache = new LruCache(i) {};
    aph.a().a(1031, mServiceListener);
  }
  
  public static bgy a()
  {
    return INSTANCE;
  }
  
  private void b(final String paramString)
  {
    bgv localbgv = new bgv(paramString);
    new bgv.1(localbgv, new bgx()
    {
      public final void a(List<Bitmap> paramAnonymousList)
      {
        Object localObject = mProfileImagesCacheMutex;
        if (paramAnonymousList == null) {}
        try
        {
          bgy.b(bgy.this).remove(paramString);
          return;
        }
        finally {}
        if ((bgy.a)bgy.b(bgy.this).put(paramString, new bgy.a(bgy.this, paramAnonymousList)) != null)
        {
          paramAnonymousList = paramAnonymousList.iterator();
          while (paramAnonymousList.hasNext())
          {
            Bitmap localBitmap = (Bitmap)paramAnonymousList.next();
            bgy.c(bgy.this).a(localBitmap);
          }
        }
        bbo.a().a(new bcn(paramString));
      }
    }).executeOnExecutor(mExecutor, new Void[0]);
  }
  
  @awj
  public final List<Bitmap> a(String paramString)
  {
    synchronized (mProfileImagesCacheMutex)
    {
      paramString = (bgy.a)mProfileImagesCache.get(paramString);
      if (paramString == null) {
        return null;
      }
      paramString = mBitmapList;
      return paramString;
    }
  }
  
  @awj
  public final void a(Context paramContext, Friend paramFriend)
  {
    for (;;)
    {
      synchronized (mProfileImagesCacheMutex)
      {
        if ((mProfileImagesFetched) && (!mCache.d(paramFriend.l())))
        {
          new StringBuilder("friends profile images - friend ").append(paramFriend.l()).append(" has no profile images");
          return;
        }
        if ((bgy.a)mProfileImagesCache.get(paramFriend.l()) == null)
        {
          mProfileImagesCache.put(paramFriend.l(), new bgy.a(null));
          if (mCache.d(paramFriend.l())) {
            b(paramFriend.l());
          }
        }
        else
        {
          return;
        }
      }
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramFriend.l());
      paramFriend = aph.a();
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
 * Qualified Name:     bgy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */