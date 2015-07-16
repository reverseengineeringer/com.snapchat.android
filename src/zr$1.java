import com.snapchat.android.model.MediaMailingMetadata.UploadStatus;
import com.snapchat.android.model.Mediabryo;
import java.util.HashMap;

public final class zr$1
  extends axu
{
  public zr$1(zr paramzr, aji paramaji) {}
  
  protected final void a(@chc Boolean paramBoolean)
  {
    super.a(paramBoolean);
    if (paramBoolean.booleanValue())
    {
      b.a(a);
      zr.a().remove(a.mClientId);
      return;
    }
    paramBoolean = a.mClientId;
    zr.a(b).a(a, MediaMailingMetadata.UploadStatus.FAILED);
  }
}

/* Location:
 * Qualified Name:     zr.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */