import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import com.snapchat.android.Timber;
import com.snapchat.android.rendering.SnapMediaRenderer.a;

final class ano$3
  implements MediaPlayer.OnPreparedListener
{
  ano$3(ano paramano) {}
  
  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    Timber.c(ano.e(), "SNAP-VIEW: Prepared %s, duration:%d width:%d height:%d", new Object[] { ano.b(a).d(), Integer.valueOf(paramMediaPlayer.getDuration()), Integer.valueOf(paramMediaPlayer.getVideoWidth()), Integer.valueOf(paramMediaPlayer.getVideoHeight()) });
    ano.a(a, paramMediaPlayer);
    ano.d(a).setLooping(ano.c(a));
    if (ano.b(a).ak() == 2) {
      ano.d(a).setVolume(0.0F, 0.0F);
    }
    paramMediaPlayer = new aue(paramMediaPlayer.getVideoWidth(), paramMediaPlayer.getVideoHeight());
    ano.a(a, paramMediaPlayer);
    ano.a(a, ano.b(a), paramMediaPlayer);
    ano.e(a).a(ano.d(a).getDuration(), ano.d(a).getVideoWidth(), ano.d(a).getVideoHeight());
    if (asu.SUPPORTS_MEDIA_INFO_VIDEO_RENDERING_START) {
      ano.d(a).setOnInfoListener(a.a);
    }
  }
}

/* Location:
 * Qualified Name:     ano.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */