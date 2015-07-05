import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.Timber;
import com.snapchat.android.model.chat.ChatMedia;

final class akm$1
  implements View.OnClickListener
{
  akm$1(akm paramakm) {}
  
  public final void onClick(View paramView)
  {
    Timber.a("ChatVideoItemProxy", "[%d] Chat video reload clicked %s", new Object[] { Integer.valueOf(akm.a(this$0)), akm.b(this$0).d() });
    if ((akm.c(this$0)) || (akm.d(this$0))) {
      this$0.b();
    }
  }
}

/* Location:
 * Qualified Name:     akm.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */