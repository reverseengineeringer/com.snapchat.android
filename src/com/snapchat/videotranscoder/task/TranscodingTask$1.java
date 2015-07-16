package com.snapchat.videotranscoder.task;

import android.graphics.Bitmap;
import chc;
import com.snapchat.videotranscoder.audio.SilenceProvider;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;
import com.snapchat.videotranscoder.pipeline.MediaProvider;
import com.snapchat.videotranscoder.pipeline.Mixer;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.pipeline.Transcoder;
import com.snapchat.videotranscoder.video.ImageProvider;

class TranscodingTask$1
  extends Transcoder
{
  TranscodingTask$1(TranscodingTask paramTranscodingTask, Mixer paramMixer, EncoderConfiguration paramEncoderConfiguration1, EncoderConfiguration paramEncoderConfiguration2, Bitmap paramBitmap, long paramLong)
  {
    super(paramMixer, paramEncoderConfiguration1, paramEncoderConfiguration2);
  }
  
  protected MediaProvider createAudioProvider(@chc Encoder paramEncoder, @chc EncoderConfiguration paramEncoderConfiguration, @chc StageDoneCallback paramStageDoneCallback)
  {
    return new SilenceProvider(paramEncoder, val$durationUs, paramStageDoneCallback);
  }
  
  protected MediaProvider createVideoProvider(@chc Encoder paramEncoder, @chc EncoderConfiguration paramEncoderConfiguration, @chc StageDoneCallback paramStageDoneCallback)
  {
    return new ImageProvider(TranscodingTask.access$300(this$0), paramEncoder, val$bitmap, 30, val$durationUs, paramStageDoneCallback);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.task.TranscodingTask.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */