package com.snapchat.videotranscoder.utils;

import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import cgb;
import com.snapchat.videotranscoder.R.raw;
import com.snapchat.videotranscoder.task.SetupException;
import java.io.IOException;

public class TranscodingResources
{
  private static final String MISS_ETIKATE_LOOKUP_PATH = "res/raw/lookup_miss_etikate.png";
  private static final String TAG = "TranscodingResourceProvider";
  private static TranscodingResources sInstance = null;
  private String mFragmentShader;
  private final RawResourceStringProvider mRawResourceStringProvider;
  private final Utils mUtils;
  private String mVertexShader;
  
  public TranscodingResources(@cgb Context paramContext)
  {
    this(new RawResourceStringProvider(paramContext), Utils.getInstance());
  }
  
  protected TranscodingResources(@cgb RawResourceStringProvider paramRawResourceStringProvider, @cgb Utils paramUtils)
  {
    mRawResourceStringProvider = paramRawResourceStringProvider;
    mUtils = paramUtils;
  }
  
  private Bitmap loadRawBitmap(String paramString)
  {
    try
    {
      Bitmap localBitmap = BitmapFactory.decodeStream(getClass().getClassLoader().getResourceAsStream(paramString));
      return localBitmap;
    }
    catch (NullPointerException localNullPointerException)
    {
      throw new SetupException("Unable find load bitmap from path: " + paramString, localNullPointerException);
    }
  }
  
  private String loadResource(int paramInt)
  {
    if (mUtils.isOnMainThread()) {
      String.format("Loading resource %i on UI thread. This may degrade performance.", new Object[] { Integer.valueOf(paramInt) });
    }
    try
    {
      String str = mRawResourceStringProvider.get(paramInt);
      return str;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      throw new SetupException("Unable to find resource: " + paramInt, localNotFoundException);
    }
    catch (IOException localIOException)
    {
      throw new SetupException("Unable to read resource: " + paramInt, localIOException);
    }
  }
  
  public String loadFragmentShader()
  {
    if (mFragmentShader == null) {
      mFragmentShader = loadResource(R.raw.fragment_shader);
    }
    return mFragmentShader;
  }
  
  public Bitmap loadMissEtikateLookupBitmap()
  {
    return loadRawBitmap("res/raw/lookup_miss_etikate.png");
  }
  
  public String loadVertexShader()
  {
    if (mVertexShader == null) {
      mVertexShader = loadResource(R.raw.vertex_shader);
    }
    return mVertexShader;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.utils.TranscodingResources
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */