final class azs$b
  extends th
{
  private final String mRecipient;
  private final String mTaskId;
  
  public azs$b(String paramString1, String paramString2)
  {
    mRecipient = paramString1;
    mTaskId = paramString2;
  }
  
  public final Object b()
  {
    return new pl();
  }
  
  protected final String d()
  {
    return "/debug/request_client_log?recipientUsername=" + mRecipient + "&taskId=" + mTaskId;
  }
  
  public final String h()
  {
    return "https://feelinsonice-hrd.appspot.com";
  }
}

/* Location:
 * Qualified Name:     azs.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */