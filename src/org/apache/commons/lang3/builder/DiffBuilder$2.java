package org.apache.commons.lang3.builder;

import org.apache.commons.lang3.ArrayUtils;

class DiffBuilder$2
  extends Diff<Boolean[]>
{
  private static final long serialVersionUID = 1L;
  
  DiffBuilder$2(DiffBuilder paramDiffBuilder, String paramString, boolean[] paramArrayOfBoolean1, boolean[] paramArrayOfBoolean2)
  {
    super(paramString);
  }
  
  public Boolean[] getLeft()
  {
    return ArrayUtils.toObject(val$lhs);
  }
  
  public Boolean[] getRight()
  {
    return ArrayUtils.toObject(val$rhs);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.DiffBuilder.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */