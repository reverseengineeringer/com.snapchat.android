.class public Lcom/snapchat/videotranscoder/utils/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BYTES_IN_MB:D = 1048576.0

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static final sInstance:Lcom/snapchat/videotranscoder/utils/Utils;


# instance fields
.field private final mMimeTools:Lcom/snapchat/videotranscoder/utils/MimeTools;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/snapchat/videotranscoder/utils/Utils;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/Utils;-><init>()V

    sput-object v0, Lcom/snapchat/videotranscoder/utils/Utils;->sInstance:Lcom/snapchat/videotranscoder/utils/Utils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getInstance()Lcom/snapchat/videotranscoder/utils/MimeTools;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/utils/Utils;->mMimeTools:Lcom/snapchat/videotranscoder/utils/MimeTools;

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/snapchat/videotranscoder/utils/Utils;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/snapchat/videotranscoder/utils/Utils;->sInstance:Lcom/snapchat/videotranscoder/utils/Utils;

    return-object v0
.end method


# virtual methods
.method public copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p1    # Ljava/io/File;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 69
    .line 73
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 74
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 76
    const-wide/16 v2, 0x0

    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 78
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 82
    :cond_0
    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 86
    :cond_1
    return-void

    .line 78
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v2, :cond_2

    .line 79
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 82
    :cond_2
    if-eqz v1, :cond_3

    .line 83
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_3
    throw v0

    .line 78
    :catchall_1
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_0

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0
.end method

.method public createFileSizeLogMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 56
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/Utils;->mMimeTools:Lcom/snapchat/videotranscoder/utils/MimeTools;

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public haveLooper(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "Have own looper"

    invoke-static {p1, v0}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 38
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "Have Main looper"

    invoke-static {p1, v0}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    const-string v0, "Have NO looper"

    invoke-static {p1, v0}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isOnMainThread()Z
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveFile(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/videotranscoder/utils/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 99
    return-void
.end method

.method public printShaderSource(I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderSource(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 105
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 106
    const-string v3, "   %d %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    aget-object v6, v2, v0

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method
