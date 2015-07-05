import android.media.MediaPlayer;
import android.media.MediaPlayer.OnSeekCompleteListener;
import com.snapchat.android.Timber;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.ui.TextureVideoView;
import com.snapchat.android.ui.chat.ChatDiscoverVideoPresenter;
import com.snapchat.android.ui.chat.ChatDiscoverVideoPresenter.VideoState;

final class akm$2
  implements MediaPlayer.OnSeekCompleteListener
{
  akm$2(akm paramakm) {}
  
  public final void onSeekComplete(MediaPlayer paramMediaPlayer)
  {
    if (akm.e(this$0) == 3)
    {
      Timber.a("ChatVideoItemProxy", "[%d] Starting chat video playback after onSeekComplete %s", new Object[] { Integer.valueOf(akm.a(this$0)), akm.b(this$0).d() });
      akm.f(this$0).start();
      akm.g(this$0).a(ChatDiscoverVideoPresenter.VideoState.PLAYING);
      akm.a(this$0, 3);
      if (akm.h(this$0) != null) {
        akm.h(this$0).g();
      }
    }
  }
}

/* Location:
 * Qualified Name:     akm.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */