.class public final Lkkkkkk/xkkxxk;
.super Ljava/lang/Object;


# static fields
.field private static final b041D041D041DН041DН:J = -0x1L

.field public static b041D041DН041D041DН:I = 0x2

.field private static final b041DН041DН041DН:I = 0x3

.field public static b041DНН041D041DН:I = 0x0

.field private static final bН041D041DН041DН:I = 0x4000

.field public static bН041DН041D041DН:I = 0x1

.field private static final bНН041DН041DН:Ljava/lang/String; = "\u0166\u01b2\u01a1\u01a8"

.field public static bННН041D041DН:I = 0x1b


# direct methods
.method public constructor <init>()V
    .locals 2

    :try_start_0
    sget v0, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    sget v1, Lkkkkkk/xkkxxk;->bН041DН041D041DН:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    add-int/2addr v0, v1

    :try_start_1
    sget v1, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    mul-int/2addr v0, v1

    invoke-static {}, Lkkkkkk/xkkxxk;->bН041D041DНН041D()I

    move-result v1

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/xkkxxk;->b041DНН041D041DН:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v0, v1, :cond_1

    sget v0, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    sget v1, Lkkkkkk/xkkxxk;->bН041DН041D041DН:I

    add-int/2addr v0, v1

    sget v1, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/xkkxxk;->b041D041DН041D041DН:I

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/xkkxxk;->b041DНН041D041DН:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x21

    sput v0, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    const/4 v0, 0x4

    sput v0, Lkkkkkk/xkkxxk;->b041DНН041D041DН:I

    :cond_0
    const/16 v0, 0x46

    :try_start_2
    sput v0, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    const/16 v0, 0x13

    sput v0, Lkkkkkk/xkkxxk;->b041DНН041D041DН:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :try_start_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0
.end method

.method public static b041D041D041DНН041D()I
    .locals 1

    const/16 v0, 0x43

    return v0
.end method

.method private static b041D041DН041DН041D(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    new-instance v0, Ljava/io/IOException;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {}, Lkkkkkk/xkkxxk;->b041D041D041DНН041D()I

    move-result v1

    sget v2, Lkkkkkk/xkkxxk;->bН041DН041D041DН:I

    add-int/2addr v1, v2

    invoke-static {}, Lkkkkkk/xkkxxk;->b041D041D041DНН041D()I

    move-result v2

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/xkkxxk;->b041D041DН041D041DН:I

    rem-int/2addr v1, v2

    sget v2, Lkkkkkk/xkkxxk;->b041DНН041D041DН:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x5

    sput v1, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    const/16 v1, 0x5d

    sput v1, Lkkkkkk/xkkxxk;->b041DНН041D041DН:I

    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uff51\uff6c\uff74\uff77\uff70\uff6f\uff2b\uff7f\uff7a\uff2b\uff6e\uff7d\uff70\uff6c\uff7f\uff70\uff2b\uff6e\uff6c\uff6e\uff73\uff70\uff2b\uff6f\uff74\uff7d\uff70\uff6e\uff7f\uff7a\uff7d\uff84\uff2b"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v3, 0xf5

    const/4 v4, 0x1

    :try_start_4
    invoke-static {v2, v3, v4}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :cond_1
    return-void
.end method

.method private static b041DН041D041DН041D(Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/xkkxxk;->b041D041DН041DН041D(Ljava/io/File;)V

    invoke-static {p0}, Lkkkkkk/xkkxxk;->b041D041DН041DН041D(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_3

    :cond_0
    return-void

    :cond_1
    :goto_0
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-ge v0, v2, :cond_0

    :try_start_1
    aget-object v3, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    sget v4, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    sget v5, Lkkkkkk/xkkxxk;->bН041DН041D041DН:I

    add-int/2addr v4, v5

    sget v5, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    mul-int/2addr v4, v5

    sget v5, Lkkkkkk/xkkxxk;->b041D041DН041D041DН:I

    rem-int/2addr v4, v5

    sget v5, Lkkkkkk/xkkxxk;->b041DНН041D041DН:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eq v4, v5, :cond_2

    const/16 v4, 0x2a

    :try_start_3
    sput v4, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    const/16 v4, 0x5f

    sput v4, Lkkkkkk/xkkxxk;->b041DНН041D041DН:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    sget v3, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    sget v4, Lkkkkkk/xkkxxk;->bН041DН041D041DН:I

    add-int/2addr v4, v3

    mul-int/2addr v3, v4

    sget v4, Lkkkkkk/xkkxxk;->b041D041DН041D041DН:I

    rem-int/2addr v3, v4

    packed-switch v3, :pswitch_data_0

    invoke-static {}, Lkkkkkk/xkkxxk;->b041D041D041DНН041D()I

    move-result v3

    sput v3, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    const/16 v3, 0x30

    sput v3, Lkkkkkk/xkkxxk;->b041DНН041D041DН:I

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    throw v0

    :cond_3
    :try_start_6
    array-length v2, v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    const/4 v0, 0x0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static b041DНН041DН041D(Ljava/io/Closeable;)V
    .locals 2

    sget v0, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    sget v1, Lkkkkkk/xkkxxk;->bН041DН041D041DН:I

    add-int/2addr v0, v1

    sget v1, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/xkkxxk;->b041D041DН041D041DН:I

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/xkkxxk;->b041DНН041D041DН:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x3e

    sput v0, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    invoke-static {}, Lkkkkkk/xkkxxk;->b041D041D041DНН041D()I

    move-result v0

    sput v0, Lkkkkkk/xkkxxk;->b041DНН041D041DН:I

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static bН041D041D041DН041D(Ljava/io/File;)Z
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    sget v2, Lkkkkkk/xkkxxk;->bН041DН041D041DН:I

    add-int/2addr v1, v2

    sget v2, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/xkkxxk;->b041D041DН041D041DН:I

    rem-int/2addr v1, v2

    sget v2, Lkkkkkk/xkkxxk;->b041DНН041D041DН:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lkkkkkk/xkkxxk;->b041D041D041DНН041D()I

    move-result v1

    sput v1, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    const/16 v1, 0x32

    sput v1, Lkkkkkk/xkkxxk;->b041DНН041D041DН:I

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bН041D041DНН041D()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method private static bН041DН041DН041D(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v3, Ljava/util/zip/ZipEntry;

    const-string v4, "\u032d\u0336\u032b\u033d\u033d\u032f\u033d\u02f8\u032e\u032f\u0342"

    const/16 v5, 0xee

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :pswitch_0
    packed-switch v7, :pswitch_data_0

    :goto_0
    const/4 v4, 0x1

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v4, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    invoke-static {}, Lkkkkkk/xkkxxk;->bННН041DН041D()I

    move-result v5

    add-int/2addr v5, v4

    mul-int/2addr v4, v5

    sget v5, Lkkkkkk/xkkxxk;->b041D041DН041D041DН:I

    rem-int/2addr v4, v5

    packed-switch v4, :pswitch_data_2

    sput v8, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    const/16 v4, 0x3b

    sput v4, Lkkkkkk/xkkxxk;->b041DНН041D041DН:I

    :pswitch_2
    :try_start_3
    invoke-virtual {v3, v0, v1}, Ljava/util/zip/ZipEntry;->setTime(J)V

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 v0, 0x4000

    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_1
    :pswitch_3
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    :try_start_4
    sget v3, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    sget v4, Lkkkkkk/xkkxxk;->bН041DН041D041DН:I

    add-int/2addr v4, v3

    mul-int/2addr v3, v4

    sget v4, Lkkkkkk/xkkxxk;->b041D041DН041D041DН:I

    rem-int/2addr v3, v4

    packed-switch v3, :pswitch_data_3

    const/16 v3, 0x41

    sput v3, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    const/16 v3, 0x3d

    sput v3, Lkkkkkk/xkkxxk;->b041DНН041D041DН:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    throw v0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {p0}, Lkkkkkk/xkkxxk;->b041DНН041DН041D(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    throw v0

    :cond_0
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {p0}, Lkkkkkk/xkkxxk;->b041DНН041DН041D(Ljava/io/Closeable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public static bНН041D041DН041D(Landroid/content/Context;[Ljava/lang/String;Ljava/io/File;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static {p2}, Lkkkkkk/xkkxxk;->b041DН041D041DН041D(Ljava/io/File;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-ge v0, v5, :cond_4

    aget-object v6, p1, v0

    new-instance v7, Ljava/io/BufferedInputStream;

    :pswitch_0
    const/4 v1, 0x1

    packed-switch v1, :pswitch_data_0

    :goto_1
    const/4 v1, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x2

    invoke-static {v3, v6, v1}, Lkkkkkk/xkkkxk;->b041EОООО041E(Landroid/content/res/AssetManager;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v8, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :pswitch_2
    const/4 v2, 0x1

    packed-switch v2, :pswitch_data_2

    :goto_2
    const/4 v2, 0x0

    packed-switch v2, :pswitch_data_3

    goto :goto_2

    :pswitch_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=izc"

    const/16 v9, 0x13

    const/4 v10, 0x4

    invoke-static {v2, v9, v10}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v1, 0x0

    :cond_1
    :goto_3
    const/4 v9, 0x3

    if-ge v2, v9, :cond_2

    if-nez v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v7, v8}, Lkkkkkk/xkkxxk;->bН041DН041DН041D(Ljava/io/InputStream;Ljava/io/File;)V

    invoke-static {v8}, Lkkkkkk/xkkxxk;->bН041D041D041DН041D(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    invoke-static {}, Lkkkkkk/xkkxxk;->b041D041D041DНН041D()I

    move-result v9

    sget v10, Lkkkkkk/xkkxxk;->bН041DН041D041DН:I

    add-int/2addr v9, v10

    invoke-static {}, Lkkkkkk/xkkxxk;->b041D041D041DНН041D()I

    move-result v10

    mul-int/2addr v9, v10

    invoke-static {}, Lkkkkkk/xkkxxk;->bН041D041DНН041D()I

    move-result v10

    rem-int/2addr v9, v10

    sget v10, Lkkkkkk/xkkxxk;->b041DНН041D041DН:I

    if-eq v9, v10, :cond_1

    const/16 v9, 0x5b

    sput v9, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    invoke-static {}, Lkkkkkk/xkkxxk;->b041D041D041DНН041D()I

    move-result v9

    sput v9, Lkkkkkk/xkkxxk;->b041DНН041D041DН:I

    goto :goto_3

    :cond_2
    if-nez v1, :cond_3

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "O{\u0081xp,z{\u0080,o~qm\u0080q,\u0086u|,ruxq,"

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u008a\u00d0\u00d9\u00dc\u008a\u00ce\u00cf\u00e2\u008a"

    const/16 v3, 0x48

    const/16 v4, 0x22

    const/4 v5, 0x3

    invoke-static {v2, v3, v4, v5}, Lkkkkkk/kkxkkk;->b041AККК041AК(Ljava/lang/String;CCC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "l"

    const/16 v3, 0x45

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    sget v1, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    sget v2, Lkkkkkk/xkkxxk;->bН041DН041D041DН:I

    add-int/2addr v1, v2

    sget v2, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/xkkxxk;->b041D041DН041D041DН:I

    rem-int/2addr v1, v2

    sget v2, Lkkkkkk/xkkxxk;->b041DНН041D041DН:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x35

    sput v1, Lkkkkkk/xkkxxk;->bННН041D041DН:I

    invoke-static {}, Lkkkkkk/xkkxxk;->b041D041D041DНН041D()I

    move-result v1

    sput v1, Lkkkkkk/xkkxxk;->b041DНН041D041DН:I

    goto/16 :goto_0

    :cond_4
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static bННН041DН041D()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
