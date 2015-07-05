public final class baz
{
  @cgc
  public final String mId;
  public final String mMessageId;
  public final boolean mScrollToBottom;
  
  public baz(@cgb String paramString)
  {
    this(paramString, null, false);
  }
  
  public baz(@cgb String paramString1, @cgb String paramString2)
  {
    this(paramString1, paramString2, false);
  }
  
  private baz(@cgb String paramString1, @cgc String paramString2, boolean paramBoolean)
  {
    mId = paramString1;
    mScrollToBottom = paramBoolean;
    mMessageId = paramString2;
  }
  
  public baz(@cgb String paramString, boolean paramBoolean)
  {
    this(paramString, null, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     baz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */