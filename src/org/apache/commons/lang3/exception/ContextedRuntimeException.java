package org.apache.commons.lang3.exception;

import java.util.List;
import java.util.Set;
import org.apache.commons.lang3.tuple.Pair;

public class ContextedRuntimeException
  extends RuntimeException
  implements ExceptionContext
{
  private static final long serialVersionUID = 20110706L;
  private final ExceptionContext exceptionContext;
  
  public ContextedRuntimeException()
  {
    exceptionContext = new DefaultExceptionContext();
  }
  
  public ContextedRuntimeException(String paramString)
  {
    super(paramString);
    exceptionContext = new DefaultExceptionContext();
  }
  
  public ContextedRuntimeException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
    exceptionContext = new DefaultExceptionContext();
  }
  
  public ContextedRuntimeException(String paramString, Throwable paramThrowable, ExceptionContext paramExceptionContext)
  {
    super(paramString, paramThrowable);
    paramString = paramExceptionContext;
    if (paramExceptionContext == null) {
      paramString = new DefaultExceptionContext();
    }
    exceptionContext = paramString;
  }
  
  public ContextedRuntimeException(Throwable paramThrowable)
  {
    super(paramThrowable);
    exceptionContext = new DefaultExceptionContext();
  }
  
  public ContextedRuntimeException addContextValue(String paramString, Object paramObject)
  {
    exceptionContext.addContextValue(paramString, paramObject);
    return this;
  }
  
  public List<Pair<String, Object>> getContextEntries()
  {
    return exceptionContext.getContextEntries();
  }
  
  public Set<String> getContextLabels()
  {
    return exceptionContext.getContextLabels();
  }
  
  public List<Object> getContextValues(String paramString)
  {
    return exceptionContext.getContextValues(paramString);
  }
  
  public Object getFirstContextValue(String paramString)
  {
    return exceptionContext.getFirstContextValue(paramString);
  }
  
  public String getFormattedExceptionMessage(String paramString)
  {
    return exceptionContext.getFormattedExceptionMessage(paramString);
  }
  
  public String getMessage()
  {
    return getFormattedExceptionMessage(super.getMessage());
  }
  
  public String getRawMessage()
  {
    return super.getMessage();
  }
  
  public ContextedRuntimeException setContextValue(String paramString, Object paramObject)
  {
    exceptionContext.setContextValue(paramString, paramObject);
    return this;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.exception.ContextedRuntimeException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */