import com.snapchat.android.ui.chat.ChatDiscoverVideoPresenter;
import com.snapchat.android.ui.chat.ChatDiscoverVideoPresenter.VideoState;

final class alh$6
  implements aww
{
  alh$6(alh paramalh) {}
  
  public final void a(awm paramawm, awv paramawv)
  {
    alh.a(this$0);
    if (mBitmap == null) {}
    for (int i = 1; mBitmap != null; i = 0)
    {
      alh.j(this$0);
      alh.b(this$0, false);
      if (alh.e(this$0) == 3) {
        this$0.c();
      }
      return;
    }
    alh.b(this$0, true);
    alh.g(this$0).a(ChatDiscoverVideoPresenter.VideoState.ERROR);
  }
}

/* Location:
 * Qualified Name:     alh.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */