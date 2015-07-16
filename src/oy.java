import android.annotation.TargetApi;
import android.media.MediaFormat;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;
import com.snapchat.videotranscoder.task.Task.Status;
import com.snapchat.videotranscoder.task.TranscodingConfiguration;

@TargetApi(18)
public final class oy
  extends EasyMetric
{
  public oy()
  {
    super("TRANSCODING");
    b();
  }
  
  public final void a(aku paramaku, TranscodingConfiguration paramTranscodingConfiguration, Task.Status paramStatus)
  {
    a("transcoding_status", paramStatus.name());
    a("retries", Integer.valueOf(mTranscodingState.a()));
    a("video_width", Integer.valueOf(paramTranscodingConfiguration.getVideoEncoderConfiguration().getFormat().getInteger("width")));
    a("video_height", Integer.valueOf(paramTranscodingConfiguration.getVideoEncoderConfiguration().getFormat().getInteger("height")));
    a("bit_rate", Integer.valueOf(paramTranscodingConfiguration.getVideoEncoderConfiguration().getFormat().getInteger("bitrate")));
    a("frame_rate", Integer.valueOf(paramTranscodingConfiguration.getVideoEncoderConfiguration().getFormat().getInteger("frame-rate")));
    a("media_duration", Integer.valueOf((int)Math.ceil(paramTranscodingConfiguration.getVideoEncoderConfiguration().getFormat().getLong("durationUs") / 1000000L)));
    a("transcoding_orientation", Integer.valueOf(mSnapOrientation));
    super.a(true);
  }
}

/* Location:
 * Qualified Name:     oy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */