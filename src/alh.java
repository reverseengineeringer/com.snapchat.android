import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnSeekCompleteListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.ui.TextureVideoView;
import com.snapchat.android.ui.chat.ChatDiscoverVideoPresenter;
import com.snapchat.android.ui.chat.ChatDiscoverVideoPresenter.VideoState;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;
import java.util.Observable;
import java.util.Observer;

public final class alh
  implements alf, Observer
{
  private static final int STATE_ERROR = -1;
  private static final int STATE_IDLE = 0;
  private static final int STATE_PAUSED = 4;
  private static final int STATE_PLAYING = 3;
  private static final int STATE_PREPARED = 2;
  private static final int STATE_PREPARING = 1;
  private static final String TAG = "ChatVideoItemProxy";
  private static int sId = 0;
  private awn mBitmapLoader = null;
  private final ChatMedia mChatVideo;
  private int mCurrentState;
  private final int mId;
  private boolean mOverlayFailedToLoad = false;
  private final ImageView mOverlayImageView;
  private boolean mOverlayLoaded = false;
  private alg mPlaybackListener;
  private final ChatDiscoverVideoPresenter mPresenter;
  private int mTargetState;
  private final TextureVideoView mTextureVideoView;
  private final alh.a mVideoErrorCallback;
  private boolean mVideoInErrorState = false;
  private boolean mVideoPlaybackCompleted = false;
  
  public alh(@chc agr.c paramc, @chc ChatMedia paramChatMedia, alh.a parama)
  {
    this(paramChatMedia, z, A, E, new ChatDiscoverVideoPresenter(z, y, A, B, D, E), parama);
  }
  
  private alh(@chc ChatMedia paramChatMedia, @chc TextureVideoView paramTextureVideoView, @chc ImageView paramImageView, @chc View paramView, @chc ChatDiscoverVideoPresenter paramChatDiscoverVideoPresenter, @chd alh.a parama)
  {
    if (!paramChatMedia.X()) {
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
        alh.a(alh.this);
        alh.b(alh.this).d();
        if ((alh.c(alh.this)) || (alh.d(alh.this))) {
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
  
  @cdn
  private void h()
  {
    int i = mId;
    mChatVideo.d();
    mPresenter.f = mChatVideo.M();
    if (mChatVideo.M()) {
      j();
    }
    mTextureVideoView.setAlpha(0.0F);
    mTextureVideoView.setVisibility(0);
    mTextureVideoView.setViewport((int)mChatVideo.S(), (int)mChatVideo.T(), (int)mChatVideo.V(), (int)mChatVideo.W());
    i();
  }
  
  @cdn
  private void i()
  {
    int i = mId;
    mChatVideo.d();
    mTextureVideoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener()
    {
      public final void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
      {
        alh.a(alh.this);
        alh.b(alh.this).d();
        int i = paramAnonymousMediaPlayer.getVideoWidth();
        int j = paramAnonymousMediaPlayer.getVideoHeight();
        if ((i <= 0) || (j <= 0))
        {
          alh.f(alh.this).a();
          String.format("[%d] Video %s could not be loaded due to invalid dimensions: %d x %d", new Object[] { Integer.valueOf(alh.a(alh.this)), alh.b(alh.this).d(), Integer.valueOf(i), Integer.valueOf(j) });
          alh.b(alh.this, 1);
        }
        do
        {
          return;
          alh.a(alh.this, 2);
          alh.i(alh.this);
          alh.a(alh.this, false);
          if (!alh.b(alh.this).N()) {
            paramAnonymousMediaPlayer.setVolume(0.0F, 0.0F);
          }
        } while (alh.e(alh.this) != 3);
        c();
      }
    });
    mTextureVideoView.setOnErrorListener(new MediaPlayer.OnErrorListener()
    {
      public final boolean onError(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        String.format("[%d] Chat video error %s what(%d) extra(%d)", new Object[] { Integer.valueOf(alh.a(alh.this)), alh.b(alh.this).d(), Integer.valueOf(paramAnonymousInt1), Integer.valueOf(paramAnonymousInt2) });
        alh.b(alh.this, paramAnonymousInt1);
        return true;
      }
    });
    mTextureVideoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener()
    {
      public final void onCompletion(MediaPlayer paramAnonymousMediaPlayer)
      {
        alh.a(alh.this);
        alh.b(alh.this).d();
        alh.a(alh.this, true);
        paramAnonymousMediaPlayer.setLooping(true);
        paramAnonymousMediaPlayer.start();
      }
    });
    mTextureVideoView.setVideoURI(mChatVideo.K());
    mCurrentState = 1;
  }
  
  @cdn
  private void j()
  {
    int i = mId;
    mChatVideo.d();
    Object localObject = new CbcEncryptionAlgorithm(mChatVideo.E(), mChatVideo.F());
    if (mBitmapLoader == null) {
      mBitmapLoader = new awn(mOverlayImageView.getContext());
    }
    awv.a locala = new awv.a();
    mImageView = mOverlayImageView;
    locala = locala.a(mChatVideo.L());
    mWidth = mTextureVideoView.getWidth();
    mHeight = mTextureVideoView.getHeight();
    mEncryptionAlgorithm = ((aza)localObject);
    mRequireExactDimensions = true;
    localObject = locala.a();
    mBitmapLoader.a((awv)localObject, new aww[] { new aww()
    {
      public final void a(awm paramAnonymousawm, awv paramAnonymousawv)
      {
        alh.a(alh.this);
        if (mBitmap == null) {}
        for (int i = 1; mBitmap != null; i = 0)
        {
          alh.j(alh.this);
          alh.b(alh.this, false);
          if (alh.e(alh.this) == 3) {
            c();
          }
          return;
        }
        alh.b(alh.this, true);
        alh.g(alh.this).a(ChatDiscoverVideoPresenter.VideoState.ERROR);
      }
    } });
  }
  
  public final void a(alg paramalg)
  {
    mPlaybackListener = paramalg;
  }
  
  public final boolean a()
  {
    return mTextureVideoView.isPlaying();
  }
  
  public final void b()
  {
    int i = mId;
    mChatVideo.d();
    mPresenter.a(ChatDiscoverVideoPresenter.VideoState.LOADING);
    if (mCurrentState == 0) {
      if (mChatVideo.K() == null)
      {
        i = mId;
        mChatVideo.d();
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
      i = mId;
      mChatVideo.d();
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
    if (((mCurrentState == 2) || (mCurrentState == 4)) && ((!mChatVideo.M()) || (mOverlayLoaded)))
    {
      i = 1;
      if (i == 0) {
        break label86;
      }
      i = mId;
      mChatVideo.d();
      mTextureVideoView.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener()
      {
        public final void onSeekComplete(MediaPlayer paramAnonymousMediaPlayer)
        {
          if (alh.e(alh.this) == 3)
          {
            alh.a(alh.this);
            alh.b(alh.this).d();
            alh.f(alh.this).start();
            alh.g(alh.this).a(ChatDiscoverVideoPresenter.VideoState.PLAYING);
            alh.a(alh.this, 3);
            if (alh.h(alh.this) != null) {
              alh.h(alh.this).g();
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
      label86:
      i = mId;
      mChatVideo.d();
    }
  }
  
  public final void d()
  {
    int i = mId;
    mChatVideo.d();
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
    int i = mId;
    mChatVideo.d();
    mTextureVideoView.a();
    mPresenter.a(ChatDiscoverVideoPresenter.VideoState.STOPPED);
    if ((mChatVideo.M()) && (mBitmapLoader != null)) {
      mBitmapLoader.a(mOverlayImageView);
    }
    mTextureVideoView.setOnSeekCompleteListener(null);
    mCurrentState = 0;
    mTargetState = 0;
  }
  
  public final void f()
  {
    int i = mId;
    mChatVideo.d();
    mTextureVideoView.seekTo(0);
  }
  
  public final long g()
  {
    return mTextureVideoView.getDuration();
  }
  
  public final void update(Observable paramObservable, Object paramObject)
  {
    if ((paramObservable == mChatVideo) && (mChatVideo.K() != null))
    {
      int i = mId;
      mChatVideo.d();
      mChatVideo.deleteObserver(this);
      bhp.a(new Runnable()
      {
        public final void run()
        {
          alh.k(alh.this);
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
 * Qualified Name:     alh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */