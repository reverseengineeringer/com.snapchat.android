package org.apache.commons.lang3.builder;

class DiffBuilder$11
  extends Diff<Integer>
{
  private static final long serialVersionUID = 1L;
  
  DiffBuilder$11(DiffBuilder paramDiffBuilder, String paramString, int paramInt1, int paramInt2)
  {
    super(paramString);
  }
  
  public Integer getLeft()
  {
    return Integer.valueOf(val$lhs);
  }
  
  public Integer getRight()
  {
    return Integer.valueOf(val$rhs);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.DiffBuilder.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */