import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public class ew
  implements au, Closeable, Iterator<as>
{
  private static final as EOF = new et("eof ")
  {
    protected final void _parseDetails(ByteBuffer paramAnonymousByteBuffer) {}
    
    protected final void getContent(ByteBuffer paramAnonymousByteBuffer) {}
    
    protected final long getContentSize()
    {
      return 0L;
    }
  };
  private static fi LOG = fi.a(ew.class);
  protected al boxParser;
  private List<as> boxes = new ArrayList();
  public ex dataSource;
  long endPosition = 0L;
  as lookahead = null;
  long parsePosition = 0L;
  long startPosition = 0L;
  
  public void addBox(as paramas)
  {
    if (paramas != null)
    {
      boxes = new ArrayList(getBoxes());
      paramas.setParent(this);
      boxes.add(paramas);
    }
  }
  
  public void close()
  {
    dataSource.close();
  }
  
  public List<as> getBoxes()
  {
    if ((dataSource != null) && (lookahead != EOF)) {
      return new fh(boxes, this);
    }
    return boxes;
  }
  
  public <T extends as> List<T> getBoxes(Class<T> paramClass)
  {
    Object localObject2 = null;
    List localList = getBoxes();
    int i = 0;
    Object localObject1 = null;
    if (i >= localList.size())
    {
      if (localObject1 != null) {
        return (List<T>)localObject1;
      }
    }
    else
    {
      as localas = (as)localList.get(i);
      Object localObject3 = localObject1;
      if (paramClass.isInstance(localas)) {
        if (localObject2 == null)
        {
          localObject2 = localObject1;
          localObject1 = localas;
        }
      }
      for (;;)
      {
        i += 1;
        localObject3 = localObject2;
        localObject2 = localObject1;
        localObject1 = localObject3;
        break;
        localObject3 = localObject1;
        if (localObject1 == null)
        {
          localObject3 = new ArrayList(2);
          ((List)localObject3).add(localObject2);
        }
        ((List)localObject3).add(localas);
        localObject1 = localObject2;
        localObject2 = localObject3;
      }
    }
    if (localObject2 != null) {
      return Collections.singletonList(localObject2);
    }
    return Collections.emptyList();
  }
  
  public <T extends as> List<T> getBoxes(Class<T> paramClass, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList(2);
    List localList = getBoxes();
    int i = 0;
    for (;;)
    {
      if (i >= localList.size()) {
        return localArrayList;
      }
      as localas = (as)localList.get(i);
      if (paramClass.isInstance(localas)) {
        localArrayList.add(localas);
      }
      if ((paramBoolean) && ((localas instanceof au))) {
        localArrayList.addAll(((au)localas).getBoxes(paramClass, paramBoolean));
      }
      i += 1;
    }
  }
  
  public ByteBuffer getByteBuffer(long paramLong1, long paramLong2)
  {
    if (dataSource != null) {
      synchronized (dataSource)
      {
        ByteBuffer localByteBuffer = dataSource.a(startPosition + paramLong1, paramLong2);
        return localByteBuffer;
      }
    }
    ??? = ByteBuffer.allocate(fe.a(paramLong2));
    long l2 = paramLong1 + paramLong2;
    Iterator localIterator = boxes.iterator();
    paramLong2 = 0L;
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return (ByteBuffer)((ByteBuffer)???).rewind();
      }
      as localas = (as)localIterator.next();
      long l1 = localas.getSize() + paramLong2;
      if ((l1 > paramLong1) && (paramLong2 < l2))
      {
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        WritableByteChannel localWritableByteChannel = Channels.newChannel(localByteArrayOutputStream);
        localas.getBox(localWritableByteChannel);
        localWritableByteChannel.close();
        if ((paramLong2 >= paramLong1) && (l1 <= l2))
        {
          ((ByteBuffer)???).put(localByteArrayOutputStream.toByteArray());
          paramLong2 = l1;
          continue;
        }
        int i;
        if ((paramLong2 < paramLong1) && (l1 > l2))
        {
          i = fe.a(localas.getSize() - (paramLong1 - paramLong2) - (l1 - l2));
          ((ByteBuffer)???).put(localByteArrayOutputStream.toByteArray(), fe.a(paramLong1 - paramLong2), i);
          paramLong2 = l1;
          continue;
        }
        if ((paramLong2 < paramLong1) && (l1 <= l2))
        {
          i = fe.a(localas.getSize() - (paramLong1 - paramLong2));
          ((ByteBuffer)???).put(localByteArrayOutputStream.toByteArray(), fe.a(paramLong1 - paramLong2), i);
          paramLong2 = l1;
          continue;
        }
        if ((paramLong2 >= paramLong1) && (l1 > l2))
        {
          i = fe.a(localas.getSize() - (l1 - l2));
          ((ByteBuffer)???).put(localByteArrayOutputStream.toByteArray(), 0, i);
        }
      }
      paramLong2 = l1;
    }
  }
  
  protected long getContainerSize()
  {
    long l = 0L;
    int i = 0;
    for (;;)
    {
      if (i >= getBoxes().size()) {
        return l;
      }
      l += ((as)boxes.get(i)).getSize();
      i += 1;
    }
  }
  
  public boolean hasNext()
  {
    if (lookahead == EOF) {
      return false;
    }
    if (lookahead != null) {
      return true;
    }
    try
    {
      lookahead = next();
      return true;
    }
    catch (NoSuchElementException localNoSuchElementException)
    {
      lookahead = EOF;
    }
    return false;
  }
  
  public void initContainer(ex paramex, long paramLong, al paramal)
  {
    dataSource = paramex;
    long l = paramex.b();
    startPosition = l;
    parsePosition = l;
    paramex.a(paramex.b() + paramLong);
    endPosition = paramex.b();
    boxParser = paramal;
  }
  
  /* Error */
  public as next()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 52	ew:lookahead	Las;
    //   4: ifnull +25 -> 29
    //   7: aload_0
    //   8: getfield 52	ew:lookahead	Las;
    //   11: getstatic 39	ew:EOF	Las;
    //   14: if_acmpeq +15 -> 29
    //   17: aload_0
    //   18: getfield 52	ew:lookahead	Las;
    //   21: astore_1
    //   22: aload_0
    //   23: aconst_null
    //   24: putfield 52	ew:lookahead	Las;
    //   27: aload_1
    //   28: areturn
    //   29: aload_0
    //   30: getfield 87	ew:dataSource	Lex;
    //   33: ifnull +15 -> 48
    //   36: aload_0
    //   37: getfield 54	ew:parsePosition	J
    //   40: aload_0
    //   41: getfield 58	ew:endPosition	J
    //   44: lcmp
    //   45: iflt +18 -> 63
    //   48: aload_0
    //   49: getstatic 39	ew:EOF	Las;
    //   52: putfield 52	ew:lookahead	Las;
    //   55: new 198	java/util/NoSuchElementException
    //   58: dup
    //   59: invokespecial 216	java/util/NoSuchElementException:<init>	()V
    //   62: athrow
    //   63: aload_0
    //   64: getfield 87	ew:dataSource	Lex;
    //   67: astore_1
    //   68: aload_1
    //   69: monitorenter
    //   70: aload_0
    //   71: getfield 87	ew:dataSource	Lex;
    //   74: aload_0
    //   75: getfield 54	ew:parsePosition	J
    //   78: invokeinterface 209 3 0
    //   83: aload_0
    //   84: getfield 211	ew:boxParser	Lal;
    //   87: aload_0
    //   88: getfield 87	ew:dataSource	Lex;
    //   91: aload_0
    //   92: invokeinterface 221 3 0
    //   97: astore_2
    //   98: aload_0
    //   99: aload_0
    //   100: getfield 87	ew:dataSource	Lex;
    //   103: invokeinterface 206 1 0
    //   108: putfield 54	ew:parsePosition	J
    //   111: aload_1
    //   112: monitorexit
    //   113: aload_2
    //   114: areturn
    //   115: astore_2
    //   116: aload_1
    //   117: monitorexit
    //   118: aload_2
    //   119: athrow
    //   120: astore_1
    //   121: new 198	java/util/NoSuchElementException
    //   124: dup
    //   125: invokespecial 216	java/util/NoSuchElementException:<init>	()V
    //   128: athrow
    //   129: astore_1
    //   130: new 198	java/util/NoSuchElementException
    //   133: dup
    //   134: invokespecial 216	java/util/NoSuchElementException:<init>	()V
    //   137: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	138	0	this	ew
    //   120	1	1	localEOFException	java.io.EOFException
    //   129	1	1	localIOException	java.io.IOException
    //   97	17	2	localas	as
    //   115	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   70	113	115	finally
    //   116	118	115	finally
    //   63	70	120	java/io/EOFException
    //   118	120	120	java/io/EOFException
    //   63	70	129	java/io/IOException
    //   118	120	129	java/io/IOException
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
  
  public void setBoxes(List<as> paramList)
  {
    boxes = new ArrayList(paramList);
    lookahead = EOF;
    dataSource = null;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getClass().getSimpleName()).append("[");
    int i = 0;
    for (;;)
    {
      if (i >= boxes.size())
      {
        localStringBuilder.append("]");
        return localStringBuilder.toString();
      }
      if (i > 0) {
        localStringBuilder.append(";");
      }
      localStringBuilder.append(((as)boxes.get(i)).toString());
      i += 1;
    }
  }
  
  public final void writeContainer(WritableByteChannel paramWritableByteChannel)
  {
    Iterator localIterator = getBoxes().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((as)localIterator.next()).getBox(paramWritableByteChannel);
    }
  }
}

/* Location:
 * Qualified Name:     ew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */