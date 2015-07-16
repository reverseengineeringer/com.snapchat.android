.class public Lkkkkkk/kkxkxk;
.super Landroid/content/res/AssetFileDescriptor;


# static fields
.field public static b041D041D041DННН:I = 0x2

.field public static b041DН041DННН:I = 0x0

.field public static bН041D041DННН:I = 0x1

.field public static bНН041DННН:I = 0x3a


# instance fields
.field private b041D041DНННН:Ljava/lang/String;

.field private b041DННННН:Z

.field private b044E044Eю044E044E044E:Landroid/content/Context;

.field private b044Eю044E044E044E044E:Ljava/lang/String;

.field private bН041DНННН:J

.field private bю044E044E044E044E044E:Ljava/io/FileDescriptor;

.field private bюю044E044E044E044E:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;Landroid/content/Context;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkkkkkk/kkxkxk;->b041DННННН:Z

    const-string v0, "\u00c7\u00ad\u00df\u00df\u00d1\u00e0\u00b2\u00d5\u00d8\u00d1\u00b0\u00d1\u00df\u00cf\u00de\u00d5\u00dc\u00e0\u00db\u00de\u00c9"

    const/16 v1, 0x20

    const/16 v2, 0x8c

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lkkkkkk/kkxkkk;->b041AККК041AК(Ljava/lang/String;CCC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkkkkkk/kkxkxk;->b041D041DНННН:Ljava/lang/String;

    iput-object p2, p0, Lkkkkkk/kkxkxk;->b044E044Eю044E044E044E:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method public static b041E041E041EО041EО()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static b041EО041EО041EО()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static bО041E041EО041EО()I
    .locals 1

    const/16 v0, 0x59

    return v0
.end method

.method public static bОО041EО041EО()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public bООО041E041EО([B[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    :try_start_0
    const-string v0, "\u00e1\u00d2\u00da\u00dd"

    const/16 v1, 0x9e

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lkkkkkk/kkxkkk;->b041AККК041AК(Ljava/lang/String;CCC)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lkkkkkk/kkxkxk;->b044E044Eю044E044E044E:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v1, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lkkkkkk/kkxkxk;->b044Eю044E044E044E044E:Ljava/lang/String;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lkkkkkk/xxxkxk;->b041E041E041EОО041E(Ljava/io/InputStream;[B[B)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    const/16 v5, 0x2000

    :try_start_2
    new-array v5, v5, [B

    :goto_1
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_2
    :try_start_3
    new-instance v3, Ljava/io/IOException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget v4, Lkkkkkk/kkxkxk;->bНН041DННН:I

    sget v5, Lkkkkkk/kkxkxk;->bН041D041DННН:I

    add-int/2addr v5, v4

    mul-int/2addr v4, v5

    invoke-static {}, Lkkkkkk/kkxkxk;->b041EО041EО041EО()I

    move-result v5

    rem-int/2addr v4, v5

    packed-switch v4, :pswitch_data_2

    invoke-static {}, Lkkkkkk/kkxkxk;->bО041E041EО041EО()I

    move-result v4

    sput v4, Lkkkkkk/kkxkxk;->bНН041DННН:I

    const/16 v4, 0x54

    sput v4, Lkkkkkk/kkxkxk;->b041DН041DННН:I

    :pswitch_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    :goto_3
    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_1
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lkkkkkk/kkxkxk;->b041DННННН:Z

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    throw v0

    :cond_2
    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, p0, Lkkkkkk/kkxkxk;->bН041DНННН:J

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/4 v1, 0x0

    :try_start_9
    new-instance v3, Ljava/io/FileInputStream;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    sget v4, Lkkkkkk/kkxkxk;->bНН041DННН:I

    invoke-static {}, Lkkkkkk/kkxkxk;->b041E041E041EО041EО()I

    move-result v5

    add-int/2addr v5, v4

    mul-int/2addr v4, v5

    sget v5, Lkkkkkk/kkxkxk;->b041D041D041DННН:I

    rem-int/2addr v4, v5

    packed-switch v4, :pswitch_data_3

    const/16 v4, 0x59

    sput v4, Lkkkkkk/kkxkxk;->bНН041DННН:I

    const/16 v4, 0x35

    sput v4, Lkkkkkk/kkxkxk;->b041DН041DННН:I

    :pswitch_3
    :try_start_a
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lkkkkkk/kkxkxk;->b044Eю044E044E044E044E:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lkkkkkk/kkxkxk;->bюю044E044E044E044E:Ljava/io/FileInputStream;

    iget-object v3, p0, Lkkkkkk/kkxkxk;->bюю044E044E044E044E:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lkkkkkk/kkxkxk;->bю044E044E044E044E044E:Ljava/io/FileDescriptor;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v2, :cond_3

    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    :cond_4
    const/4 v0, 0x0

    :try_start_c
    iput-boolean v0, p0, Lkkkkkk/kkxkxk;->b041DННННН:Z

    return-void

    :catch_2
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :catch_3
    move-exception v0

    throw v0

    :catch_4
    move-exception v0

    :try_start_d
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2

    :catch_6
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_2

    :catch_7
    move-exception v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
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

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    sget v0, Lkkkkkk/kkxkxk;->bНН041DННН:I

    sget v1, Lkkkkkk/kkxkxk;->bН041D041DННН:I

    add-int/2addr v0, v1

    sget v1, Lkkkkkk/kkxkxk;->bНН041DННН:I

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kkxkxk;->b041D041D041DННН:I

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/kkxkxk;->b041DН041DННН:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Lkkkkkk/kkxkxk;->bНН041DННН:I

    const/16 v0, 0x58

    sput v0, Lkkkkkk/kkxkxk;->b041DН041DННН:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :try_start_1
    iget-object v0, p0, Lkkkkkk/kkxkxk;->bюю044E044E044E044E:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkkkkkk/kkxkxk;->bюю044E044E044E044E:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lkkkkkk/kkxkxk;->b044Eю044E044E044E044E:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    sget v0, Lkkkkkk/kkxkxk;->bНН041DННН:I

    sget v1, Lkkkkkk/kkxkxk;->bН041D041DННН:I

    add-int/2addr v0, v1

    sget v1, Lkkkkkk/kkxkxk;->bНН041DННН:I

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kkxkxk;->b041D041D041DННН:I

    rem-int/2addr v0, v1

    invoke-static {}, Lkkkkkk/kkxkxk;->bОО041EО041EО()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lkkkkkk/kkxkxk;->bО041E041EО041EО()I

    move-result v0

    sput v0, Lkkkkkk/kkxkxk;->bНН041DННН:I

    invoke-static {}, Lkkkkkk/kkxkxk;->bО041E041EО041EО()I

    move-result v0

    sput v0, Lkkkkkk/kkxkxk;->b041DН041DННН:I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_3
    move-exception v0

    throw v0
.end method

.method public createInputStream()Ljava/io/FileInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lkkkkkk/kkxkxk;->getLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {p0}, Lkkkkkk/kkxkxk;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;

    sget v1, Lkkkkkk/kkxkxk;->bНН041DННН:I

    sget v2, Lkkkkkk/kkxkxk;->bН041D041DННН:I

    add-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkxk;->bНН041DННН:I

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkxk;->b041D041D041DННН:I

    rem-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkxk;->b041DН041DННН:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v2, :cond_1

    :try_start_1
    invoke-static {}, Lkkkkkk/kkxkxk;->bО041E041EО041EО()I

    move-result v1

    sput v1, Lkkkkkk/kkxkxk;->bНН041DННН:I

    const/16 v1, 0x4d

    sput v1, Lkkkkkk/kkxkxk;->b041DН041DННН:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    sget v1, Lkkkkkk/kkxkxk;->bНН041DННН:I

    sget v2, Lkkkkkk/kkxkxk;->bН041D041DННН:I

    add-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkxk;->bНН041DННН:I

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkxk;->b041D041D041DННН:I

    rem-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkxk;->b041DН041DННН:I

    if-eq v1, v2, :cond_1

    invoke-static {}, Lkkkkkk/kkxkxk;->bО041E041EО041EО()I

    move-result v1

    sput v1, Lkkkkkk/kkxkxk;->bНН041DННН:I

    invoke-static {}, Lkkkkkk/kkxkxk;->bО041E041EО041EО()I

    move-result v1

    sput v1, Lkkkkkk/kkxkxk;->b041DН041DННН:I

    :cond_1
    :try_start_2
    invoke-direct {v0, p0}, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;-><init>(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method public createOutputStream()Ljava/io/FileOutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;

    iget-object v0, p0, Lkkkkkk/kkxkxk;->b041D041DНННН:Ljava/lang/String;

    const-string v1, "m\u0088\u007f\u008a{6\u008a\u00856\u008a~\u007f\u00896\u0088{\u0089\u0085\u008b\u0088y{6\u007f\u00896\u0084\u0085\u008a6\u0089\u008b\u0086\u0086\u0085\u0088\u008a{z"

    sget v2, Lkkkkkk/kkxkxk;->bНН041DННН:I

    sget v3, Lkkkkkk/kkxkxk;->bН041D041DННН:I

    add-int/2addr v2, v3

    sget v3, Lkkkkkk/kkxkxk;->bНН041DННН:I

    mul-int/2addr v2, v3

    sget v3, Lkkkkkk/kkxkxk;->b041D041D041DННН:I

    rem-int/2addr v2, v3

    sget v3, Lkkkkkk/kkxkxk;->b041DН041DННН:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_0

    const/16 v2, 0x12

    :try_start_1
    sput v2, Lkkkkkk/kkxkxk;->bНН041DННН:I

    invoke-static {}, Lkkkkkk/kkxkxk;->bО041E041EО041EО()I

    move-result v2

    sput v2, Lkkkkkk/kkxkxk;->b041DН041DННН:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    const/16 v2, 0x64

    const/16 v3, 0x7a

    const/4 v4, 0x2

    :try_start_2
    invoke-static {v1, v2, v3, v4}, Lkkkkkk/kkxkkk;->b041AККК041AК(Ljava/lang/String;CCC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    sget v0, Lkkkkkk/kkxkxk;->bНН041DННН:I

    sget v1, Lkkkkkk/kkxkxk;->bН041D041DННН:I

    add-int/2addr v0, v1

    sget v1, Lkkkkkk/kkxkxk;->bНН041DННН:I

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kkxkxk;->b041D041D041DННН:I

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/kkxkxk;->b041DН041DННН:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x7

    sput v0, Lkkkkkk/kkxkxk;->bНН041DННН:I

    invoke-static {}, Lkkkkkk/kkxkxk;->bО041E041EО041EО()I

    move-result v0

    sput v0, Lkkkkkk/kkxkxk;->b041DН041DННН:I

    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/IOException;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    const-string v1, "\u010a\u0125\u011c\u0127\u0118\u00d3\u0127\u0122\u00d3\u0127\u011b\u011c\u0126\u00d3\u0125\u0118\u0126\u0122\u0128\u0125\u0116\u0118\u00d3\u011c\u0126\u00d3\u0121\u0122\u0127\u00d3\u0126\u0128\u0123\u0123\u0122\u0125\u0127\u0118\u0117"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/16 v2, 0x42

    const/16 v3, 0xf5

    const/4 v4, 0x2

    :try_start_5
    invoke-static {v1, v2, v3, v4}, Lkkkkkk/kkxkkk;->b041AККК041AК(Ljava/lang/String;CCC)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v1

    :try_start_6
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method public getDeclaredLength()J
    .locals 4

    :try_start_0
    sget v0, Lkkkkkk/kkxkxk;->bНН041DННН:I

    sget v1, Lkkkkkk/kkxkxk;->bН041D041DННН:I

    add-int/2addr v0, v1

    sget v1, Lkkkkkk/kkxkxk;->bНН041DННН:I

    mul-int/2addr v0, v1

    invoke-static {}, Lkkkkkk/kkxkxk;->b041EО041EО041EО()I

    move-result v1

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/kkxkxk;->b041DН041DННН:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v0, v1, :cond_0

    :try_start_1
    invoke-static {}, Lkkkkkk/kkxkxk;->bО041E041EО041EО()I

    move-result v0

    sput v0, Lkkkkkk/kkxkxk;->bНН041DННН:I

    const/16 v0, 0x58

    sput v0, Lkkkkkk/kkxkxk;->b041DН041DННН:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :try_start_2
    invoke-super {p0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {p0}, Lkkkkkk/kkxkxk;->getLength()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v0

    sget v2, Lkkkkkk/kkxkxk;->bНН041DННН:I

    invoke-static {}, Lkkkkkk/kkxkxk;->b041E041E041EО041EО()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lkkkkkk/kkxkxk;->bНН041DННН:I

    mul-int/2addr v2, v3

    sget v3, Lkkkkkk/kkxkxk;->b041D041D041DННН:I

    rem-int/2addr v2, v3

    sget v3, Lkkkkkk/kkxkxk;->b041DН041DННН:I

    if-eq v2, v3, :cond_1

    const/16 v2, 0x51

    sput v2, Lkkkkkk/kkxkxk;->bНН041DННН:I

    invoke-static {}, Lkkkkkk/kkxkxk;->bО041E041EО041EО()I

    move-result v2

    sput v2, Lkkkkkk/kkxkxk;->b041DН041DННН:I

    :cond_1
    return-wide v0

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

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception v0

    throw v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x5

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x52

    sget v1, Lkkkkkk/kkxkxk;->bНН041DННН:I

    sget v2, Lkkkkkk/kkxkxk;->bН041D041DННН:I

    add-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkxk;->bНН041DННН:I

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkxk;->b041D041D041DННН:I

    rem-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkxk;->b041DН041DННН:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0xc

    sput v1, Lkkkkkk/kkxkxk;->bНН041DННН:I

    const/16 v1, 0x25

    sput v1, Lkkkkkk/kkxkxk;->b041DН041DННН:I

    :cond_0
    sput v0, Lkkkkkk/kkxkxk;->bНН041DННН:I

    :try_start_1
    iget-object v0, p0, Lkkkkkk/kkxkxk;->bю044E044E044E044E044E:Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    :pswitch_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    const/4 v1, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    throw v0

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
.end method

.method public getLength()J
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lkkkkkk/kkxkxk;->b041DННННН:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    :goto_0
    :pswitch_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lkkkkkk/kkxkxk;->bН041DНННН:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v2, Lkkkkkk/kkxkxk;->bНН041DННН:I

    sget v3, Lkkkkkk/kkxkxk;->bН041D041DННН:I

    add-int/2addr v3, v2

    mul-int/2addr v2, v3

    sget v3, Lkkkkkk/kkxkxk;->b041D041D041DННН:I

    rem-int/2addr v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lkkkkkk/kkxkxk;->bО041E041EО041EО()I

    move-result v2

    sput v2, Lkkkkkk/kkxkxk;->bНН041DННН:I

    invoke-static {}, Lkkkkkk/kkxkxk;->bО041E041EО041EО()I

    move-result v2

    sput v2, Lkkkkkk/kkxkxk;->b041DН041DННН:I

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lkkkkkk/kkxkxk;->b041DННННН:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :pswitch_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lkkkkkk/kkxkxk;->b044Eю044E044E044E044E:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lkkkkkk/kkxkxk;->bНН041DННН:I

    sget v3, Lkkkkkk/kkxkxk;->bН041D041DННН:I

    add-int/2addr v2, v3

    sget v3, Lkkkkkk/kkxkxk;->bНН041DННН:I

    mul-int/2addr v2, v3

    sget v3, Lkkkkkk/kkxkxk;->b041D041D041DННН:I

    rem-int/2addr v2, v3

    sget v3, Lkkkkkk/kkxkxk;->b041DН041DННН:I

    if-eq v2, v3, :cond_1

    const/16 v2, 0x45

    sput v2, Lkkkkkk/kkxkxk;->bНН041DННН:I

    invoke-static {}, Lkkkkkk/kkxkxk;->bО041E041EО041EО()I

    move-result v2

    sput v2, Lkkkkkk/kkxkxk;->b041DН041DННН:I

    :cond_1
    const/high16 v2, 0x10000000

    :try_start_1
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :cond_2
    :goto_0
    sget v1, Lkkkkkk/kkxkxk;->bНН041DННН:I

    invoke-static {}, Lkkkkkk/kkxkxk;->b041E041E041EО041EО()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkxk;->bНН041DННН:I

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkxk;->b041D041D041DННН:I

    rem-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkxk;->b041DН041DННН:I

    if-eq v1, v2, :cond_3

    const/16 v1, 0x35

    sput v1, Lkkkkkk/kkxkxk;->bНН041DННН:I

    invoke-static {}, Lkkkkkk/kkxkxk;->bО041E041EО041EО()I

    move-result v1

    sput v1, Lkkkkkk/kkxkxk;->b041DН041DННН:I

    :cond_3
    :pswitch_1
    packed-switch v4, :pswitch_data_0

    :goto_1
    packed-switch v4, :pswitch_data_1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getStartOffset()J
    .locals 2

    const/4 v0, 0x0

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lkkkkkk/kkxkxk;->b041DННННН:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    :goto_1
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lkkkkkk/kkxkxk;->b041D041DНННН:Ljava/lang/String;

    const-string v1, "\u016a\u0185\u017c\u0187\u0178\u0133\u0183\u0174\u0185\u0176\u0178\u017f\u0133\u0187\u0182\u0133\u0187\u017b\u017c\u0186\u0133\u0185\u0178\u0186\u0182\u0188\u0185\u0176\u0178\u0133\u017c\u0186\u0133\u0181\u0182\u0187\u0133\u0186\u0188\u0183\u0183\u0182\u0185\u0187\u0178\u0177"

    const/16 v2, 0x62

    const/16 v3, 0xb1

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lkkkkkk/kkxkkk;->b041AККК041AК(Ljava/lang/String;CCC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lkkkkkk/kkxkxk;->bНН041DННН:I

    sget v1, Lkkkkkk/kkxkxk;->bН041D041DННН:I

    add-int/2addr v1, v0

    :pswitch_0
    packed-switch v6, :pswitch_data_0

    :goto_0
    packed-switch v5, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    mul-int/2addr v0, v1

    invoke-static {}, Lkkkkkk/kkxkxk;->b041EО041EО041EО()I

    move-result v1

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/kkxkxk;->bНН041DННН:I

    sget v2, Lkkkkkk/kkxkxk;->bН041D041DННН:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkxk;->b041D041D041DННН:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_2

    const/16 v1, 0x30

    sput v1, Lkkkkkk/kkxkxk;->bНН041DННН:I

    invoke-static {}, Lkkkkkk/kkxkxk;->bО041E041EО041EО()I

    move-result v1

    sput v1, Lkkkkkk/kkxkxk;->b041DН041DННН:I

    :pswitch_2
    packed-switch v0, :pswitch_data_3

    const/16 v0, 0x8

    sput v0, Lkkkkkk/kkxkxk;->bНН041DННН:I

    invoke-static {}, Lkkkkkk/kkxkxk;->bО041E041EО041EО()I

    move-result v0

    sput v0, Lkkkkkk/kkxkxk;->b041DН041DННН:I

    :pswitch_3
    packed-switch v6, :pswitch_data_4

    :goto_1
    packed-switch v5, :pswitch_data_5

    goto :goto_1

    :pswitch_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u028b\u02a6\u029d\u02a8\u0299\u0254\u02a4\u0295\u02a6\u0297\u0299\u02a0\u0254\u02a8\u02a3\u0254\u02a8\u029c\u029d\u02a7\u0254\u02a6\u0299\u02a7\u02a3\u02a9\u02a6\u0297\u0299\u0254\u029d\u02a7\u0254\u02a2\u02a3\u02a8\u0254\u02a7\u02a9\u02a4\u02a4\u02a3\u02a6\u02a8\u0299\u0298"

    const/16 v2, 0xbc

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
