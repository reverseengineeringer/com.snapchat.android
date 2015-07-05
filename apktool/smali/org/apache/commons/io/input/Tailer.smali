.class public Lorg/apache/commons/io/input/Tailer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_BUFSIZE:I = 0x1000

.field private static final DEFAULT_DELAY_MILLIS:I = 0x3e8

.field private static final RAF_MODE:Ljava/lang/String; = "r"


# instance fields
.field private final delayMillis:J

.field private final end:Z

.field private final file:Ljava/io/File;

.field private final inbuf:[B

.field private final listener:Lorg/apache/commons/io/input/TailerListener;

.field private final reOpen:Z

.field private volatile run:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)V
    .locals 2

    .prologue
    .line 156
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V
    .locals 7

    .prologue
    .line 166
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V
    .locals 9

    .prologue
    .line 177
    const/16 v7, 0x1000

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V
    .locals 9

    .prologue
    .line 201
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)V
    .locals 9

    .prologue
    .line 189
    const/16 v8, 0x1000

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 214
    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    .line 215
    iput-wide p3, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    .line 216
    iput-boolean p5, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    .line 218
    new-array v0, p7, [B

    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    .line 221
    iput-object p2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 222
    invoke-interface {p2, p0}, Lorg/apache/commons/io/input/TailerListener;->init(Lorg/apache/commons/io/input/Tailer;)V

    .line 223
    iput-boolean p6, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    .line 224
    return-void
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer;
    .locals 3

    .prologue
    .line 312
    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)Lorg/apache/commons/io/input/Tailer;
    .locals 2

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;
    .locals 6

    .prologue
    .line 274
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;
    .locals 8

    .prologue
    .line 237
    new-instance v1, Lorg/apache/commons/io/input/Tailer;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V

    .line 238
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 239
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 240
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 241
    return-object v1
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)Lorg/apache/commons/io/input/Tailer;
    .locals 8

    .prologue
    .line 288
    const/16 v6, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;
    .locals 10

    .prologue
    .line 257
    new-instance v1, Lorg/apache/commons/io/input/Tailer;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 258
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 259
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 260
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 261
    return-object v1
.end method

.method private readLines(Ljava/io/RandomAccessFile;)J
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const/4 v1, 0x0

    .line 449
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    move v0, v1

    move-wide v4, v2

    .line 456
    :goto_0
    iget-boolean v6, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v8

    const/4 v6, -0x1

    if-eq v8, v6, :cond_3

    move v6, v1

    .line 457
    :goto_1
    if-ge v6, v8, :cond_2

    .line 458
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    aget-byte v9, v9, v6

    .line 459
    packed-switch v9, :pswitch_data_0

    .line 473
    :pswitch_0
    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 477
    int-to-long v2, v6

    add-long/2addr v2, v4

    add-long/2addr v2, v10

    move v0, v1

    .line 479
    :cond_0
    int-to-char v9, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 462
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 464
    int-to-long v2, v6

    add-long/2addr v2, v4

    add-long/2addr v2, v10

    move v0, v1

    .line 465
    goto :goto_2

    .line 467
    :pswitch_2
    if-eqz v0, :cond_1

    .line 468
    const/16 v0, 0xd

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    :cond_1
    const/4 v0, 0x1

    .line 471
    goto :goto_2

    .line 483
    :cond_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    goto :goto_0

    .line 486
    :cond_3
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 487
    return-wide v2

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getDelay()J
    .locals 2

    .prologue
    .line 330
    iget-wide v0, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    return-object v0
.end method

.method public run()V
    .locals 13

    .prologue
    const-wide/16 v2, 0x0

    .line 337
    const/4 v1, 0x0

    move-wide v4, v2

    move-wide v6, v2

    .line 342
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 344
    :try_start_1
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v9, "r"

    invoke-direct {v0, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 349
    :goto_1
    if-nez v1, :cond_0

    .line 351
    :try_start_2
    iget-wide v8, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    goto :goto_0

    .line 346
    :catch_1
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v0}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 425
    :catch_2
    move-exception v0

    .line 427
    :goto_2
    :try_start_4
    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v2, v0}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 430
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 431
    :goto_3
    return-void

    .line 356
    :cond_0
    :try_start_5
    iget-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 357
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 358
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v0

    :goto_5
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    move-wide v4, v2

    .line 356
    goto :goto_4

    .line 362
    :cond_2
    :goto_6
    :try_start_6
    iget-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v0, :cond_7

    .line 364
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-static {v0, v6, v7}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v0

    .line 367
    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 369
    cmp-long v10, v8, v4

    if-gez v10, :cond_3

    .line 372
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v0}, Lorg/apache/commons/io/input/TailerListener;->fileRotated()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 378
    :try_start_7
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v9, "r"

    invoke-direct {v0, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 381
    :try_start_8
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-wide v4, v2

    move-object v1, v0

    .line 385
    goto :goto_6

    .line 384
    :catch_3
    move-exception v0

    move-wide v11, v4

    move-object v4, v1

    move-wide v0, v11

    :goto_7
    :try_start_9
    iget-object v5, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v5}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-wide v11, v0

    move-object v1, v4

    move-wide v4, v11

    .line 386
    goto :goto_6

    .line 392
    :cond_3
    cmp-long v8, v8, v4

    if-lez v8, :cond_6

    .line 395
    :try_start_a
    invoke-direct {p0, v1}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 412
    :cond_4
    :goto_8
    iget-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v0, :cond_5

    .line 413
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 416
    :cond_5
    :try_start_b
    iget-wide v8, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 419
    :goto_9
    :try_start_c
    iget-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v0, :cond_8

    .line 420
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v9, "r"

    invoke-direct {v0, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 421
    :try_start_d
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :goto_a
    move-object v1, v0

    .line 423
    goto :goto_6

    .line 398
    :cond_6
    if-eqz v0, :cond_4

    .line 404
    const-wide/16 v4, 0x0

    :try_start_e
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 408
    invoke-direct {p0, v1}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-wide v6

    goto :goto_8

    .line 430
    :cond_7
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_3

    :catchall_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v4

    goto/16 :goto_5

    :catchall_3
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_5

    .line 425
    :catch_4
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_2

    :catch_5
    move-exception v0

    move-object v1, v4

    goto/16 :goto_2

    :catch_6
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_2

    :catch_7
    move-exception v0

    goto :goto_9

    .line 384
    :catch_8
    move-exception v1

    move-object v4, v0

    move-wide v0, v2

    goto :goto_7

    :cond_8
    move-object v0, v1

    goto :goto_a
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 439
    return-void
.end method
