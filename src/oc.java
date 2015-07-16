import android.annotation.TargetApi;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;

@TargetApi(18)
public final class oc
{
  public static final String COUNT_METRIC_PARAM_NAME = "count";
  public static final String IMAGE_COUNT_METRIC_PARAM_NAME = "image_count";
  public static final String MEDIA_DURATION_METRIC_PARAM_NAME = "media_duration";
  public static final String METRIC_NAME = "SAVE_ENTIRE_STORY";
  public static final String REASON_METRIC_PARAM_NAME = "reason";
  public static final String SAVE_STORY_TIME_METRIC_PARAM_NAME = "save_story_time";
  public static final boolean SHOULD_LOG_TO_FLURRY = false;
  public static final String SUCCESS_METRIC_PARAM_NAME = "success";
  public static final String TRANSCODING_STATUS_METRIC_PARAM_NAME = "transcoding_status";
  public static final String VIDEO_BITRATE_METRIC_PARAM_NAME = "video_bitrate";
  public static final String VIDEO_COUNT_METRIC_PARAM_NAME = "video_count";
  public static final String VIDEO_FRAMERATE_METRIC_PARAM_NAME = "video_framerate";
  public static final String VIDEO_HEIGHT_METRIC_PARAM_NAME = "video_height";
  public static final String VIDEO_WIDTH_METRIC_PARAM_NAME = "video_width";
  private static final oc sInstance = new oc();
  private final EasyMetric.EasyMetricFactory mEasyMetricFactory;
  
  private oc()
  {
    this(new EasyMetric.EasyMetricFactory());
  }
  
  private oc(@chc EasyMetric.EasyMetricFactory paramEasyMetricFactory)
  {
    mEasyMetricFactory = paramEasyMetricFactory;
  }
  
  public static oc a()
  {
    return sInstance;
  }
}

/* Location:
 * Qualified Name:     oc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */