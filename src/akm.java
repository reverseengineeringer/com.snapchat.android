import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnSeekCompleteListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.snapchat.android.Timber;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.ui.TextureVideoView;
import com.snapchat.android.ui.chat.ChatDiscoverVideoPresenter;
import com.snapchat.android.ui.chat.ChatDiscoverVideoPresenter.VideoState;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;
import java.util.Observable;
import java.util.Observer;

public final class akm
  implements akk, Observer
{
  private static final int STATE_ERROR = -1;
  private static final int STATE_IDLE = 0;
  private static final int STATE_PAUSED = 4;
  private static final int STATE_PLAYING = 3;
  private static final int STATE_PREPARED = 2;
  private static final int STATE_PREPARING = 1;
  private static final String TAG = "ChatVideoItemProxy";
  private static int sId = 0;
  private avp mBitmapLoader = null;
  private final ChatMedia mChatVideo;
  private int mCurrentState;
  private final int mId;
  private boolean mOverlayFailedToLoad = false;
  private final ImageView mOverlayImageView;
  private boolean mOverlayLoaded = false;
  private akl mPlaybackListener;
  private final ChatDiscoverVideoPresenter mPresenter;
  private int mTargetState;
  private final TextureVideoView mTextureVideoView;
  private final akm.a mVideoErrorCallback;
  private boolean mVideoInErrorState = false;
  private boolean mVideoPlaybackCompleted = false;
  
  public akm(@cgb afr.c paramc, @cgb ChatMedia paramChatMedia, akm.a parama)
  {
    this(paramChatMedia, z, A, E, new ChatDiscoverVideoPresenter(z, y, A, B, D, E), parama);
  }
  
  private akm(@cgb ChatMedia paramChatMedia, @cgb TextureVideoView paramTextureVideoView, @cgb ImageView paramImageView, @cgb View paramView, @cgb ChatDiscoverVideoPresenter paramChatDiscoverVideoPresenter, @cgc akm.a parama)
  {
    if (!paramChatMedia.V()) {
      throw new IllegalArgumentException("Can't create a ChatVideoItemProxy for a non-video ChatMedia!");
    }
    mChatVideo = paramChatMedia;
    mTextureVideoView = paramTextureVideoView;
    mOverlayImageView = paramImageView;
    mPresenter = paramChatDiscoverVideoPresenter;
    mVideoErrorCallback = parama;
    paramView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        Timber.a("ChatVideoItemProxy", "[%d] Chat video reload clicked %s", new Object[] { Integer.valueOf(akm.a(akm.this)), akm.b(akm.this).d() });
        if ((akm.c(akm.this)) || (akm.d(akm.this))) {
          b();
        }
      }
    });
    mCurrentState = 0;
    mTargetState = 0;
    int i = sId;
    sId = i + 1;
    mId = i;
  }
  
  @ccm
  private void h()
  {
    Timber.a("ChatVideoItemProxy", "[%d] Load chat video and overlay %s", new Object[] { Integer.valueOf(mId), mChatVideo.d() });
    mPresenter.f = mChatVideo.L();
    if (mChatVideo.L()) {
      j();
    }
    mTextureVideoView.setAlpha(0.0F);
    mTextureVideoView.setVisibility(0);
    mTextureVideoView.setViewport((int)mChatVideo.R(), (int)mChatVideo.S(), (int)mChatVideo.T(), (int)mChatVideo.U());
    i();
  }
  
  @ccm
  private void i()
  {
    Timber.a("ChatVideoItemProxy", "[%d] Load chat video %s", new Object[] { Integer.valueOf(mId), mChatVideo.d() });
    mTextureVideoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener()
    {
      public final void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
      {
        Timber.a("ChatVideoItemProxy", "[%d] Chat video prepared %s", new Object[] { Integer.valueOf(akm.a(akm.this)), akm.b(akm.this).d() });
        int i = paramAnonymousMediaPlayer.getVideoWidth();
        int j = paramAnonymousMediaPlayer.getVideoHeight();
        if ((i <= 0) || (j <= 0))
        {
          akm.f(akm.this).a();
          paramAnonymousMediaPlayer = String.format("[%d] Video %s could not be loaded due to invalid dimensions: %d x %d", new Object[] { Integer.valueOf(akm.a(akm.this)), akm.b(akm.this).d(), Integer.valueOf(i), Integer.valueOf(j) });
          akm.a(akm.this, paramAnonymousMediaPlayer, 1);
        }
        do
        {
          return;
          akm.a(akm.this, 2);
          akm.i(akm.this);
          akm.a(akm.this, false);
          if (!akm.b(akm.this).M()) {
            paramAnonymousMediaPlayer.setVolume(0.0F, 0.0F);
          }
        } while (akm.e(akm.this) != 3);
        c();
      }
    });
    mTextureVideoView.setOnErrorListener(new MediaPlayer.OnErrorListener()
    {
      public final boolean onError(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        paramAnonymousMediaPlayer = String.format("[%d] Chat video error %s what(%d) extra(%d)", new Object[] { Integer.valueOf(akm.a(akm.this)), akm.b(akm.this).d(), Integer.valueOf(paramAnonymousInt1), Integer.valueOf(paramAnonymousInt2) });
        akm.a(akm.this, paramAnonymousMediaPlayer, paramAnonymousInt1);
        return true;
      }
    });
    mTextureVideoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener()
    {
      public final void onCompletion(MediaPlayer paramAnonymousMediaPlayer)
      {
        Timber.a("ChatVideoItemProxy", "[%d] Chat video playback completed %s", new Object[] { Integer.valueOf(akm.a(akm.this)), akm.b(akm.this).d() });
        akm.a(akm.this, true);
        paramAnonymousMediaPlayer.setLooping(true);
        paramAnonymousMediaPlayer.start();
      }
    });
    mTextureVideoView.setVideoURI(mChatVideo.J());
    mCurrentState = 1;
  }
  
  @ccm
  private void j()
  {
    Timber.a("ChatVideoItemProxy", "[%d] Load overlay %s", new Object[] { Integer.valueOf(mId), mChatVideo.d() });
    Object localObject = new CbcEncryptionAlgorithm(mChatVideo.D(), mChatVideo.E());
    if (mBitmapLoader == null) {
      mBitmapLoader = new avp(mOverlayImageView.getContext());
    }
    avx.a locala = new avx.a();
    mImageView = mOverlayImageView;
    locala = locala.a(mChatVideo.K());
    mWidth = mTextureVideoView.getWidth();
    mHeight = mTextureVideoView.getHeight();
    mEncryptionAlgorithm = ((ayc)localObject);
    mRequireExactDimensions = true;
    localObject = locala.a();
    mBitmapLoader.a((avx)localObject, new avy[] { new avy()
    {
      public final void a(avo paramAnonymousavo, avx paramAnonymousavx)
      {
        int i = akm.a(akm.this);
        if (mBitmap == null) {}
        for (boolean bool = true;; bool = false)
        {
          Timber.a("ChatVideoItemProxy", "[%d] Chat video overlay bitmap decoded, bitmap null? %b", new Object[] { Integer.valueOf(i), Boolean.valueOf(bool) });
          if (mBitmap == null) {
            break;
          }
          akm.j(akm.this);
          akm.b(akm.this, false);
          if (akm.e(akm.this) == 3) {
            c();
          }
          return;
        }
        akm.b(akm.this, true);
        akm.g(akm.this).a(ChatDiscoverVideoPresenter.VideoState.ERROR);
      }
    } });
  }
  
  public final void a(akl paramakl)
  {
    mPlaybackListener = paramakl;
  }
  
  public final boolean a()
  {
    return mTextureVideoView.isPlaying();
  }
  
  public final void b()
  {
    Timber.a("ChatVideoItemProxy", "[%d] Chat video initialize %s", new Object[] { Integer.valueOf(mId), mChatVideo.d() });
    mPresenter.a(ChatDiscoverVideoPresenter.VideoState.LOADING);
    if (mCurrentState == 0) {
      if (mChatVideo.J() == null)
      {
        Timber.a("ChatVideoItemProxy", "[%d] Chat video initialize no video URI yet %s", new Object[] { Integer.valueOf(mId), mChatVideo.d() });
        mChatVideo.addObserver(this);
      }
    }
    do
    {
      do
      {
        return;
        h();
        return;
      } while ((!mVideoInErrorState) && (!mOverlayFailedToLoad));
      Timber.a("ChatVideoItemProxy", "[%d] Chat video initialize (video and/or overlay failed to load %s)", new Object[] { Integer.valueOf(mId), mChatVideo.d() });
      mPresenter.a(ChatDiscoverVideoPresenter.VideoState.LOADING);
      if (mVideoInErrorState) {
        i();
      }
    } while (!mOverlayFailedToLoad);
    j();
  }
  
  public final void c()
  {
    int i;
    if (((mCurrentState == 2) || (mCurrentState == 4)) && ((!mChatVideo.L()) || (mOverlayLoaded)))
    {
      i = 1;
      if (i == 0) {
        break label105;
      }
      Timber.a("ChatVideoItemProxy", "[%d] Start chat video playback ready to play %s", new Object[] { Integer.valueOf(mId), mChatVideo.d() });
      mTextureVideoView.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener()
      {
        public final void onSeekComplete(MediaPlayer paramAnonymousMediaPlayer)
        {
          if (akm.e(akm.this) == 3)
          {
            Timber.a("ChatVideoItemProxy", "[%d] Starting chat video playback after onSeekComplete %s", new Object[] { Integer.valueOf(akm.a(akm.this)), akm.b(akm.this).d() });
            akm.f(akm.this).start();
            akm.g(akm.this).a(ChatDiscoverVideoPresenter.VideoState.PLAYING);
            akm.a(akm.this, 3);
            if (akm.h(akm.this) != null) {
              akm.h(akm.this).g();
            }
          }
        }
      });
      mTextureVideoView.seekTo(0);
    }
    for (;;)
    {
      mTargetState = 3;
      return;
      i = 0;
      break;
      label105:
      Timber.a("ChatVideoItemProxy", "[%d] Start chat video playback not ready to play %s", new Object[] { Integer.valueOf(mId), mChatVideo.d() });
    }
  }
  
  public final void d()
  {
    Timber.a("ChatVideoItemProxy", "[%d] Pause chat video playback %s", new Object[] { Integer.valueOf(mId), mChatVideo.d() });
    if (mTextureVideoView.isPlaying())
    {
      mTextureVideoView.pause();
      mCurrentState = 4;
    }
    mPresenter.a(ChatDiscoverVideoPresenter.VideoState.PAUSED);
    mTextureVideoView.setOnSeekCompleteListener(null);
    mTargetState = 4;
  }
  
  public final void e()
  {
    Timber.a("ChatVideoItemProxy", "[%d] Stop chat video playback %s", new Object[] { Integer.valueOf(mId), mChatVideo.d() });
    mTextureVideoView.a();
    mPresenter.a(ChatDiscoverVideoPresenter.VideoState.STOPPED);
    if ((mChatVideo.L()) && (mBitmapLoader != null)) {
      mBitmapLoader.a(mOverlayImageView);
    }
    mTextureVideoView.setOnSeekCompleteListener(null);
    mCurrentState = 0;
    mTargetState = 0;
  }
  
  public final void f()
  {
    Timber.a("ChatVideoItemProxy", "[%d] Seek chat video %s to %d", new Object[] { Integer.valueOf(mId), mChatVideo.d(), Integer.valueOf(0) });
    mTextureVideoView.seekTo(0);
  }
  
  public final long g()
  {
    return mTextureVideoView.getDuration();
  }
  
  public final void update(Observable paramObservable, Object paramObject)
  {
    if ((paramObservable == mChatVideo) && (mChatVideo.J() != null))
    {
      Timber.a("ChatVideoItemProxy", "[%d] Chat video observable video URI set %s", new Object[] { Integer.valueOf(mId), mChatVideo.d() });
      mChatVideo.deleteObserver(this);
      bgp.a(new Runnable()
      {
        public final void run()
        {
          akm.k(akm.this);
        }
      });
    }
  }
  
  public static abstract interface a
  {
    public abstract void d();
  }
}

/* Location:
 * Qualified Name:     akm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */