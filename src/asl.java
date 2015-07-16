import com.snapchat.android.ads.AdRequestError;
import com.snapchat.android.ads.AdResolutionState;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.rendering.SnapMediaRenderer;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;

public final class asl
  implements asi
{
  private final zs a;
  private final aka b;
  private final ajk c;
  private final apl d;
  private asj e;
  
  public asl(aka paramaka, ajk paramajk)
  {
    this(new zs(), paramaka, paramajk, apl.a());
  }
  
  private asl(zs paramzs, aka paramaka, ajk paramajk, apl paramapl)
  {
    a = paramzs;
    b = paramaka;
    c = paramajk;
    d = paramapl;
  }
  
  @chc
  public final aka a()
  {
    return b;
  }
  
  public final void a(asj paramasj)
  {
    e = paramasj;
  }
  
  public final void a(boolean paramBoolean) {}
  
  @chd
  public final ajk b()
  {
    return c;
  }
  
  @chc
  public final SnapMediaRenderer c()
  {
    return null;
  }
  
  public final boolean e()
  {
    return false;
  }
  
  public final boolean f()
  {
    return false;
  }
  
  public final void g()
  {
    akj localakj;
    Object localObject;
    apl localapl;
    lx locallx;
    if (b.W())
    {
      localakj = (akj)b;
      if (mAdResolutionState != AdResolutionState.NO_FILL) {
        break label192;
      }
      localObject = SnapViewSessionStopReason.UNFILLED_AD_PLACEHOLDER;
      c.a(localakj, (SnapViewSessionStopReason)localObject, 0);
      localapl = d;
      locallx = new lx();
      posterId = mUsername;
      adsnapId = mAdKey;
      storySnapId = localakj.d();
      localObject = mResponse.mAdRequestError;
      if ((localObject != null) && (mErrorCode != null)) {
        break label199;
      }
      localObject = fz.FAILED;
    }
    for (;;)
    {
      additionalInfo = ((fz)localObject);
      viewLocation = b.c;
      storyType = apl.c(localakj);
      adIndexPos = Long.valueOf(mAdPosition);
      if (apl.a(localakj)) {
        geoFence = "LOCAL";
      }
      ScAnalyticsEventEngine.a(locallx);
      a.b(b);
      e.a(this, SnapViewSessionStopReason.UNFILLED_AD_PLACEHOLDER);
      return;
      label192:
      localObject = SnapViewSessionStopReason.ERROR_UNABLE_TO_SHOW_MEDIA;
      break;
      label199:
      switch (apl.1.a[mErrorCode.ordinal()])
      {
      default: 
        localObject = fz.FAILED;
        break;
      case 1: 
        localObject = fz.SERVER_INTERNAL_ERROR;
        break;
      case 2: 
        localObject = fz.SERVER_INVALID_REQUEST_ERROR;
        break;
      case 3: 
        localObject = fz.SERVER_NETWORK_ERROR;
        break;
      case 4: 
        localObject = fz.SERVER_NO_FILL_ERROR;
        break;
      case 5: 
        localObject = fz.SERVER_OTHER_ERROR;
        break;
      case 6: 
        localObject = fz.CONTENT_NO_FILL;
        break;
      case 7: 
        localObject = fz.TIMEOUT;
        break;
      case 8: 
      case 9: 
      case 10: 
      case 11: 
        localObject = fz.CLIENT_ERROR;
      }
    }
  }
  
  public final void h() {}
  
  public final void i() {}
}

/* Location:
 * Qualified Name:     asl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */