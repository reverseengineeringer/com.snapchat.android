package com.snapchat.videotranscoder.utils;

public class ImageTransformationMatrixFactory
{
  public ImageTransformationMatrix getTransformationMatrix(boolean paramBoolean)
  {
    if (paramBoolean) {
      return new ImageTransformationMatrixFront();
    }
    return new ImageTransformationMatrix();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.utils.ImageTransformationMatrixFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */