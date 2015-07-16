import android.os.Bundle;
import android.text.TextUtils;
import com.snapchat.android.ads.AdRequestError;
import com.snapchat.android.ads.AdResolutionState;
import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.inject.Provider;

public final class zv
  extends zy
  implements nl
{
  private final nm a;
  private final akj.a e;
  private final aad f;
  private final ni g;
  private final akl h;
  
  public zv(@chc akl paramakl, @chc StoryCollection paramStoryCollection)
  {
    this(zz.a(), nm.a(), new akj.a(), new aad(paramakl, paramStoryCollection), paramakl, paramStoryCollection);
  }
  
  private zv(@chc zz paramzz, @chc nm paramnm, @chc akj.a parama, @chc aad paramaad, @chc akl paramakl, @chc StoryCollection paramStoryCollection)
  {
    super(paramzz, paramakl, paramStoryCollection);
    a = ((nm)co.a(paramnm));
    e = ((akj.a)co.a(parama));
    f = ((aad)co.a(paramaad));
    h = ((akl)co.a(paramakl));
    paramnm = paramStoryCollection.k();
    paramzz = new nn.a();
    mAdUnitId = paramnm.c();
    mTimeoutSeconds = paramnm.b().c().intValue();
    mFirstPosition = paramnm.b().a().intValue();
    mMinimumRemaining = paramnm.b().b().intValue();
    paramnm = paramnm.d();
    mTargetingParams = new Bundle();
    paramnm = paramnm.entrySet().iterator();
    while (paramnm.hasNext())
    {
      parama = (Map.Entry)paramnm.next();
      mTargetingParams.putString((String)parama.getKey(), (String)parama.getValue());
    }
    paramzz = new nn(mTimeoutSeconds, mFirstPosition, mMinimumRemaining, mAdUnitId, mTargetingParams, (byte)0);
    g = a.a(paramzz, this);
  }
  
  /* Error */
  public final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 171	zv:b	Lcom/snapchat/android/model/StoryCollection;
    //   4: aload_0
    //   5: getfield 173	zv:d	Lakl;
    //   8: invokevirtual 176	com/snapchat/android/model/StoryCollection:b	(Lakl;)I
    //   11: istore_1
    //   12: aload_0
    //   13: getfield 171	zv:b	Lcom/snapchat/android/model/StoryCollection;
    //   16: astore_3
    //   17: aload_0
    //   18: getfield 168	zv:g	Lni;
    //   21: astore 4
    //   23: aload_0
    //   24: invokevirtual 178	zv:f	()Z
    //   27: istore_2
    //   28: aload 4
    //   30: getfield 184	ni:mMutex	Ljava/lang/Object;
    //   33: astore_3
    //   34: aload_3
    //   35: monitorenter
    //   36: iload_2
    //   37: ifeq +42 -> 79
    //   40: aload 4
    //   42: invokevirtual 186	ni:d	()Z
    //   45: ifeq +34 -> 79
    //   48: aload 4
    //   50: aload 4
    //   52: getfield 189	ni:mNextUnviewedPosition	I
    //   55: putfield 192	ni:mNextPosition	I
    //   58: aload 4
    //   60: iconst_1
    //   61: putfield 196	ni:mInPlayback	Z
    //   64: aload 4
    //   66: iload_2
    //   67: putfield 199	ni:mInLiveSection	Z
    //   70: aload 4
    //   72: iload_1
    //   73: invokevirtual 202	ni:c	(I)V
    //   76: aload_3
    //   77: monitorexit
    //   78: return
    //   79: aload 4
    //   81: aload 4
    //   83: getfield 206	ni:mStoryAdStreamRequestInfo	Lnn;
    //   86: getfield 207	nn:mFirstPosition	I
    //   89: putfield 192	ni:mNextPosition	I
    //   92: goto -34 -> 58
    //   95: astore 4
    //   97: aload_3
    //   98: monitorexit
    //   99: aload 4
    //   101: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	102	0	this	zv
    //   11	62	1	i	int
    //   27	40	2	bool	boolean
    //   16	82	3	localObject1	Object
    //   21	61	4	localni	ni
    //   95	5	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   40	58	95	finally
    //   58	78	95	finally
    //   79	92	95	finally
    //   97	99	95	finally
  }
  
  public final void a(@chc aka paramaka, @chc SnapViewSessionStopReason arg2, int paramInt)
  {
    int i = b.b(d);
    if (paramaka.W())
    {
      paramaka = mResponse;
      if (???.isErrorReason())
      {
        ni localni = g;
        synchronized (mMutex)
        {
          localni.b(paramaka);
          localni.c(i);
          return;
        }
      }
      g.a(paramaka, paramInt, i);
      return;
    }
    g.b(i);
  }
  
  public final void a(AdRequestError paramAdRequestError)
  {
    paramAdRequestError = b;
  }
  
  public final void a(@chc final nf paramnf)
  {
    bhp.a(new Runnable()
    {
      public final void run()
      {
        b(paramnf);
      }
    });
  }
  
  public final void b()
  {
    ni localni = g;
    synchronized (mMutex)
    {
      mInPlayback = false;
      return;
    }
  }
  
  protected final void b(@chc nf paramnf)
  {
    Object localObject2 = e;
    akl localakl = h;
    Object localObject1;
    Object localObject3;
    int i;
    boolean bool;
    int j;
    if (paramnf.a().booleanValue())
    {
      localObject1 = AdResolutionState.NO_FILL;
      if (localObject1 != AdResolutionState.SUCCESS) {
        break label289;
      }
      localObject3 = mAdResponseFieldBundle;
      i = ((Bundle)localObject3).getInt("type");
      bool = ((Bundle)localObject3).getBoolean("media_zipped_with_overlay");
      j = (int)((Bundle)localObject3).getDouble("duration");
      localObject3 = mTransformedUrl;
      localObject3 = (String)mEndpointProvider.get() + (String)localObject3;
      Bundle localBundle = new Bundle();
      localBundle.putString("only_download_raw_media", "true");
      localBundle.putString(mDiscoverConfiguration.c(), mDiscoverConfiguration.d());
      localObject2 = auo.a((String)localObject3, localBundle);
      localObject3 = paramnf.c();
    }
    label289:
    for (paramnf = new akj(localakl, paramnf, (AdResolutionState)localObject1, (String)localObject2, mTransformedUrl, (String)localObject3, mAdStreamPosition, i, bool, j);; paramnf = new akj(localakl, paramnf, (AdResolutionState)localObject1))
    {
      localObject1 = b;
      c.a(paramnf, StoryLoadingContext.LOAD_FROM_VIEWING);
      localObject1 = f;
      paramnf.Y();
      f = paramnf;
      return;
      if (mAdRequestError != null)
      {
        localObject1 = AdResolutionState.ERROR;
        break;
      }
      if ((TextUtils.isEmpty(mDiscoverConfiguration.c())) || (TextUtils.isEmpty(mDiscoverConfiguration.d())))
      {
        localObject1 = AdResolutionState.ERROR;
        break;
      }
      localObject1 = AdResolutionState.SUCCESS;
      break;
    }
  }
  
  @chd
  public final aka c()
  {
    Object localObject2 = null;
    aad localaad = f;
    Object localObject1 = localObject2;
    if (localaad.a())
    {
      if (f == null)
      {
        a.a(b.l(), fz.AD_NOT_READY_RESOLVING);
        localObject1 = localObject2;
      }
    }
    else
    {
      if (localObject1 == null) {
        break label231;
      }
      d = ((akl)localObject1);
    }
    for (h = 0;; h += 1)
    {
      localObject1 = d;
      localObject1 = c;
      localObject1 = d;
      localObject1 = f;
      int i = g;
      i = h;
      b.b(d);
      g += 1;
      if ((b instanceof akc)) {
        b.a(h);
      }
      localObject1 = d;
      if (!((akl)localObject1).W()) {
        d = ((akl)localObject1);
      }
      return (aka)localObject1;
      if (f.S())
      {
        localObject1 = f;
        a.a(b.l(), fz.AD_NOT_READY_DOWNLOADING);
        localObject1 = localObject2;
        break;
      }
      localObject1 = f;
      localObject1 = f;
      f = null;
      break;
      label231:
      d = b.d(e);
      e = d;
    }
  }
  
  @chd
  public final aka d()
  {
    aad localaad = f;
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (localaad.a())
    {
      localObject1 = localObject2;
      if (f != null)
      {
        localObject1 = localObject2;
        if (!f.S()) {
          localObject1 = f;
        }
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = b.c(e);
    }
    localObject1 = c;
    localObject1 = d;
    localObject1 = f;
    int i = g;
    i = h;
    b.b(d);
    return (aka)localObject2;
  }
}

/* Location:
 * Qualified Name:     zv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */