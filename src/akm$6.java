import com.snapchat.android.Timber;
import com.snapchat.android.ui.chat.ChatDiscoverVideoPresenter;
import com.snapchat.android.ui.chat.ChatDiscoverVideoPresenter.VideoState;

final class akm$6
  implements avy
{
  akm$6(akm paramakm) {}
  
  public final void a(avo paramavo, avx paramavx)
  {
    int i = akm.a(this$0);
    if (mBitmap == null) {}
    for (boolean bool = true;; bool = false)
    {
      Timber.a("ChatVideoItemProxy", "[%d] Chat video overlay bitmap decoded, bitmap null? %b", new Object[] { Integer.valueOf(i), Boolean.valueOf(bool) });
      if (mBitmap == null) {
        break;
      }
      akm.j(this$0);
      akm.b(this$0, false);
      if (akm.e(this$0) == 3) {
        this$0.c();
      }
      return;
    }
    akm.b(this$0, true);
    akm.g(this$0).a(ChatDiscoverVideoPresenter.VideoState.ERROR);
  }
}

/* Location:
 * Qualified Name:     akm.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */