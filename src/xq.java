import android.annotation.TargetApi;
import android.media.MediaFormat;
import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;
import com.snapchat.videotranscoder.task.MediaSource;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.task.TranscodingConfiguration;
import com.snapchat.videotranscoder.task.VideoFileMediaSource;
import com.snapchat.videotranscoder.task.VideoFileMediaSource.AudioChannelSource;
import com.snapchat.videotranscoder.task.VideoFileMediaSource.VideoChannelSource;
import com.snapchat.videotranscoder.utils.MimeTools;
import com.snapchat.videotranscoder.utils.VideoMetadataReader;
import com.snapchat.videotranscoder.video.FragmentShader.Filter;
import java.io.File;
import java.io.IOException;

@TargetApi(18)
public final class xq
{
  private final aku a;
  private final MimeTools b;
  private final ban c;
  
  public xq(aku paramaku)
  {
    this(paramaku, MimeTools.getInstance(), new ban());
  }
  
  private xq(aku paramaku, MimeTools paramMimeTools, ban paramban)
  {
    a = paramaku;
    b = paramMimeTools;
    c = paramban;
  }
  
  private EncoderConfiguration b(String paramString)
  {
    try
    {
      paramString = b.getMediaFormatFromFile(paramString, false);
      paramString = MediaFormat.createAudioFormat("audio/mp4a-latm", b.getAudioSampleRate(paramString), b.getAudioChannelCount(paramString));
      paramString.setInteger("bitrate", 57344);
      paramString = new EncoderConfiguration("audio/mp4a-latm", paramString);
      return paramString;
    }
    catch (Exception paramString)
    {
      if (paramString.getMessage() == null) {
        throw new SetupException();
      }
      throw new SetupException(paramString.getMessage());
    }
  }
  
  public final TranscodingConfiguration a(String paramString)
  {
    for (Object localObject1 = new VideoMetadataReader(new File(paramString));; localObject1 = VideoFileMediaSource.AudioChannelSource.ORIGINAL) {
      try
      {
        Object localObject2 = new avc(((VideoMetadataReader)localObject1).getWidth(), ((VideoMetadataReader)localObject1).getHeight());
        long l = ((VideoMetadataReader)localObject1).getDurationMs();
        ((VideoMetadataReader)localObject1).release();
        Object localObject3 = new xw((avc)localObject2);
        int i = Math.min(1730151 / (int)l * 1000 * 8, 4000000);
        Object localObject4 = a.q();
        Object localObject5 = a.mShaderFilter;
        VideoFileMediaSource.VideoChannelSource localVideoChannelSource = VideoFileMediaSource.VideoChannelSource.ORIGINAL;
        if (a.m())
        {
          localObject1 = VideoFileMediaSource.AudioChannelSource.SILENCE;
          localObject4 = new VideoFileMediaSource(paramString, (float[])localObject4, null, (FragmentShader.Filter)localObject5, localVideoChannelSource, (VideoFileMediaSource.AudioChannelSource)localObject1);
          localObject5 = a.mTranscodingState.b();
          localObject3 = ((xw)localObject3).a(i);
          localObject1 = localObject3;
          if (localObject3 == null)
          {
            localObject1 = new ok((avc)localObject2);
            c.a((Throwable)localObject1);
            localObject1 = localObject2;
          }
          localObject2 = MediaFormat.createVideoFormat("video/avc", ((avc)localObject1).b(), ((avc)localObject1).a());
          ((avc)localObject1).a();
          ((avc)localObject1).b();
          ((MediaFormat)localObject2).setInteger("height", ((avc)localObject1).a());
          ((MediaFormat)localObject2).setInteger("width", ((avc)localObject1).b());
          ((MediaFormat)localObject2).setInteger("color-format", 2130708361);
          ((MediaFormat)localObject2).setInteger("bitrate", i);
          ((MediaFormat)localObject2).setLong("durationUs", l * 1000L);
          ((MediaFormat)localObject2).setInteger("frame-rate", 30);
          ((MediaFormat)localObject2).setInteger("i-frame-interval", 10);
          localObject1 = new EncoderConfiguration("video/avc", (MediaFormat)localObject2);
          paramString = b(paramString);
          return new TranscodingConfiguration(new MediaSource[] { localObject4 }, (String)localObject5, (EncoderConfiguration)localObject1, paramString, false);
        }
      }
      catch (IOException paramString)
      {
        throw new SetupException("Failed to read video metadata: " + paramString.toString(), paramString);
      }
      finally
      {
        ((VideoMetadataReader)localObject1).release();
      }
    }
  }
}

/* Location:
 * Qualified Name:     xq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */