import android.os.Bundle;
import android.text.TextUtils;
import com.snapchat.android.Timber;
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

public final class yz
  extends zc
  implements mu
{
  private final mv a;
  private final ajp.a e;
  private final zg f;
  private final mr g;
  private final ajr h;
  
  public yz(@cgb ajr paramajr, @cgb StoryCollection paramStoryCollection)
  {
    this(zd.a(), mv.a(), new ajp.a(), new zg(paramajr, paramStoryCollection), paramajr, paramStoryCollection);
  }
  
  private yz(@cgb zd paramzd, @cgb mv parammv, @cgb ajp.a parama, @cgb zg paramzg, @cgb ajr paramajr, @cgb StoryCollection paramStoryCollection)
  {
    super(paramzd, paramajr, paramStoryCollection);
    a = ((mv)ck.a(parammv));
    e = ((ajp.a)ck.a(parama));
    f = ((zg)ck.a(paramzg));
    h = ((ajr)ck.a(paramajr));
    parammv = paramStoryCollection.s();
    paramzd = new mw.a();
    mAdUnitId = parammv.c();
    mTimeoutSeconds = parammv.b().c().intValue();
    mFirstPosition = parammv.b().a().intValue();
    mMinimumRemaining = parammv.b().b().intValue();
    parammv = parammv.d();
    mTargetingParams = new Bundle();
    parammv = parammv.entrySet().iterator();
    while (parammv.hasNext())
    {
      parama = (Map.Entry)parammv.next();
      mTargetingParams.putString((String)parama.getKey(), (String)parama.getValue());
    }
    paramzd = new mw(mTimeoutSeconds, mFirstPosition, mMinimumRemaining, mAdUnitId, mTargetingParams, (byte)0);
    g = a.a(paramzd, this);
  }
  
  /* Error */
  public final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 171	yz:b	Lcom/snapchat/android/model/StoryCollection;
    //   4: aload_0
    //   5: getfield 173	yz:d	Lajr;
    //   8: invokevirtual 176	com/snapchat/android/model/StoryCollection:b	(Lajr;)I
    //   11: istore_1
    //   12: ldc -78
    //   14: ldc -76
    //   16: iconst_2
    //   17: anewarray 182	java/lang/Object
    //   20: dup
    //   21: iconst_0
    //   22: aload_0
    //   23: getfield 171	yz:b	Lcom/snapchat/android/model/StoryCollection;
    //   26: aastore
    //   27: dup
    //   28: iconst_1
    //   29: iload_1
    //   30: invokestatic 186	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   33: aastore
    //   34: invokestatic 191	com/snapchat/android/Timber:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   37: aload_0
    //   38: getfield 168	yz:g	Lmr;
    //   41: astore 4
    //   43: aload_0
    //   44: invokevirtual 193	yz:f	()Z
    //   47: istore_2
    //   48: aload 4
    //   50: getfield 199	mr:mMutex	Ljava/lang/Object;
    //   53: astore_3
    //   54: aload_3
    //   55: monitorenter
    //   56: iload_2
    //   57: ifeq +42 -> 99
    //   60: aload 4
    //   62: invokevirtual 201	mr:d	()Z
    //   65: ifeq +34 -> 99
    //   68: aload 4
    //   70: aload 4
    //   72: getfield 204	mr:mNextUnviewedPosition	I
    //   75: putfield 207	mr:mNextPosition	I
    //   78: aload 4
    //   80: iconst_1
    //   81: putfield 211	mr:mInPlayback	Z
    //   84: aload 4
    //   86: iload_2
    //   87: putfield 214	mr:mInLiveSection	Z
    //   90: aload 4
    //   92: iload_1
    //   93: invokevirtual 217	mr:c	(I)V
    //   96: aload_3
    //   97: monitorexit
    //   98: return
    //   99: aload 4
    //   101: aload 4
    //   103: getfield 221	mr:mStoryAdStreamRequestInfo	Lmw;
    //   106: getfield 222	mw:mFirstPosition	I
    //   109: putfield 207	mr:mNextPosition	I
    //   112: goto -34 -> 78
    //   115: astore 4
    //   117: aload_3
    //   118: monitorexit
    //   119: aload 4
    //   121: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	122	0	this	yz
    //   11	82	1	i	int
    //   47	40	2	bool	boolean
    //   53	65	3	localObject1	Object
    //   41	61	4	localmr	mr
    //   115	5	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   60	78	115	finally
    //   78	98	115	finally
    //   99	112	115	finally
    //   117	119	115	finally
  }
  
  public final void a(@cgb aje arg1, @cgb SnapViewSessionStopReason paramSnapViewSessionStopReason, int paramInt)
  {
    int i = b.b(d);
    Timber.c("AdAwareStoryChronologicalSnapProvider", "STORY-ADS: Snap viewed %s, %d remaining.", new Object[] { ???, Integer.valueOf(i) });
    if (???.Y())
    {
      mo localmo = mResponse;
      if (paramSnapViewSessionStopReason.isErrorReason())
      {
        Timber.c("AdAwareStoryChronologicalSnapProvider", "STORY-ADS: Error displaying ad snap %s, with %d remaining snaps. Reporting error.", new Object[] { ???, Integer.valueOf(i) });
        paramSnapViewSessionStopReason = g;
        synchronized (mMutex)
        {
          paramSnapViewSessionStopReason.b(localmo);
          paramSnapViewSessionStopReason.c(i);
          return;
        }
      }
      Timber.c("AdAwareStoryChronologicalSnapProvider", "STORY-ADS: Ad snap viewed %s, %dms with %d remaining snaps. Reporting tracking.", new Object[] { ???, Integer.valueOf(paramInt), Integer.valueOf(i) });
      g.a(localmo, paramInt, i);
      return;
    }
    g.b(i);
  }
  
  public final void a(AdRequestError paramAdRequestError)
  {
    Timber.c("AdAwareStoryChronologicalSnapProvider", "STORY-ADS: onAdResolutionError for %s: %s", new Object[] { b, paramAdRequestError });
  }
  
  public final void a(@cgb final mo parammo)
  {
    bgp.a(new Runnable()
    {
      public final void run()
      {
        b(parammo);
      }
    });
  }
  
  public final void b()
  {
    mr localmr = g;
    synchronized (mMutex)
    {
      mInPlayback = false;
      return;
    }
  }
  
  protected final void b(@cgb mo parammo)
  {
    Object localObject2 = e;
    ajr localajr = h;
    Object localObject1;
    Object localObject3;
    int i;
    boolean bool;
    int j;
    if (parammo.a().booleanValue())
    {
      localObject1 = AdResolutionState.NO_FILL;
      if (localObject1 != AdResolutionState.SUCCESS) {
        break label321;
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
      localObject2 = atq.a((String)localObject3, localBundle);
      localObject3 = parammo.c();
    }
    label321:
    for (parammo = new ajp(localajr, parammo, (AdResolutionState)localObject1, (String)localObject2, mTransformedUrl, (String)localObject3, mAdStreamPosition, i, bool, j);; parammo = new ajp(localajr, parammo, (AdResolutionState)localObject1))
    {
      Timber.c("AdAwareStoryChronologicalSnapProvider", "STORY-ADS: handleAdTransformResponse for %s, created: %s", new Object[] { b, parammo });
      c.a(parammo, StoryLoadingContext.LOAD_FROM_VIEWING);
      localObject1 = f;
      Timber.c("StoryAdSequencer", "STORY-ADS: New ad available for insertion in the story sequence: %s", new Object[] { parammo.aa() });
      f = parammo;
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
  
  @cgc
  public final aje c()
  {
    Object localObject2 = null;
    zg localzg = f;
    Object localObject1 = localObject2;
    if (localzg.a())
    {
      if (f == null)
      {
        Timber.c("StoryAdSequencer", "STORY-ADS: Skipped potential ad slot since ad is not resolved.", new Object[0]);
        a.a(b.h(), fq.AD_NOT_READY_RESOLVING);
        localObject1 = localObject2;
      }
    }
    else
    {
      if (localObject1 == null) {
        break label284;
      }
      d = ((ajr)localObject1);
    }
    for (h = 0;; h += 1)
    {
      Timber.c("StoryAdSequencer", "STORY-ADS: Selected next snap %s from: [config: %s, current: %s, ad: %s, index: %d, interval: %d, remaining: %d]", new Object[] { d, c, d, f, Integer.valueOf(g), Integer.valueOf(h), Integer.valueOf(b.b(d)) });
      g += 1;
      if ((b instanceof ajg)) {
        b.a(h);
      }
      localObject1 = d;
      if (!((ajr)localObject1).Y()) {
        d = ((ajr)localObject1);
      }
      return (aje)localObject1;
      if (f.R())
      {
        Timber.c("StoryAdSequencer", "STORY-ADS: Skipped potential ad slot for %s since ad is loading.", new Object[] { f });
        a.a(b.h(), fq.AD_NOT_READY_DOWNLOADING);
        localObject1 = localObject2;
        break;
      }
      Timber.c("StoryAdSequencer", "STORY-ADS: Selected ad %s as the next snap.", new Object[] { f });
      localObject1 = f;
      f = null;
      break;
      label284:
      d = b.d(e);
      e = d;
    }
  }
  
  @cgc
  public final aje d()
  {
    zg localzg = f;
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (localzg.a())
    {
      localObject1 = localObject2;
      if (f != null)
      {
        localObject1 = localObject2;
        if (!f.R()) {
          localObject1 = f;
        }
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = b.c(e);
    }
    Timber.c("StoryAdSequencer", "STORY-ADS: Selected preview snap %s from: [config: %s, current: %s, ad: %s, index: %d, interval: %d, remaining: %d]", new Object[] { localObject2, c, d, f, Integer.valueOf(g), Integer.valueOf(h), Integer.valueOf(b.b(d)) });
    return (aje)localObject2;
  }
}

/* Location:
 * Qualified Name:     yz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */