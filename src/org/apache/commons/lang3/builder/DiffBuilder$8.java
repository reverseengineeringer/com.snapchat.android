package org.apache.commons.lang3.builder;

import org.apache.commons.lang3.ArrayUtils;

class DiffBuilder$8
  extends Diff<Double[]>
{
  private static final long serialVersionUID = 1L;
  
  DiffBuilder$8(DiffBuilder paramDiffBuilder, String paramString, double[] paramArrayOfDouble1, double[] paramArrayOfDouble2)
  {
    super(paramString);
  }
  
  public Double[] getLeft()
  {
    return ArrayUtils.toObject(val$lhs);
  }
  
  public Double[] getRight()
  {
    return ArrayUtils.toObject(val$rhs);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.DiffBuilder.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */