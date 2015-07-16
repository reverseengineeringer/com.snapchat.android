package com.snapchat.videotranscoder.video;

import chc;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.utils.TranscodingResources;

public class FragmentShader$Builder
{
  protected static final String FILTER_GREYSCALE_DEFINITION = "#define FILTER_GREYSCALE\n";
  protected static final String FILTER_INSTASNAP_DEFINITION = "#define FILTER_INSTASNAP\n";
  protected static final String FILTER_MISS_ETIKATE_DEFINITION = "#define FILTER_MISS_ETIKATE\n";
  protected static final String FILTER_NORMAL_DEFINITION = "#define FILTER_NORMAL\n";
  protected static final String FILTER_SEPIA_DEFINITION = "#define FILTER_SEPIA\n";
  protected static final String LEFT_FILTER_GREYSCALE_DEFINITION = "#define LEFT_FILTER_GREYSCALE\n";
  protected static final String LEFT_FILTER_INSTASNAP_DEFINITION = "#define LEFT_FILTER_INSTASNAP\n";
  protected static final String LEFT_FILTER_MISS_ETIKATE_DEFINITION = "#define LEFT_FILTER_MISS_ETIKATE\n";
  protected static final String LEFT_FILTER_NORMAL_DEFINITION = "#define LEFT_FILTER_NORMAL\n";
  protected static final String LEFT_FILTER_SEPIA_DEFINITION = "#define LEFT_FILTER_SEPIA\n";
  protected static final String OVERLAY_ENABLED_DEFINITION = "#define OVERLAY_ENABLED\n";
  protected static final String RIGHT_FILTER_GREYSCALE_DEFINITION = "#define RIGHT_FILTER_GREYSCALE\n";
  protected static final String RIGHT_FILTER_INSTASNAP_DEFINITION = "#define RIGHT_FILTER_INSTASNAP\n";
  protected static final String RIGHT_FILTER_MISS_ETIKATE_DEFINITION = "#define RIGHT_FILTER_MISS_ETIKATE\n";
  protected static final String RIGHT_FILTER_NORMAL_DEFINITION = "#define RIGHT_FILTER_NORMAL\n";
  protected static final String RIGHT_FILTER_SEPIA_DEFINITION = "#define RIGHT_FILTER_SEPIA\n";
  protected static final String SPLIT_FILTER_ENABLED_DEFINITION = "#define SPLIT_FILTER_ENABLED\n";
  private FragmentShader.Filter mFilter = null;
  private FragmentShader.Filter mLeftFilter = null;
  private boolean mOverlayEnabled = false;
  private FragmentShader.Filter mRightFilter = null;
  private boolean mSplitEnabled = false;
  private final TranscodingResources mTranscodingResources;
  
  public FragmentShader$Builder(@chc TranscodingResources paramTranscodingResources)
  {
    if (paramTranscodingResources == null) {
      throw new NullPointerException("transcodingResources is null");
    }
    mTranscodingResources = paramTranscodingResources;
  }
  
  private String getFilterPreprocessorDefinition()
  {
    switch (FragmentShader.1.$SwitchMap$com$snapchat$videotranscoder$video$FragmentShader$Filter[mFilter.ordinal()])
    {
    default: 
      throw new IllegalStateException("Unhandled filter type: " + mFilter);
    case 1: 
      return "#define FILTER_NORMAL\n";
    case 2: 
      return "#define FILTER_GREYSCALE\n";
    case 3: 
      return "#define FILTER_SEPIA\n";
    case 4: 
      return "#define FILTER_INSTASNAP\n";
    }
    return "#define FILTER_MISS_ETIKATE\n";
  }
  
  private String getLeftFilterPreprocessorDefinition()
  {
    switch (FragmentShader.1.$SwitchMap$com$snapchat$videotranscoder$video$FragmentShader$Filter[mLeftFilter.ordinal()])
    {
    default: 
      throw new IllegalStateException("Unhandled filter type: " + mLeftFilter);
    case 1: 
      return "#define LEFT_FILTER_NORMAL\n";
    case 2: 
      return "#define LEFT_FILTER_GREYSCALE\n";
    case 3: 
      return "#define LEFT_FILTER_SEPIA\n";
    case 4: 
      return "#define LEFT_FILTER_INSTASNAP\n";
    }
    return "#define LEFT_FILTER_MISS_ETIKATE\n";
  }
  
  private String getRightFilterPreprocessorDefinition()
  {
    switch (FragmentShader.1.$SwitchMap$com$snapchat$videotranscoder$video$FragmentShader$Filter[mRightFilter.ordinal()])
    {
    default: 
      throw new IllegalStateException("Unhandled filter type: " + mRightFilter);
    case 1: 
      return "#define RIGHT_FILTER_NORMAL\n";
    case 2: 
      return "#define RIGHT_FILTER_GREYSCALE\n";
    case 3: 
      return "#define RIGHT_FILTER_SEPIA\n";
    case 4: 
      return "#define RIGHT_FILTER_INSTASNAP\n";
    }
    return "#define RIGHT_FILTER_MISS_ETIKATE\n";
  }
  
  public FragmentShader build()
  {
    if (mSplitEnabled)
    {
      if (mFilter != null) {
        throw new SetupException("setFilter called for split shader");
      }
      if (mLeftFilter == null) {
        mLeftFilter = FragmentShader.Filter.NORMAL;
      }
      if (mRightFilter == null) {
        mRightFilter = FragmentShader.Filter.NORMAL;
      }
    }
    for (;;)
    {
      Object localObject2 = "";
      if (mSplitEnabled) {
        localObject2 = "" + "#define SPLIT_FILTER_ENABLED\n";
      }
      Object localObject1 = localObject2;
      if (mOverlayEnabled) {
        localObject1 = (String)localObject2 + "#define OVERLAY_ENABLED\n";
      }
      localObject2 = localObject1;
      if (mFilter != null) {
        localObject2 = (String)localObject1 + getFilterPreprocessorDefinition();
      }
      localObject1 = localObject2;
      if (mLeftFilter != null) {
        localObject1 = (String)localObject2 + getLeftFilterPreprocessorDefinition();
      }
      localObject2 = localObject1;
      if (mRightFilter != null) {
        localObject2 = (String)localObject1 + getRightFilterPreprocessorDefinition();
      }
      return new FragmentShader((String)localObject2 + mTranscodingResources.loadFragmentShader(), null);
      if (mLeftFilter != null) {
        throw new SetupException("Left filter defined for non-split shader");
      }
      if (mRightFilter != null) {
        throw new SetupException("Right filter defined for non-split shader");
      }
      if (mFilter == null) {
        mFilter = FragmentShader.Filter.NORMAL;
      }
    }
  }
  
  public Builder enableOverlay(boolean paramBoolean)
  {
    mOverlayEnabled = paramBoolean;
    return this;
  }
  
  public Builder enableSplit(boolean paramBoolean)
  {
    mSplitEnabled = paramBoolean;
    return this;
  }
  
  public Builder setFilter(@chc FragmentShader.Filter paramFilter)
  {
    mFilter = paramFilter;
    return this;
  }
  
  public Builder setLeftFilter(@chc FragmentShader.Filter paramFilter)
  {
    mLeftFilter = paramFilter;
    return this;
  }
  
  public Builder setRightFilter(@chc FragmentShader.Filter paramFilter)
  {
    mRightFilter = paramFilter;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.video.FragmentShader.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */