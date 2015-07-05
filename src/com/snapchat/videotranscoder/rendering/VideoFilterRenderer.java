package com.snapchat.videotranscoder.rendering;

import cgb;
import cgc;
import com.snapchat.videotranscoder.audio.AudioExtractor;
import com.snapchat.videotranscoder.audio.AudioTrackDecoder;
import com.snapchat.videotranscoder.cts.InputSurface;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.task.Task.ProgressUpdateCallback;
import com.snapchat.videotranscoder.task.TranscodingException;
import com.snapchat.videotranscoder.task.VideoFileMediaSource;
import com.snapchat.videotranscoder.task.VideoFileMediaSource.AudioChannelSource;
import com.snapchat.videotranscoder.utils.TranscodingResources;
import com.snapchat.videotranscoder.utils.Utils;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import com.snapchat.videotranscoder.video.FragmentShader.Filter;
import com.snapchat.videotranscoder.video.VideoExtractor;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

public class VideoFilterRenderer
{
  private static final String TAG = "VideoFilterRenderer";
  private volatile boolean mAborted = false;
  private volatile boolean mAudioDecoderDone = false;
  private AudioExtractor mAudioExtractor;
  private volatile boolean mAudioExtractorDone = false;
  private Runnable mAudioThread = null;
  private AudioTrackDecoder mAudioTrackDecoder;
  private boolean mChangedShaders = false;
  private boolean mChangedSplit = false;
  private ExecutorService mExecutor;
  private InputSurface mInputSurface;
  private FragmentShader.Filter mLeftFilter = FragmentShader.Filter.NORMAL;
  private volatile boolean mRestarting = false;
  private FragmentShader.Filter mRightFilter = FragmentShader.Filter.NORMAL;
  private VideoFileMediaSource mSource;
  private float mSplitLoc = 0.0F;
  private VideoExtractor mVideoExtractor;
  private volatile boolean mVideoExtractorDone = false;
  private Runnable mVideoExtractorThread = null;
  private VideoFilterDecoder mVideoFilterDecoder;
  private volatile boolean mVideoFilterDecoderDone = false;
  
  public VideoFilterRenderer(@cgb TranscodingResources paramTranscodingResources, @cgb VideoFileMediaSource paramVideoFileMediaSource, @cgb InputSurface paramInputSurface)
  {
    this(paramTranscodingResources, paramVideoFileMediaSource, paramInputSurface, Executors.newCachedThreadPool());
  }
  
  protected VideoFilterRenderer(@cgb TranscodingResources paramTranscodingResources, @cgb VideoFileMediaSource paramVideoFileMediaSource, @cgb InputSurface paramInputSurface, @cgb ExecutorService paramExecutorService)
  {
    if (!Utils.getInstance().haveLooper("VideoFilterRenderer")) {
      throw new SetupException("There is no looper thread");
    }
    if (paramTranscodingResources == null) {
      throw new NullPointerException("transcodingResources is null");
    }
    if (paramVideoFileMediaSource == null) {
      throw new NullPointerException("mediaSource is null");
    }
    if (paramInputSurface == null) {
      throw new NullPointerException("displaySurface is null");
    }
    if (paramExecutorService == null) {
      throw new NullPointerException("executor is null");
    }
    mSource = paramVideoFileMediaSource;
    mInputSurface = paramInputSurface;
    mInputSurface.makeCurrent();
    mVideoExtractor = new VideoExtractor(mSource.getMediaPath(), new VideoExtractorDone(null));
    mVideoFilterDecoder = new VideoFilterDecoder(paramTranscodingResources, mVideoExtractor.getFormat(), new VideoFilterDecoderDone(null), paramVideoFileMediaSource.getTransformationMatrix());
    mVideoExtractor.setDecoderCodec(mVideoFilterDecoder.getCodec());
    mVideoFilterDecoder.setInputSurface(paramInputSurface);
    if (paramVideoFileMediaSource.getAudioChannelSource() == VideoFileMediaSource.AudioChannelSource.ORIGINAL)
    {
      mAudioExtractor = new AudioExtractor(paramVideoFileMediaSource.getMediaPath(), new AudioExtractorDone(null));
      mAudioTrackDecoder = new AudioTrackDecoder(mAudioExtractor.getFormat(), new AudioDecoderDone(null));
      mAudioExtractor.setDecoderCodec(mAudioTrackDecoder.getCodec());
    }
    mExecutor = paramExecutorService;
  }
  
  private boolean componentsFinished()
  {
    return (mVideoExtractorDone) && (mAudioDecoderDone) && (mAudioExtractorDone) && (mVideoFilterDecoderDone);
  }
  
  private void updateFilters()
  {
    if ((mChangedShaders) && (mVideoFilterDecoder != null) && (!mAborted)) {
      mVideoFilterDecoder.setShader(mLeftFilter, mRightFilter);
    }
    if ((mChangedSplit) && (mVideoFilterDecoder != null) && (!mAborted)) {
      mVideoFilterDecoder.changeSplit(mSplitLoc);
    }
  }
  
  public void abort()
  {
    mAborted = true;
    mVideoExtractor.abort();
    mAudioExtractor.abort();
  }
  
  public void changeFilter(@cgb FragmentShader.Filter paramFilter1, @cgb FragmentShader.Filter paramFilter2)
  {
    mChangedShaders = true;
    mLeftFilter = paramFilter1;
    mRightFilter = paramFilter2;
  }
  
  public void changeSplit(float paramFloat)
  {
    mChangedSplit = true;
    mSplitLoc = paramFloat;
  }
  
  public void prepareThreads()
  {
    mAudioThread = new Runnable()
    {
      public void run()
      {
        try
        {
          while ((!mAborted) || (!mAudioDecoderDone))
          {
            if ((mAudioExtractor != null) && (!mAudioExtractorDone))
            {
              VerboseLogging.verboseLog("VideoFilterRenderer", "Calling audio extractor");
              mAudioExtractor.processFrame();
              VerboseLogging.verboseLog("VideoFilterRenderer", "done Calling audio extractor");
            }
            if ((mAudioTrackDecoder != null) && (!mAudioDecoderDone))
            {
              VerboseLogging.verboseLog("VideoFilterRenderer", "Calling audio decoder");
              mAudioTrackDecoder.processFrame();
              VerboseLogging.verboseLog("VideoFilterRenderer", "done Calling audio decoder");
            }
          }
          return;
        }
        catch (TranscodingException localTranscodingException)
        {
          localTranscodingException.printStackTrace();
          return;
        }
        catch (IllegalStateException localIllegalStateException)
        {
          localIllegalStateException.printStackTrace();
        }
      }
    };
    mVideoExtractorThread = new Runnable()
    {
      public void run()
      {
        try
        {
          while ((!mAborted) || (!mVideoExtractorDone))
          {
            if ((mVideoExtractor != null) && (!mVideoExtractorDone))
            {
              VerboseLogging.verboseLog("VideoFilterRenderer", "Calling video extractor");
              mVideoExtractor.processFrame();
              VerboseLogging.verboseLog("VideoFilterRenderer", "Done calling video extractor");
            }
            if ((mVideoExtractorDone) && (!mAborted)) {
              mVideoExtractor.restart();
            }
          }
          return;
        }
        catch (TranscodingException localTranscodingException)
        {
          localTranscodingException.printStackTrace();
          return;
        }
        catch (IllegalStateException localIllegalStateException)
        {
          localIllegalStateException.printStackTrace();
        }
      }
    };
  }
  
  public void release()
  {
    if (mVideoExtractor != null)
    {
      VerboseLogging.verboseLog("VideoFilterRenderer", "releasing video extractor");
      mVideoExtractor.release();
      mVideoExtractor = null;
    }
    if (mVideoFilterDecoder != null)
    {
      VerboseLogging.verboseLog("VideoFilterRenderer", "releasing rendering decoder");
      mVideoFilterDecoder.stop();
      mVideoFilterDecoder = null;
    }
    if (mAudioExtractor != null)
    {
      VerboseLogging.verboseLog("VideoFilterRenderer", "releasing audio extractor");
      mAudioExtractor.release();
      mAudioExtractor = null;
    }
    if (mAudioTrackDecoder != null)
    {
      VerboseLogging.verboseLog("VideoFilterRenderer", "releasing audio track decoder");
      mAudioTrackDecoder.stop();
      mAudioTrackDecoder = null;
    }
  }
  
  public void render(@cgc Task.ProgressUpdateCallback paramProgressUpdateCallback)
  {
    if (mAudioThread != null) {
      mExecutor.execute(mAudioThread);
    }
    if (mVideoExtractorThread != null) {
      mExecutor.execute(mVideoExtractorThread);
    }
    while ((!mAborted) || (!componentsFinished()))
    {
      updateFilters();
      if ((mVideoFilterDecoder != null) && (!mVideoFilterDecoderDone))
      {
        VerboseLogging.verboseLog("VideoFilterRenderer", "Calling rendering decoder");
        mVideoFilterDecoder.processFrame();
        VerboseLogging.verboseLog("VideoFilterRenderer", "Done calling rendering decoder");
      }
      if ((componentsFinished()) && (!mAborted) && (!mRestarting))
      {
        restartComponents();
        mRestarting = true;
      }
      if ((mVideoExtractorDone) && (mVideoFilterDecoder != null)) {
        mVideoFilterDecoder.addImmediately();
      }
    }
  }
  
  public void restartComponents()
  {
    mExecutor.execute(new FutureTask(new Callable()
    {
      public Void call()
      {
        try
        {
          if (mAudioExtractor != null) {
            mAudioExtractor.restart();
          }
          if (mAudioTrackDecoder != null) {
            mAudioTrackDecoder.restart();
          }
          if (mVideoFilterDecoder != null) {
            mVideoFilterDecoder.restart();
          }
          VideoFilterRenderer.access$502(VideoFilterRenderer.this, false);
          VideoFilterRenderer.access$702(VideoFilterRenderer.this, false);
          VideoFilterRenderer.access$902(VideoFilterRenderer.this, false);
          VideoFilterRenderer.access$1202(VideoFilterRenderer.this, false);
          VideoFilterRenderer.access$1302(VideoFilterRenderer.this, false);
          return null;
        }
        catch (IllegalStateException localIllegalStateException)
        {
          throw new TranscodingRenderingException("Restart failed!", localIllegalStateException);
        }
      }
    }));
  }
  
  public void setVolume(float paramFloat)
  {
    if (mAudioTrackDecoder != null) {
      mAudioTrackDecoder.setVolume(paramFloat);
    }
  }
  
  class AudioDecoderDone
    implements StageDoneCallback
  {
    private AudioDecoderDone() {}
    
    public void done()
    {
      VideoFilterRenderer.access$502(VideoFilterRenderer.this, true);
    }
  }
  
  class AudioExtractorDone
    implements StageDoneCallback
  {
    private AudioExtractorDone() {}
    
    public void done()
    {
      VideoFilterRenderer.access$702(VideoFilterRenderer.this, true);
    }
  }
  
  class VideoExtractorDone
    implements StageDoneCallback
  {
    private VideoExtractorDone() {}
    
    public void done()
    {
      VideoFilterRenderer.access$902(VideoFilterRenderer.this, true);
    }
  }
  
  class VideoFilterDecoderDone
    implements StageDoneCallback
  {
    private VideoFilterDecoderDone() {}
    
    public void done()
    {
      VideoFilterRenderer.access$1202(VideoFilterRenderer.this, true);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.rendering.VideoFilterRenderer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */