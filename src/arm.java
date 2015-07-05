import com.snapchat.android.ads.AdRequestError;
import com.snapchat.android.ads.AdResolutionState;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.rendering.SnapMediaRenderer;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;

public final class arm
  implements arj
{
  private final yw a;
  private final aje b;
  private final aio c;
  private final aop d;
  private ark e;
  
  public arm(aje paramaje, aio paramaio)
  {
    this(new yw(), paramaje, paramaio, aop.a());
  }
  
  private arm(yw paramyw, aje paramaje, aio paramaio, aop paramaop)
  {
    a = paramyw;
    b = paramaje;
    c = paramaio;
    d = paramaop;
  }
  
  @cgb
  public final aje a()
  {
    return b;
  }
  
  public final void a(ark paramark)
  {
    e = paramark;
  }
  
  public final void a(boolean paramBoolean) {}
  
  @cgc
  public final aio b()
  {
    return c;
  }
  
  @cgb
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
    ajp localajp;
    Object localObject;
    aop localaop;
    lf locallf;
    if (b.Y())
    {
      localajp = (ajp)b;
      if (mAdResolutionState != AdResolutionState.NO_FILL) {
        break label192;
      }
      localObject = SnapViewSessionStopReason.UNFILLED_AD_PLACEHOLDER;
      c.a(localajp, (SnapViewSessionStopReason)localObject, 0);
      localaop = d;
      locallf = new lf();
      posterId = mUsername;
      adsnapId = mAdKey;
      storySnapId = localajp.d();
      localObject = mResponse.mAdRequestError;
      if ((localObject != null) && (mErrorCode != null)) {
        break label199;
      }
      localObject = fq.FAILED;
    }
    for (;;)
    {
      additionalInfo = ((fq)localObject);
      viewLocation = b.c;
      storyType = aop.c(localajp);
      adIndexPos = Long.valueOf(mAdPosition);
      if (aop.a(localajp)) {
        geoFence = "LOCAL";
      }
      ScAnalyticsEventEngine.a(locallf);
      a.b(b);
      e.a(this, SnapViewSessionStopReason.UNFILLED_AD_PLACEHOLDER);
      return;
      label192:
      localObject = SnapViewSessionStopReason.ERROR_UNABLE_TO_SHOW_MEDIA;
      break;
      label199:
      switch (aop.1.a[mErrorCode.ordinal()])
      {
      default: 
        localObject = fq.FAILED;
        break;
      case 1: 
        localObject = fq.SERVER_INTERNAL_ERROR;
        break;
      case 2: 
        localObject = fq.SERVER_INVALID_REQUEST_ERROR;
        break;
      case 3: 
        localObject = fq.SERVER_NETWORK_ERROR;
        break;
      case 4: 
        localObject = fq.SERVER_NO_FILL_ERROR;
        break;
      case 5: 
        localObject = fq.SERVER_OTHER_ERROR;
        break;
      case 6: 
        localObject = fq.CONTENT_NO_FILL;
        break;
      case 7: 
        localObject = fq.TIMEOUT;
        break;
      case 8: 
      case 9: 
      case 10: 
      case 11: 
        localObject = fq.CLIENT_ERROR;
      }
    }
  }
  
  public final void h() {}
  
  public final void i() {}
  
  public final void j() {}
}

/* Location:
 * Qualified Name:     arm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */