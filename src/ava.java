import android.text.TextUtils;
import com.snapchat.android.model.StoryCollection;

public final class ava
{
  public static void a(@cgc ajv paramajv, @cgc ajr paramajr, boolean paramBoolean)
  {
    if ((paramajv == null) || (paramajr == null)) {}
    label80:
    for (;;)
    {
      return;
      if (TextUtils.equals(ajx.l(), mUsername)) {}
      for (paramajv = ajq.a().a("my_story_ads79sdf");; paramajv = ajq.a().b(mUsername))
      {
        if (paramajv == null) {
          break label80;
        }
        paramajr = paramajv.b(paramajr.d());
        if (paramajr == null) {
          break;
        }
        paramajr.d(0);
        paramajr.C();
        paramajv.f(paramajr);
        paramajr.e(paramBoolean);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     ava
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */