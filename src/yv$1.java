import com.snapchat.android.Timber;
import com.snapchat.android.model.MediaMailingMetadata.UploadStatus;
import com.snapchat.android.model.Mediabryo;
import java.util.HashMap;

public final class yv$1
  extends aww
{
  public yv$1(yv paramyv, aim paramaim) {}
  
  protected final void a(@cgb Boolean paramBoolean)
  {
    super.a(paramBoolean);
    if (paramBoolean.booleanValue())
    {
      b.a(a);
      yv.a().remove(a.mClientId);
      return;
    }
    Timber.c("SaveSentSnapToCacheTask", "Can not upload media because it was not saved to the cache. | Client ID: %s", new Object[] { a.mClientId });
    yv.a(b).a(a, MediaMailingMetadata.UploadStatus.FAILED);
  }
}

/* Location:
 * Qualified Name:     yv.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */