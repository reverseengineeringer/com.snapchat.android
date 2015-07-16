package android.media;

import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.view.accessibility.CaptioningManager;
import android.view.accessibility.CaptioningManager.CaptioningChangeListener;
import java.util.Iterator;
import java.util.Locale;
import java.util.Vector;

public class SubtitleController
{
  private static final int WHAT_HIDE = 2;
  private static final int WHAT_SELECT_DEFAULT_TRACK = 4;
  private static final int WHAT_SELECT_TRACK = 3;
  private static final int WHAT_SHOW = 1;
  private Anchor mAnchor;
  private final Handler.Callback mCallback = new Handler.Callback()
  {
    public boolean handleMessage(Message paramAnonymousMessage)
    {
      switch (what)
      {
      default: 
        return false;
      case 1: 
        SubtitleController.this.doShow();
        return true;
      case 2: 
        SubtitleController.this.doHide();
        return true;
      case 3: 
        SubtitleController.this.doSelectTrack((SubtitleTrack)obj);
        return true;
      }
      SubtitleController.this.doSelectDefaultTrack();
      return true;
    }
  };
  private CaptioningManager.CaptioningChangeListener mCaptioningChangeListener = new CaptioningManager.CaptioningChangeListener()
  {
    public void onEnabledChanged(boolean paramAnonymousBoolean)
    {
      selectDefaultTrack();
    }
    
    public void onLocaleChanged(Locale paramAnonymousLocale)
    {
      selectDefaultTrack();
    }
  };
  private CaptioningManager mCaptioningManager;
  private Handler mHandler;
  private Listener mListener;
  private Vector<Renderer> mRenderers;
  private SubtitleTrack mSelectedTrack;
  private boolean mShowing;
  private MediaTimeProvider mTimeProvider;
  private boolean mTrackIsExplicit = false;
  private Vector<SubtitleTrack> mTracks;
  private boolean mVisibilityIsExplicit = false;
  
  static
  {
    if (!SubtitleController.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public SubtitleController(Context paramContext, MediaTimeProvider paramMediaTimeProvider, Listener paramListener)
  {
    mTimeProvider = paramMediaTimeProvider;
    mListener = paramListener;
    mRenderers = new Vector();
    mShowing = false;
    mTracks = new Vector();
    mCaptioningManager = ((CaptioningManager)paramContext.getSystemService("captioning"));
  }
  
  private void checkAnchorLooper()
  {
    assert (mHandler != null) : "Should have a looper already";
    assert (Looper.myLooper() == mHandler.getLooper()) : "Must be called from the anchor's looper";
  }
  
  private void doHide()
  {
    mVisibilityIsExplicit = true;
    if (mSelectedTrack != null) {
      mSelectedTrack.hide();
    }
    mShowing = false;
  }
  
  private void doSelectDefaultTrack()
  {
    if (mTrackIsExplicit) {
      if (!mVisibilityIsExplicit)
      {
        if ((!mCaptioningManager.isEnabled()) && ((mSelectedTrack == null) || (mSelectedTrack.getFormat().getInteger("is-forced-subtitle", 0) == 0))) {
          break label57;
        }
        show();
      }
    }
    label57:
    do
    {
      SubtitleTrack localSubtitleTrack;
      do
      {
        for (;;)
        {
          mVisibilityIsExplicit = false;
          return;
          if ((mSelectedTrack != null) && (!mSelectedTrack.isTimedText())) {
            hide();
          }
        }
        localSubtitleTrack = getDefaultTrack();
      } while (localSubtitleTrack == null);
      selectTrack(localSubtitleTrack);
      mTrackIsExplicit = false;
    } while (mVisibilityIsExplicit);
    show();
    mVisibilityIsExplicit = false;
  }
  
  private void doSelectTrack(SubtitleTrack paramSubtitleTrack)
  {
    mTrackIsExplicit = true;
    if (mSelectedTrack == paramSubtitleTrack) {}
    do
    {
      return;
      if (mSelectedTrack != null)
      {
        mSelectedTrack.hide();
        mSelectedTrack.setTimeProvider(null);
      }
      mSelectedTrack = paramSubtitleTrack;
      if (mAnchor != null) {
        mAnchor.setSubtitleWidget(getRenderingWidget());
      }
      if (mSelectedTrack != null)
      {
        mSelectedTrack.setTimeProvider(mTimeProvider);
        mSelectedTrack.show();
      }
    } while (mListener == null);
    mListener.onSubtitleTrackSelected(paramSubtitleTrack);
  }
  
  private void doShow()
  {
    mShowing = true;
    mVisibilityIsExplicit = true;
    if (mSelectedTrack != null) {
      mSelectedTrack.show();
    }
  }
  
  private SubtitleTrack.RenderingWidget getRenderingWidget()
  {
    if (mSelectedTrack == null) {
      return null;
    }
    return mSelectedTrack.getRenderingWidget();
  }
  
  private void processOnAnchor(Message paramMessage)
  {
    assert (mHandler != null) : "Should have a looper already";
    if (Looper.myLooper() == mHandler.getLooper())
    {
      mHandler.dispatchMessage(paramMessage);
      return;
    }
    mHandler.sendMessage(paramMessage);
  }
  
  public SubtitleTrack addTrack(MediaFormat arg1)
  {
    synchronized (mRenderers)
    {
      Iterator localIterator = mRenderers.iterator();
      while (localIterator.hasNext())
      {
        Object localObject2 = (Renderer)localIterator.next();
        if (((Renderer)localObject2).supports(???))
        {
          localObject2 = ((Renderer)localObject2).createTrack(???);
          if (localObject2 != null) {
            synchronized (mTracks)
            {
              if (mTracks.size() == 0) {
                mCaptioningManager.addCaptioningChangeListener(mCaptioningChangeListener);
              }
              mTracks.add(localObject2);
              return (SubtitleTrack)localObject2;
            }
          }
        }
      }
    }
    return null;
  }
  
  protected void finalize()
  {
    mCaptioningManager.removeCaptioningChangeListener(mCaptioningChangeListener);
  }
  
  public SubtitleTrack getDefaultTrack()
  {
    SubtitleTrack localSubtitleTrack1 = null;
    int i = -1;
    Locale localLocale2 = mCaptioningManager.getLocale();
    Locale localLocale1;
    if (localLocale2 == null) {
      localLocale1 = Locale.getDefault();
    }
    int j;
    label54:
    SubtitleTrack localSubtitleTrack2;
    int k;
    label106:
    int m;
    label121:
    int n;
    label136:
    label198:
    label208:
    int i1;
    label211:
    int i2;
    label218:
    int i3;
    label231:
    int i4;
    for (;;)
    {
      if (!mCaptioningManager.isEnabled())
      {
        j = 1;
        synchronized (mTracks)
        {
          Iterator localIterator = mTracks.iterator();
          if (localIterator.hasNext())
          {
            localSubtitleTrack2 = (SubtitleTrack)localIterator.next();
            MediaFormat localMediaFormat = localSubtitleTrack2.getFormat();
            String str = localMediaFormat.getString("language");
            if (localMediaFormat.getInteger("is-forced-subtitle", 0) == 0) {
              break label318;
            }
            k = 1;
            if (localMediaFormat.getInteger("is-autoselect", 1) == 0) {
              break label323;
            }
            m = 1;
            if (localMediaFormat.getInteger("is-default", 0) == 0) {
              break label329;
            }
            n = 1;
            if ((localLocale1 == null) || (localLocale1.getLanguage().equals("")) || (localLocale1.getISO3Language().equals(str))) {
              break label208;
            }
            if (!localLocale1.getLanguage().equals(str)) {
              break label335;
            }
            break label208;
          }
          return localSubtitleTrack1;
        }
        break;
        localLocale1 = localLocale2;
        continue;
        i1 = 1;
        if (k == 0) {
          break label341;
        }
        i2 = 0;
        if ((localLocale2 != null) || (n == 0)) {
          break label348;
        }
        i3 = 4;
        if (m == 0) {
          break label354;
        }
        i4 = 0;
        label239:
        if (i1 == 0) {
          break label360;
        }
      }
    }
    label318:
    label323:
    label329:
    label335:
    label341:
    label348:
    label354:
    label360:
    for (int i5 = 1;; i5 = 0)
    {
      i2 = i5 + (i2 + i3 + i4);
      if ((j != 0) && (k == 0)) {
        break label54;
      }
      if (((localLocale2 != null) || (n == 0)) && ((i1 == 0) || ((m == 0) && (k == 0) && (localLocale2 == null)) || (i2 <= i))) {
        break label198;
      }
      Object localObject2 = localSubtitleTrack2;
      i = i2;
      break label54;
      j = 0;
      break;
      k = 0;
      break label106;
      m = 0;
      break label121;
      n = 0;
      break label136;
      i1 = 0;
      break label211;
      i2 = 8;
      break label218;
      i3 = 0;
      break label231;
      i4 = 2;
      break label239;
    }
  }
  
  public SubtitleTrack getSelectedTrack()
  {
    return mSelectedTrack;
  }
  
  public SubtitleTrack[] getTracks()
  {
    synchronized (mTracks)
    {
      SubtitleTrack[] arrayOfSubtitleTrack = new SubtitleTrack[mTracks.size()];
      mTracks.toArray(arrayOfSubtitleTrack);
      return arrayOfSubtitleTrack;
    }
  }
  
  public boolean hasRendererFor(MediaFormat paramMediaFormat)
  {
    synchronized (mRenderers)
    {
      Iterator localIterator = mRenderers.iterator();
      while (localIterator.hasNext()) {
        if (((Renderer)localIterator.next()).supports(paramMediaFormat)) {
          return true;
        }
      }
      return false;
    }
  }
  
  public void hide()
  {
    processOnAnchor(mHandler.obtainMessage(2));
  }
  
  public void registerRenderer(Renderer paramRenderer)
  {
    synchronized (mRenderers)
    {
      if (!mRenderers.contains(paramRenderer)) {
        mRenderers.add(paramRenderer);
      }
      return;
    }
  }
  
  public void reset()
  {
    checkAnchorLooper();
    hide();
    selectTrack(null);
    mTracks.clear();
    mTrackIsExplicit = false;
    mVisibilityIsExplicit = false;
    mCaptioningManager.removeCaptioningChangeListener(mCaptioningChangeListener);
  }
  
  public void selectDefaultTrack()
  {
    processOnAnchor(mHandler.obtainMessage(4));
  }
  
  public boolean selectTrack(SubtitleTrack paramSubtitleTrack)
  {
    if ((paramSubtitleTrack != null) && (!mTracks.contains(paramSubtitleTrack))) {
      return false;
    }
    processOnAnchor(mHandler.obtainMessage(3, paramSubtitleTrack));
    return true;
  }
  
  public void setAnchor(Anchor paramAnchor)
  {
    if (mAnchor == paramAnchor) {}
    do
    {
      return;
      if (mAnchor != null)
      {
        checkAnchorLooper();
        mAnchor.setSubtitleWidget(null);
      }
      mAnchor = paramAnchor;
      mHandler = null;
    } while (mAnchor == null);
    mHandler = new Handler(mAnchor.getSubtitleLooper(), mCallback);
    checkAnchorLooper();
    mAnchor.setSubtitleWidget(getRenderingWidget());
  }
  
  public void show()
  {
    processOnAnchor(mHandler.obtainMessage(1));
  }
  
  public static abstract interface Anchor
  {
    public abstract Looper getSubtitleLooper();
    
    public abstract void setSubtitleWidget(SubtitleTrack.RenderingWidget paramRenderingWidget);
  }
  
  public static abstract interface Listener
  {
    public abstract void onSubtitleTrackSelected(SubtitleTrack paramSubtitleTrack);
  }
  
  public static abstract class Renderer
  {
    public abstract SubtitleTrack createTrack(MediaFormat paramMediaFormat);
    
    public abstract boolean supports(MediaFormat paramMediaFormat);
  }
}

/* Location:
 * Qualified Name:     android.media.SubtitleController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */