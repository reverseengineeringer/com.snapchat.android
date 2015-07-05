package com.snapchat.videotranscoder.task;

import android.graphics.Bitmap;
import cgb;
import cgc;
import com.snapchat.videotranscoder.audio.AudioProvider;
import com.snapchat.videotranscoder.audio.SilenceProvider;
import com.snapchat.videotranscoder.mp4.MP4Metadata;
import com.snapchat.videotranscoder.mp4.SnapSegments;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;
import com.snapchat.videotranscoder.pipeline.MediaProvider;
import com.snapchat.videotranscoder.pipeline.Mixer;
import com.snapchat.videotranscoder.pipeline.Mixer.ShouldCopyAudio;
import com.snapchat.videotranscoder.pipeline.Mixer.ShouldCopyVideo;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.pipeline.Transcoder;
import com.snapchat.videotranscoder.utils.Debug;
import com.snapchat.videotranscoder.utils.TranscodingResources;
import com.snapchat.videotranscoder.utils.Utils;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import com.snapchat.videotranscoder.video.ImageProvider;
import com.snapchat.videotranscoder.video.VideoProvider;
import java.io.IOException;

public class TranscodingTask
  extends Task
{
  private static final int DEFAULT_IMAGE_PROVIDER_FRAMES_PER_SECOND = 30;
  private static final String TAG = "TranscodingTask";
  private final TranscodingConfiguration mConfiguration;
  private Transcoder mCurrentTranscoder;
  private long mDurationConcatenatedWithoutConsideringCurrentSourceMs;
  private long mLastPercentComplete = -1L;
  private Mixer mMixer;
  private long mTotalDurationMs;
  private final TranscodingResources mTranscodingResources;
  
  public TranscodingTask(@cgb TranscodingResources paramTranscodingResources, @cgb TranscodingConfiguration paramTranscodingConfiguration)
  {
    if (paramTranscodingResources == null) {
      throw new NullPointerException("transcodingResources is null");
    }
    if (paramTranscodingConfiguration == null) {
      throw new NullPointerException("transcodingConfiguration is null");
    }
    mTranscodingResources = paramTranscodingResources;
    mConfiguration = paramTranscodingConfiguration;
    validateSourcesAndCreateMixer();
    calculateTotalDuration();
  }
  
  private void calculateTotalDuration()
  {
    mTotalDurationMs = 0L;
    MediaSource[] arrayOfMediaSource = mConfiguration.getSources();
    int j = arrayOfMediaSource.length;
    int i = 0;
    while (i < j)
    {
      MediaSource localMediaSource = arrayOfMediaSource[i];
      mTotalDurationMs += localMediaSource.getDisplayTimeMs();
      i += 1;
    }
  }
  
  private boolean concatenateBitmap(@cgb final BitmapMediaSource paramBitmapMediaSource, @cgc Task.ProgressUpdateCallback paramProgressUpdateCallback)
  {
    long l = paramBitmapMediaSource.getDisplayTimeMs();
    mCurrentTranscoder = new Transcoder(mMixer, mConfiguration.getVideoEncoderConfiguration(), mConfiguration.getAudioEncoderConfiguration())
    {
      protected MediaProvider createAudioProvider(@cgb Encoder paramAnonymousEncoder, @cgb EncoderConfiguration paramAnonymousEncoderConfiguration, @cgb StageDoneCallback paramAnonymousStageDoneCallback)
      {
        return new SilenceProvider(paramAnonymousEncoder, val$durationUs, paramAnonymousStageDoneCallback);
      }
      
      protected MediaProvider createVideoProvider(@cgb Encoder paramAnonymousEncoder, @cgb EncoderConfiguration paramAnonymousEncoderConfiguration, @cgb StageDoneCallback paramAnonymousStageDoneCallback)
      {
        return new ImageProvider(mTranscodingResources, paramAnonymousEncoder, paramBitmapMediaSource.getBitmap(), 30, val$durationUs, paramAnonymousStageDoneCallback);
      }
    };
    mCurrentTranscoder.transcode(paramProgressUpdateCallback);
    mCurrentTranscoder.release();
    mCurrentTranscoder = null;
    mMixer.advanceBasePresentationTimeUsToLatestFrameWritten();
    return true;
  }
  
  private boolean concatenateImageFile(@cgb final ImageFileMediaSource paramImageFileMediaSource, @cgc Task.ProgressUpdateCallback paramProgressUpdateCallback)
  {
    long l = paramImageFileMediaSource.getDisplayTimeMs();
    paramImageFileMediaSource = paramImageFileMediaSource.getBitmap();
    if (paramImageFileMediaSource == null) {
      return false;
    }
    mCurrentTranscoder = new Transcoder(mMixer, mConfiguration.getVideoEncoderConfiguration(), mConfiguration.getAudioEncoderConfiguration())
    {
      protected MediaProvider createAudioProvider(@cgb Encoder paramAnonymousEncoder, @cgb EncoderConfiguration paramAnonymousEncoderConfiguration, @cgb StageDoneCallback paramAnonymousStageDoneCallback)
      {
        return new SilenceProvider(paramAnonymousEncoder, val$durationUs, paramAnonymousStageDoneCallback);
      }
      
      protected MediaProvider createVideoProvider(@cgb Encoder paramAnonymousEncoder, @cgb EncoderConfiguration paramAnonymousEncoderConfiguration, @cgb StageDoneCallback paramAnonymousStageDoneCallback)
      {
        return new ImageProvider(mTranscodingResources, paramAnonymousEncoder, paramImageFileMediaSource, 30, val$durationUs, paramAnonymousStageDoneCallback);
      }
    };
    mCurrentTranscoder.transcode(paramProgressUpdateCallback);
    mCurrentTranscoder.release();
    mCurrentTranscoder = null;
    paramImageFileMediaSource.recycle();
    mMixer.advanceBasePresentationTimeUsToLatestFrameWritten();
    return true;
  }
  
  private boolean concatenateVideoFile(@cgb final VideoFileMediaSource paramVideoFileMediaSource, @cgc Task.ProgressUpdateCallback paramProgressUpdateCallback)
  {
    mCurrentTranscoder = new Transcoder(mMixer, mConfiguration.getVideoEncoderConfiguration(), mConfiguration.getAudioEncoderConfiguration())
    {
      protected MediaProvider createAudioProvider(@cgb Encoder paramAnonymousEncoder, @cgb EncoderConfiguration paramAnonymousEncoderConfiguration, @cgb StageDoneCallback paramAnonymousStageDoneCallback)
      {
        switch (TranscodingTask.4.$SwitchMap$com$snapchat$videotranscoder$task$VideoFileMediaSource$AudioChannelSource[paramVideoFileMediaSource.getAudioChannelSource().ordinal()])
        {
        default: 
          throw new IllegalStateException("Unhandled audio channel source.");
        case 1: 
          return new AudioProvider(paramAnonymousEncoder, paramVideoFileMediaSource, paramAnonymousStageDoneCallback);
        case 2: 
          return new SilenceProvider(paramAnonymousEncoder, 1000L * paramVideoFileMediaSource.getDisplayTimeMs(), paramAnonymousStageDoneCallback);
        }
        throw new IllegalStateException("Attempt to create an audio provider for a disabled track.");
      }
      
      protected MediaProvider createVideoProvider(@cgb Encoder paramAnonymousEncoder, @cgb EncoderConfiguration paramAnonymousEncoderConfiguration, @cgb StageDoneCallback paramAnonymousStageDoneCallback)
      {
        switch (TranscodingTask.4.$SwitchMap$com$snapchat$videotranscoder$task$VideoFileMediaSource$VideoChannelSource[paramVideoFileMediaSource.getVideoChannelSource().ordinal()])
        {
        default: 
          throw new IllegalStateException("Unhandled video channel source.");
        case 1: 
          return new VideoProvider(mTranscodingResources, paramAnonymousEncoder, paramVideoFileMediaSource, paramAnonymousStageDoneCallback);
        }
        throw new IllegalStateException("Attempt to create an video provider for a disabled track.");
      }
    };
    mCurrentTranscoder.transcode(paramProgressUpdateCallback);
    mCurrentTranscoder.release();
    mCurrentTranscoder = null;
    mMixer.advanceBasePresentationTimeUsToLatestFrameWritten();
    return true;
  }
  
  private void runInternal(@cgc Task.ProgressUpdateCallback paramProgressUpdateCallback)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    if (paramProgressUpdateCallback != null) {
      paramProgressUpdateCallback.onProgressUpdated(0);
    }
    mDurationConcatenatedWithoutConsideringCurrentSourceMs = 0L;
    MediaSource[] arrayOfMediaSource = mConfiguration.getSources();
    int j = arrayOfMediaSource.length;
    int i = 0;
    MediaSource localMediaSource;
    ConcatenationProgressCallback localConcatenationProgressCallback;
    if (i < j)
    {
      localMediaSource = arrayOfMediaSource[i];
      if (paramProgressUpdateCallback != null)
      {
        localConcatenationProgressCallback = new ConcatenationProgressCallback(localMediaSource, paramProgressUpdateCallback);
        label65:
        if (!(localMediaSource instanceof ImageFileMediaSource)) {
          break label128;
        }
        if (concatenateImageFile((ImageFileMediaSource)localMediaSource, localConcatenationProgressCallback)) {
          break label265;
        }
        if ((getStatus() == Task.Status.FINISHED) || (getStatus() == Task.Status.RUNNING)) {
          break label122;
        }
        bool1 = true;
        label110:
        Debug.assertTrue(bool1);
      }
    }
    for (;;)
    {
      return;
      localConcatenationProgressCallback = null;
      break label65;
      label122:
      bool1 = false;
      break label110;
      label128:
      if ((localMediaSource instanceof VideoFileMediaSource))
      {
        if (!concatenateVideoFile((VideoFileMediaSource)localMediaSource, localConcatenationProgressCallback))
        {
          if ((getStatus() != Task.Status.FINISHED) && (getStatus() != Task.Status.RUNNING)) {}
          for (;;)
          {
            Debug.assertTrue(bool1);
            return;
            bool1 = false;
          }
        }
      }
      else if ((localMediaSource instanceof BitmapMediaSource))
      {
        if (!concatenateBitmap((BitmapMediaSource)localMediaSource, localConcatenationProgressCallback))
        {
          if ((getStatus() != Task.Status.FINISHED) && (getStatus() != Task.Status.RUNNING)) {}
          for (bool1 = bool2;; bool1 = false)
          {
            Debug.assertTrue(bool1);
            return;
          }
        }
      }
      else {
        throw new IllegalStateException("Unhandled media source type: " + localMediaSource);
      }
      label265:
      long l = mDurationConcatenatedWithoutConsideringCurrentSourceMs;
      mDurationConcatenatedWithoutConsideringCurrentSourceMs = (localMediaSource.getDisplayTimeMs() + l);
      i += 1;
      break;
      VerboseLogging.verboseLog("TranscodingTask", "releasing Mixer");
      mMixer.release();
      if (mConfiguration.shouldWriteSnapSegmentMetadata()) {}
      try
      {
        writeSnapSegmentMetadata();
        VerboseLogging.verboseLog("TranscodingTask", Utils.getInstance().createFileSizeLogMessage(mConfiguration.getOutputPath()));
        setStatus(Task.Status.FINISHED);
        if (paramProgressUpdateCallback == null) {
          continue;
        }
        paramProgressUpdateCallback.onProgressUpdated(100);
        return;
      }
      catch (IOException paramProgressUpdateCallback)
      {
        paramProgressUpdateCallback.printStackTrace();
        throw new TranscodingException("Failed to write snap segment metadata");
      }
    }
  }
  
  private void validateSourcesAndCreateMixer()
  {
    MediaSource[] arrayOfMediaSource = mConfiguration.getSources();
    if (arrayOfMediaSource.length > 0) {}
    Mixer.ShouldCopyAudio localShouldCopyAudio;
    Object localObject2;
    Object localObject1;
    for (boolean bool = true;; bool = false)
    {
      Debug.assertTrue(bool);
      localShouldCopyAudio = Mixer.ShouldCopyAudio.NO;
      localObject2 = Mixer.ShouldCopyVideo.NO;
      int j = arrayOfMediaSource.length;
      int i = 0;
      for (;;)
      {
        if (i >= j) {
          break label197;
        }
        localObject1 = arrayOfMediaSource[i];
        if (!(localObject1 instanceof ImageFileMediaSource)) {
          break;
        }
        localObject1 = Mixer.ShouldCopyVideo.YES;
        i += 1;
        localObject2 = localObject1;
      }
    }
    if ((localObject1 instanceof VideoFileMediaSource))
    {
      VideoFileMediaSource localVideoFileMediaSource = (VideoFileMediaSource)localObject1;
      localObject1 = localObject2;
      if (localVideoFileMediaSource.getVideoChannelSource() == VideoFileMediaSource.VideoChannelSource.ORIGINAL)
      {
        localObject1 = localObject2;
        if (mConfiguration.getVideoEncoderConfiguration() != null) {
          localObject1 = Mixer.ShouldCopyVideo.YES;
        }
      }
      if ((localVideoFileMediaSource.getAudioChannelSource() != VideoFileMediaSource.AudioChannelSource.ORIGINAL) || (mConfiguration.getAudioEncoderConfiguration() == null)) {
        break label220;
      }
      localShouldCopyAudio = Mixer.ShouldCopyAudio.YES;
    }
    label197:
    label220:
    for (;;)
    {
      break;
      if ((localObject1 instanceof BitmapMediaSource))
      {
        localObject1 = Mixer.ShouldCopyVideo.YES;
        break;
      }
      throw new SetupException("Illegal media source type: " + localObject1);
      mMixer = new Mixer(mConfiguration.getOutputPath(), (Mixer.ShouldCopyVideo)localObject2, localShouldCopyAudio);
      return;
    }
  }
  
  private void writeSnapSegmentMetadata()
  {
    MediaSource[] arrayOfMediaSource = mConfiguration.getSources();
    long[] arrayOfLong = new long[arrayOfMediaSource.length];
    long l = 0L;
    int i = 0;
    while (i < arrayOfMediaSource.length)
    {
      arrayOfLong[i] = l;
      l += arrayOfMediaSource[i].getDisplayTimeMs();
      i += 1;
    }
    new MP4Metadata(mConfiguration.getOutputPath()).setSnapSegments(new SnapSegments(arrayOfLong));
  }
  
  public void run(@cgc Task.ProgressUpdateCallback paramProgressUpdateCallback)
  {
    try
    {
      runInternal(paramProgressUpdateCallback);
      return;
    }
    catch (SetupException paramProgressUpdateCallback)
    {
      throw paramProgressUpdateCallback;
    }
    catch (TranscodingException paramProgressUpdateCallback)
    {
      throw paramProgressUpdateCallback;
    }
    catch (Exception paramProgressUpdateCallback)
    {
      throw new TranscodingException("Unexpected exception during transcoding: " + paramProgressUpdateCallback.toString(), paramProgressUpdateCallback);
    }
  }
  
  public Task.Status tryAbort()
  {
    setStatus(Task.Status.ABORTED);
    if (mCurrentTranscoder != null) {
      mCurrentTranscoder.abort();
    }
    return Task.Status.RUNNING;
  }
  
  class ConcatenationProgressCallback
    implements Task.ProgressUpdateCallback
  {
    final MediaSource mMediaSource;
    final long mSourceDuration;
    final Task.ProgressUpdateCallback mTotalProgressUpdateCallback;
    
    public ConcatenationProgressCallback(@cgb MediaSource paramMediaSource, @cgb Task.ProgressUpdateCallback paramProgressUpdateCallback)
    {
      mMediaSource = paramMediaSource;
      mTotalProgressUpdateCallback = paramProgressUpdateCallback;
      mSourceDuration = paramMediaSource.getDisplayTimeMs();
    }
    
    public void onProgressUpdated(int paramInt)
    {
      paramInt = (int)((mSourceDuration * paramInt / 100L + mDurationConcatenatedWithoutConsideringCurrentSourceMs) * 100L / mTotalDurationMs);
      if (paramInt != mLastPercentComplete)
      {
        TranscodingTask.access$202(TranscodingTask.this, paramInt);
        mTotalProgressUpdateCallback.onProgressUpdated(paramInt);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.task.TranscodingTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */