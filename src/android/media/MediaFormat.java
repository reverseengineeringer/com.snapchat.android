package android.media;

import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

public final class MediaFormat
{
  public static final String KEY_AAC_DRC_ATTENUATION_FACTOR = "aac-drc-cut-level";
  public static final String KEY_AAC_DRC_BOOST_FACTOR = "aac-drc-boost-level";
  public static final String KEY_AAC_DRC_HEAVY_COMPRESSION = "aac-drc-heavy-compression";
  public static final String KEY_AAC_DRC_TARGET_REFERENCE_LEVEL = "aac-target-ref-level";
  public static final String KEY_AAC_ENCODED_TARGET_LEVEL = "aac-encoded-target-level";
  public static final String KEY_AAC_MAX_OUTPUT_CHANNEL_COUNT = "aac-max-output-channel_count";
  public static final String KEY_AAC_PROFILE = "aac-profile";
  public static final String KEY_AAC_SBR_MODE = "aac-sbr-mode";
  public static final String KEY_AUDIO_SESSION_ID = "audio-session-id";
  public static final String KEY_BITRATE_MODE = "bitrate-mode";
  public static final String KEY_BIT_RATE = "bitrate";
  public static final String KEY_CAPTURE_RATE = "capture-rate";
  public static final String KEY_CHANNEL_COUNT = "channel-count";
  public static final String KEY_CHANNEL_MASK = "channel-mask";
  public static final String KEY_COLOR_FORMAT = "color-format";
  public static final String KEY_COMPLEXITY = "complexity";
  public static final String KEY_DURATION = "durationUs";
  public static final String KEY_FEATURE_ = "feature-";
  public static final String KEY_FLAC_COMPRESSION_LEVEL = "flac-compression-level";
  public static final String KEY_FRAME_RATE = "frame-rate";
  public static final String KEY_HEIGHT = "height";
  public static final String KEY_IS_ADTS = "is-adts";
  public static final String KEY_IS_AUTOSELECT = "is-autoselect";
  public static final String KEY_IS_DEFAULT = "is-default";
  public static final String KEY_IS_FORCED_SUBTITLE = "is-forced-subtitle";
  public static final String KEY_IS_TIMED_TEXT = "is-timed-text";
  public static final String KEY_I_FRAME_INTERVAL = "i-frame-interval";
  public static final String KEY_LANGUAGE = "language";
  public static final String KEY_MAX_HEIGHT = "max-height";
  public static final String KEY_MAX_INPUT_SIZE = "max-input-size";
  public static final String KEY_MAX_WIDTH = "max-width";
  public static final String KEY_MIME = "mime";
  public static final String KEY_PROFILE = "profile";
  public static final String KEY_PUSH_BLANK_BUFFERS_ON_STOP = "push-blank-buffers-on-shutdown";
  public static final String KEY_QUALITY = "quality";
  public static final String KEY_REPEAT_PREVIOUS_FRAME_AFTER = "repeat-previous-frame-after";
  public static final String KEY_SAMPLE_RATE = "sample-rate";
  public static final String KEY_SLICE_HEIGHT = "slice-height";
  public static final String KEY_STRIDE = "stride";
  public static final String KEY_TEMPORAL_LAYERING = "ts-schema";
  public static final String KEY_WIDTH = "width";
  public static final String MIMETYPE_AUDIO_AAC = "audio/mp4a-latm";
  public static final String MIMETYPE_AUDIO_AC3 = "audio/ac3";
  public static final String MIMETYPE_AUDIO_AMR_NB = "audio/3gpp";
  public static final String MIMETYPE_AUDIO_AMR_WB = "audio/amr-wb";
  public static final String MIMETYPE_AUDIO_FLAC = "audio/flac";
  public static final String MIMETYPE_AUDIO_G711_ALAW = "audio/g711-alaw";
  public static final String MIMETYPE_AUDIO_G711_MLAW = "audio/g711-mlaw";
  public static final String MIMETYPE_AUDIO_MPEG = "audio/mpeg";
  public static final String MIMETYPE_AUDIO_MSGSM = "audio/gsm";
  public static final String MIMETYPE_AUDIO_OPUS = "audio/opus";
  public static final String MIMETYPE_AUDIO_QCELP = "audio/qcelp";
  public static final String MIMETYPE_AUDIO_RAW = "audio/raw";
  public static final String MIMETYPE_AUDIO_VORBIS = "audio/vorbis";
  public static final String MIMETYPE_TEXT_CEA_608 = "text/cea-608";
  public static final String MIMETYPE_TEXT_VTT = "text/vtt";
  public static final String MIMETYPE_VIDEO_AVC = "video/avc";
  public static final String MIMETYPE_VIDEO_H263 = "video/3gpp";
  public static final String MIMETYPE_VIDEO_HEVC = "video/hevc";
  public static final String MIMETYPE_VIDEO_MPEG2 = "video/mpeg2";
  public static final String MIMETYPE_VIDEO_MPEG4 = "video/mp4v-es";
  public static final String MIMETYPE_VIDEO_RAW = "video/raw";
  public static final String MIMETYPE_VIDEO_VP8 = "video/x-vnd.on2.vp8";
  public static final String MIMETYPE_VIDEO_VP9 = "video/x-vnd.on2.vp9";
  private Map<String, Object> mMap;
  
  public MediaFormat()
  {
    mMap = new HashMap();
  }
  
  MediaFormat(Map<String, Object> paramMap)
  {
    mMap = paramMap;
  }
  
  public static final MediaFormat createAudioFormat(String paramString, int paramInt1, int paramInt2)
  {
    MediaFormat localMediaFormat = new MediaFormat();
    localMediaFormat.setString("mime", paramString);
    localMediaFormat.setInteger("sample-rate", paramInt1);
    localMediaFormat.setInteger("channel-count", paramInt2);
    return localMediaFormat;
  }
  
  public static final MediaFormat createSubtitleFormat(String paramString1, String paramString2)
  {
    MediaFormat localMediaFormat = new MediaFormat();
    localMediaFormat.setString("mime", paramString1);
    localMediaFormat.setString("language", paramString2);
    return localMediaFormat;
  }
  
  public static final MediaFormat createVideoFormat(String paramString, int paramInt1, int paramInt2)
  {
    MediaFormat localMediaFormat = new MediaFormat();
    localMediaFormat.setString("mime", paramString);
    localMediaFormat.setInteger("width", paramInt1);
    localMediaFormat.setInteger("height", paramInt2);
    return localMediaFormat;
  }
  
  public final boolean containsKey(String paramString)
  {
    return mMap.containsKey(paramString);
  }
  
  public final ByteBuffer getByteBuffer(String paramString)
  {
    return (ByteBuffer)mMap.get(paramString);
  }
  
  public final boolean getFeatureEnabled(String paramString)
  {
    paramString = (Integer)mMap.get("feature-" + paramString);
    if (paramString == null) {
      throw new IllegalArgumentException("feature is not specified");
    }
    return paramString.intValue() != 0;
  }
  
  public final float getFloat(String paramString)
  {
    return ((Float)mMap.get(paramString)).floatValue();
  }
  
  public final int getInteger(String paramString)
  {
    return ((Integer)mMap.get(paramString)).intValue();
  }
  
  public final int getInteger(String paramString, int paramInt)
  {
    try
    {
      int i = getInteger(paramString);
      return i;
    }
    catch (NullPointerException paramString)
    {
      return paramInt;
    }
    catch (ClassCastException paramString) {}
    return paramInt;
  }
  
  public final long getLong(String paramString)
  {
    return ((Long)mMap.get(paramString)).longValue();
  }
  
  final Map<String, Object> getMap()
  {
    return mMap;
  }
  
  public final String getString(String paramString)
  {
    return (String)mMap.get(paramString);
  }
  
  public final void setByteBuffer(String paramString, ByteBuffer paramByteBuffer)
  {
    mMap.put(paramString, paramByteBuffer);
  }
  
  public final void setFeatureEnabled(String paramString, boolean paramBoolean)
  {
    paramString = "feature-" + paramString;
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      setInteger(paramString, i);
      return;
    }
  }
  
  public final void setFloat(String paramString, float paramFloat)
  {
    mMap.put(paramString, new Float(paramFloat));
  }
  
  public final void setInteger(String paramString, int paramInt)
  {
    mMap.put(paramString, new Integer(paramInt));
  }
  
  public final void setLong(String paramString, long paramLong)
  {
    mMap.put(paramString, new Long(paramLong));
  }
  
  public final void setString(String paramString1, String paramString2)
  {
    mMap.put(paramString1, paramString2);
  }
  
  public final String toString()
  {
    return mMap.toString();
  }
}

/* Location:
 * Qualified Name:     android.media.MediaFormat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */