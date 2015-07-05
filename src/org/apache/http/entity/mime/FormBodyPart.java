package org.apache.http.entity.mime;

import org.apache.http.entity.ContentType;
import org.apache.http.entity.mime.content.AbstractContentBody;
import org.apache.http.entity.mime.content.ContentBody;
import org.apache.http.util.Args;

public class FormBodyPart
{
  private final ContentBody body;
  private final Header header;
  private final String name;
  
  public FormBodyPart(String paramString, ContentBody paramContentBody)
  {
    Args.notNull(paramString, "Name");
    Args.notNull(paramContentBody, "Body");
    name = paramString;
    body = paramContentBody;
    header = new Header();
    generateContentDisp(paramContentBody);
    generateContentType(paramContentBody);
    generateTransferEncoding(paramContentBody);
  }
  
  public void addField(String paramString1, String paramString2)
  {
    Args.notNull(paramString1, "Field name");
    header.addField(new MinimalField(paramString1, paramString2));
  }
  
  protected void generateContentDisp(ContentBody paramContentBody)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("form-data; name=\"");
    localStringBuilder.append(getName());
    localStringBuilder.append("\"");
    if (paramContentBody.getFilename() != null)
    {
      localStringBuilder.append("; filename=\"");
      localStringBuilder.append(paramContentBody.getFilename());
      localStringBuilder.append("\"");
    }
    addField("Content-Disposition", localStringBuilder.toString());
  }
  
  protected void generateContentType(ContentBody paramContentBody)
  {
    if ((paramContentBody instanceof AbstractContentBody)) {}
    for (Object localObject = ((AbstractContentBody)paramContentBody).getContentType(); localObject != null; localObject = null)
    {
      addField("Content-Type", ((ContentType)localObject).toString());
      return;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append(paramContentBody.getMimeType());
    if (paramContentBody.getCharset() != null)
    {
      ((StringBuilder)localObject).append("; charset=");
      ((StringBuilder)localObject).append(paramContentBody.getCharset());
    }
    addField("Content-Type", ((StringBuilder)localObject).toString());
  }
  
  protected void generateTransferEncoding(ContentBody paramContentBody)
  {
    addField("Content-Transfer-Encoding", paramContentBody.getTransferEncoding());
  }
  
  public ContentBody getBody()
  {
    return body;
  }
  
  public Header getHeader()
  {
    return header;
  }
  
  public String getName()
  {
    return name;
  }
}

/* Location:
 * Qualified Name:     org.apache.http.entity.mime.FormBodyPart
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */