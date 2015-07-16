package com.snapchat.videotranscoder.mp4;

import al;
import an;
import aq;
import as;
import at;
import au;
import ax;
import ay;
import cfl;
import cgl;
import chc;
import fd;
import fh;
import fi;
import fs;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class MP4Metadata
{
  private final String mMP4Path;
  
  public MP4Metadata(@chc String paramString)
  {
    checkMp4FileExistsAndIsWriteable(paramString);
    mMP4Path = paramString;
  }
  
  private void checkMp4FileExistsAndIsWriteable(@chc String paramString)
  {
    File localFile = new File(paramString);
    if (!localFile.exists()) {
      throw new IllegalArgumentException("File " + paramString + " does not exist");
    }
    if (!localFile.canWrite()) {
      throw new IllegalArgumentException("No write permissions to file " + paramString);
    }
  }
  
  private void correctChunkOffsets(@chc an paraman, long paramLong)
  {
    paraman = fs.b(paraman, "/moov[0]/trak/mdia[0]/minf[0]/stbl[0]/stco[0]").iterator();
    while (paraman.hasNext())
    {
      as localas = (as)paraman.next();
      LinkedList localLinkedList = new LinkedList(localas.getParent().getBoxes());
      localLinkedList.remove(localas);
      long[] arrayOfLong = ((at)localas).a();
      int i = 0;
      while (i < arrayOfLong.length)
      {
        arrayOfLong[i] += paramLong;
        i += 1;
      }
      ax localax = new ax();
      cfl localcfl = cgl.a(ax.b, localax, localax, arrayOfLong);
      fi.a();
      fi.a(localcfl);
      a = arrayOfLong;
      localLinkedList.add(localax);
      localas.getParent().setBoxes(localLinkedList);
    }
  }
  
  private an getIsoFile()
  {
    Object localObject = new aq(IsoParserProperties.getInstance());
    try
    {
      localObject = new an(new fh(new File(mMP4Path)), (al)localObject);
      return (an)localObject;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      throw new IllegalStateException("Mp4 file no longer exists", localFileNotFoundException);
    }
  }
  
  private boolean needsOffsetCorrection(@chc an paraman)
  {
    paraman = paraman.getBoxes().iterator();
    while (paraman.hasNext())
    {
      as localas = (as)paraman.next();
      if ("mdat".equals(localas.getType())) {
        return false;
      }
      if ("moov".equals(localas.getType())) {
        return true;
      }
    }
    throw new IllegalStateException("Missing top-level boxes");
  }
  
  public SnapSegments getSnapSegments()
  {
    localObject4 = null;
    try
    {
      localan = getIsoFile();
      Object localObject1;
      if (localObject4 == null) {
        break label107;
      }
    }
    finally
    {
      try
      {
        localObject1 = (ay)fs.a(localan, "/moov/udta");
        if (localObject1 == null)
        {
          if (localan != null) {
            localan.close();
          }
          localObject1 = null;
        }
        do
        {
          return (SnapSegments)localObject1;
          localObject1 = (SnapMetadataBox)fs.a((fd)localObject1, "smet");
          if (localObject1 == null)
          {
            if (localan != null) {
              localan.close();
            }
            return null;
          }
          localObject1 = (SnapSegmentsBox)fs.a((fd)localObject1, "sseg");
          if (localObject1 == null)
          {
            if (localan != null) {
              localan.close();
            }
            return null;
          }
          localObject4 = ((SnapSegmentsBox)localObject1).getSnapSegments();
          localObject1 = localObject4;
        } while (localan == null);
        localan.close();
        return (SnapSegments)localObject4;
      }
      finally
      {
        for (;;)
        {
          an localan;
          localObject4 = localan;
        }
      }
      localObject2 = finally;
    }
    ((an)localObject4).close();
    label107:
    throw ((Throwable)localObject2);
  }
  
  /* Error */
  public void setSnapSegments(@chc SnapSegments paramSnapSegments)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 10
    //   3: aload_0
    //   4: invokespecial 185	com/snapchat/videotranscoder/mp4/MP4Metadata:getIsoFile	()Lan;
    //   7: astore 6
    //   9: aload 6
    //   11: ldc -78
    //   13: invokestatic 190	fs:a	(Lau;Ljava/lang/String;)Las;
    //   16: checkcast 212	aw
    //   19: astore 7
    //   21: aload 7
    //   23: ifnonnull +225 -> 248
    //   26: lconst_0
    //   27: lstore_2
    //   28: new 212	aw
    //   31: dup
    //   32: invokespecial 213	aw:<init>	()V
    //   35: astore 7
    //   37: aload 6
    //   39: aload 7
    //   41: invokevirtual 217	an:addBox	(Las;)V
    //   44: aload 7
    //   46: ldc -37
    //   48: invokestatic 200	fs:a	(Lfd;Ljava/lang/String;)Las;
    //   51: checkcast 192	ay
    //   54: astore 8
    //   56: aload 8
    //   58: ifnonnull +248 -> 306
    //   61: new 192	ay
    //   64: dup
    //   65: invokespecial 220	ay:<init>	()V
    //   68: astore 8
    //   70: aload 7
    //   72: aload 8
    //   74: invokevirtual 221	aw:addBox	(Las;)V
    //   77: aload 8
    //   79: ldc -59
    //   81: invokestatic 200	fs:a	(Lfd;Ljava/lang/String;)Las;
    //   84: checkcast 202	com/snapchat/videotranscoder/mp4/SnapMetadataBox
    //   87: astore 9
    //   89: aload 9
    //   91: ifnonnull +208 -> 299
    //   94: new 202	com/snapchat/videotranscoder/mp4/SnapMetadataBox
    //   97: dup
    //   98: invokespecial 222	com/snapchat/videotranscoder/mp4/SnapMetadataBox:<init>	()V
    //   101: astore 9
    //   103: aload 8
    //   105: aload 9
    //   107: invokevirtual 223	ay:addBox	(Las;)V
    //   110: aload 9
    //   112: astore 8
    //   114: aload 8
    //   116: ldc -52
    //   118: invokestatic 200	fs:a	(Lfd;Ljava/lang/String;)Las;
    //   121: checkcast 206	com/snapchat/videotranscoder/mp4/SnapSegmentsBox
    //   124: astore 11
    //   126: aload 11
    //   128: astore 9
    //   130: aload 11
    //   132: ifnonnull +19 -> 151
    //   135: new 206	com/snapchat/videotranscoder/mp4/SnapSegmentsBox
    //   138: dup
    //   139: invokespecial 224	com/snapchat/videotranscoder/mp4/SnapSegmentsBox:<init>	()V
    //   142: astore 9
    //   144: aload 8
    //   146: aload 9
    //   148: invokevirtual 225	com/snapchat/videotranscoder/mp4/SnapMetadataBox:addBox	(Las;)V
    //   151: aload 9
    //   153: aload_1
    //   154: invokevirtual 227	com/snapchat/videotranscoder/mp4/SnapSegmentsBox:setSnapSegments	(Lcom/snapchat/videotranscoder/mp4/SnapSegments;)V
    //   157: aload 7
    //   159: invokevirtual 231	aw:getSize	()J
    //   162: lstore 4
    //   164: aload_0
    //   165: aload 6
    //   167: invokespecial 233	com/snapchat/videotranscoder/mp4/MP4Metadata:needsOffsetCorrection	(Lan;)Z
    //   170: ifeq +13 -> 183
    //   173: aload_0
    //   174: aload 6
    //   176: lload 4
    //   178: lload_2
    //   179: lsub
    //   180: invokespecial 235	com/snapchat/videotranscoder/mp4/MP4Metadata:correctChunkOffsets	(Lan;J)V
    //   183: ldc -19
    //   185: ldc -17
    //   187: invokestatic 243	java/io/File:createTempFile	(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    //   190: astore_1
    //   191: new 245	java/io/FileOutputStream
    //   194: dup
    //   195: aload_1
    //   196: invokevirtual 248	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   199: invokespecial 249	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   202: astore 7
    //   204: aload 6
    //   206: aload 7
    //   208: invokevirtual 253	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   211: invokevirtual 257	an:writeContainer	(Ljava/nio/channels/WritableByteChannel;)V
    //   214: aload 7
    //   216: invokevirtual 258	java/io/FileOutputStream:close	()V
    //   219: invokestatic 263	com/snapchat/videotranscoder/utils/Utils:getInstance	()Lcom/snapchat/videotranscoder/utils/Utils;
    //   222: aload_1
    //   223: new 21	java/io/File
    //   226: dup
    //   227: aload_0
    //   228: getfield 17	com/snapchat/videotranscoder/mp4/MP4Metadata:mMP4Path	Ljava/lang/String;
    //   231: invokespecial 23	java/io/File:<init>	(Ljava/lang/String;)V
    //   234: invokevirtual 267	com/snapchat/videotranscoder/utils/Utils:moveFile	(Ljava/io/File;Ljava/io/File;)V
    //   237: aload 6
    //   239: ifnull +8 -> 247
    //   242: aload 6
    //   244: invokevirtual 195	an:close	()V
    //   247: return
    //   248: aload 7
    //   250: invokevirtual 231	aw:getSize	()J
    //   253: lstore_2
    //   254: goto -210 -> 44
    //   257: astore_1
    //   258: aconst_null
    //   259: astore 6
    //   261: aload 10
    //   263: astore 7
    //   265: aload 7
    //   267: ifnull +8 -> 275
    //   270: aload 7
    //   272: invokevirtual 258	java/io/FileOutputStream:close	()V
    //   275: aload 6
    //   277: ifnull +8 -> 285
    //   280: aload 6
    //   282: invokevirtual 195	an:close	()V
    //   285: aload_1
    //   286: athrow
    //   287: astore_1
    //   288: aload 10
    //   290: astore 7
    //   292: goto -27 -> 265
    //   295: astore_1
    //   296: goto -31 -> 265
    //   299: aload 9
    //   301: astore 8
    //   303: goto -189 -> 114
    //   306: goto -229 -> 77
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	309	0	this	MP4Metadata
    //   0	309	1	paramSnapSegments	SnapSegments
    //   27	227	2	l1	long
    //   162	15	4	l2	long
    //   7	274	6	localan	an
    //   19	272	7	localObject1	Object
    //   54	248	8	localObject2	Object
    //   87	213	9	localObject3	Object
    //   1	288	10	localObject4	Object
    //   124	7	11	localSnapSegmentsBox	SnapSegmentsBox
    // Exception table:
    //   from	to	target	type
    //   3	9	257	finally
    //   9	21	287	finally
    //   28	44	287	finally
    //   44	56	287	finally
    //   61	77	287	finally
    //   77	89	287	finally
    //   94	110	287	finally
    //   114	126	287	finally
    //   135	151	287	finally
    //   151	183	287	finally
    //   183	204	287	finally
    //   219	237	287	finally
    //   248	254	287	finally
    //   204	219	295	finally
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.mp4.MP4Metadata
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */