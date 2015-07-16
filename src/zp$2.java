import com.snapchat.android.model.MediaMailingMetadata.PostStatus;
import com.snapchat.android.model.MediaMailingMetadata.SendStatus;
import com.snapchat.android.model.Mediabryo;

final class zp$2
  extends axu
{
  zp$2(zp paramzp, boolean paramBoolean1, aji paramaji, boolean paramBoolean2) {}
  
  protected final void a(@chc Boolean paramBoolean)
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
      String str = b.mClientId;
      d.a.a(b, MediaMailingMetadata.SendStatus.FAILED);
    }
    paramBoolean = b.mClientId;
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
 * Qualified Name:     zp.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */