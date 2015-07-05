import com.snapchat.android.Timber;
import com.snapchat.android.model.MediaMailingMetadata.PostStatus;
import com.snapchat.android.model.MediaMailingMetadata.SendStatus;
import com.snapchat.android.model.Mediabryo;

final class yt$2
  extends aww
{
  yt$2(yt paramyt, boolean paramBoolean1, aim paramaim, boolean paramBoolean2) {}
  
  protected final void a(@cgb Boolean paramBoolean)
  {
    super.a(paramBoolean);
    if (a)
    {
      if (!paramBoolean.booleanValue()) {
        break label56;
      }
      d.g(b);
    }
    for (;;)
    {
      if (c)
      {
        if (!paramBoolean.booleanValue()) {
          break;
        }
        d.i(b);
      }
      return;
      label56:
      Timber.c("SaveSentSnapToCacheTask", "Can not send snap because it was not saved to the cache. | Client ID: %s", new Object[] { b.mClientId });
      d.a.a(b, MediaMailingMetadata.SendStatus.FAILED);
    }
    Timber.c("SaveSentSnapToCacheTask", "Can not post story because is was not saved to the cache. | Client ID: %s", new Object[] { b.mClientId });
    d.a.a(b, MediaMailingMetadata.PostStatus.FAILED);
  }
  
  protected final void onPreExecute()
  {
    super.onPreExecute();
    if (a) {
      d.f(b);
    }
    if (c) {
      d.h(b);
    }
  }
}

/* Location:
 * Qualified Name:     yt.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */