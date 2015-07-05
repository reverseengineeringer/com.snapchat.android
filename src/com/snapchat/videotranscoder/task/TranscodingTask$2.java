package com.snapchat.videotranscoder.task;

import cgb;
import com.snapchat.videotranscoder.audio.AudioProvider;
import com.snapchat.videotranscoder.audio.SilenceProvider;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;
import com.snapchat.videotranscoder.pipeline.MediaProvider;
import com.snapchat.videotranscoder.pipeline.Mixer;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.pipeline.Transcoder;
import com.snapchat.videotranscoder.video.VideoProvider;

class TranscodingTask$2
  extends Transcoder
{
  TranscodingTask$2(TranscodingTask paramTranscodingTask, Mixer paramMixer, EncoderConfiguration paramEncoderConfiguration1, EncoderConfiguration paramEncoderConfiguration2, VideoFileMediaSource paramVideoFileMediaSource)
  {
    super(paramMixer, paramEncoderConfiguration1, paramEncoderConfiguration2);
  }
  
  protected MediaProvider createAudioProvider(@cgb Encoder paramEncoder, @cgb EncoderConfiguration paramEncoderConfiguration, @cgb StageDoneCallback paramStageDoneCallback)
  {
    switch (TranscodingTask.4.$SwitchMap$com$snapchat$videotranscoder$task$VideoFileMediaSource$AudioChannelSource[val$videoMediaSource.getAudioChannelSource().ordinal()])
    {
    default: 
      throw new IllegalStateException("Unhandled audio channel source.");
    case 1: 
      return new AudioProvider(paramEncoder, val$videoMediaSource, paramStageDoneCallback);
    case 2: 
      return new SilenceProvider(paramEncoder, 1000L * val$videoMediaSource.getDisplayTimeMs(), paramStageDoneCallback);
    }
    throw new IllegalStateException("Attempt to create an audio provider for a disabled track.");
  }
  
  protected MediaProvider createVideoProvider(@cgb Encoder paramEncoder, @cgb EncoderConfiguration paramEncoderConfiguration, @cgb StageDoneCallback paramStageDoneCallback)
  {
    switch (TranscodingTask.4.$SwitchMap$com$snapchat$videotranscoder$task$VideoFileMediaSource$VideoChannelSource[val$videoMediaSource.getVideoChannelSource().ordinal()])
    {
    default: 
      throw new IllegalStateException("Unhandled video channel source.");
    case 1: 
      return new VideoProvider(TranscodingTask.access$300(this$0), paramEncoder, val$videoMediaSource, paramStageDoneCallback);
    }
    throw new IllegalStateException("Attempt to create an video provider for a disabled track.");
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.task.TranscodingTask.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */