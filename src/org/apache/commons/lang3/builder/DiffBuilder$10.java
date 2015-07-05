package org.apache.commons.lang3.builder;

import org.apache.commons.lang3.ArrayUtils;

class DiffBuilder$10
  extends Diff<Float[]>
{
  private static final long serialVersionUID = 1L;
  
  DiffBuilder$10(DiffBuilder paramDiffBuilder, String paramString, float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    super(paramString);
  }
  
  public Float[] getLeft()
  {
    return ArrayUtils.toObject(val$lhs);
  }
  
  public Float[] getRight()
  {
    return ArrayUtils.toObject(val$rhs);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.DiffBuilder.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */