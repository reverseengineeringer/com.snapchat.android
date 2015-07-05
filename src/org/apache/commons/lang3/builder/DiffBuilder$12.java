package org.apache.commons.lang3.builder;

import org.apache.commons.lang3.ArrayUtils;

class DiffBuilder$12
  extends Diff<Integer[]>
{
  private static final long serialVersionUID = 1L;
  
  DiffBuilder$12(DiffBuilder paramDiffBuilder, String paramString, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    super(paramString);
  }
  
  public Integer[] getLeft()
  {
    return ArrayUtils.toObject(val$lhs);
  }
  
  public Integer[] getRight()
  {
    return ArrayUtils.toObject(val$rhs);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.DiffBuilder.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */