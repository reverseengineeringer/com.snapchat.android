.class public final Lbaj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADD_LIVE_LOGS_FILE_PREFIX:Ljava/lang/String; = "snapchat_shake2report_addlive_"

.field public static final BITMAP_POOL_MONITOR_LOGS_FILE_PREFIX:Ljava/lang/String; = "snapchat_shake2report_bitmap_pool_monitor_"

.field public static final CHAT_LOGS_FILE_PREFIX:Ljava/lang/String; = "snapchat_shake2report_chat_"

.field private static final DEFAULT_LOG:Ljava/lang/String; = "DEFAULT"

.field public static final DEFAULT_LOGS_FILE_PREFIX:Ljava/lang/String; = "snapchat_shake2report_default_"

.field public static final DOWNLOAD_PROGRESS_LOGS_FILE_PREFIX:Ljava/lang/String; = "snapchat_shake2report_download_progress_"

.field public static final LOCATION_MANAGER_LOGS_FILE_PREFIX:Ljava/lang/String; = "snapchat_shake2report_location_manager_"

.field public static final LOG_FILE_PREFIXES:[Ljava/lang/String;

.field public static final MAX_NUMBER_OF_LOG_FILES_TO_KEEP:I = 0xa

.field private static final TAG:Ljava/lang/String; = "DebugCapturer"

.field private static final mLogs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbaq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "snapchat_shake2report_addlive_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "snapchat_shake2report_chat_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "snapchat_shake2report_location_manager_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "snapchat_shake2report_bitmap_pool_monitor_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "snapchat_shake2report_download_progress_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "snapchat_shake2report_default_"

    aput-object v2, v0, v1

    sput-object v0, Lbaj;->LOG_FILE_PREFIXES:[Ljava/lang/String;

    .line 59
    new-instance v0, Lbaj$1;

    invoke-direct {v0}, Lbaj$1;-><init>()V

    sput-object v0, Lbaj;->mLogs:Ljava/util/Map;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    sget-object v0, Lbaj;->mLogs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbaq;

    .line 123
    invoke-virtual {v0}, Lbaq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n\n ------ >>>> New Entry <<<< -------"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string v0, "DEFAULT"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "["

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "EEE MMM dd HH:mm:ss.SSS zzz yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "] "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lbaj;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    .line 83
    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    sget-object v0, Lbaj;->mLogs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lbaj;->mLogs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbaq;

    .line 89
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbaq;->a(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/snapchat/android/SnapchatActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laz;->a(Ljava/lang/String;)V

    .line 94
    :cond_2
    return-void

    .line 88
    :cond_3
    sget-object v0, Lbaj;->mLogs:Ljava/util/Map;

    const-string v2, "DEFAULT"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbaq;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Z)[Ljava/io/File;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 104
    new-instance v1, Lbaq;

    const-string v2, "snapchat_shake2report_addlive_"

    invoke-direct {v1, v2}, Lbaq;-><init>(Ljava/lang/String;)V

    .line 107
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "logcat"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "-d"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "-v"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "threadtime"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "AddLive_SDK:V"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "AddLive_SDK:V"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "*:S"

    aput-object v4, v2, v3

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lbaq;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 108
    :cond_0
    sget-object v2, Lbaj;->mLogs:Ljava/util/Map;

    const-string v3, "snapchat_shake2report_addlive_"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Lbaj;->mLogs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v3, v1, [Ljava/io/File;

    .line 112
    sget-object v1, Lbaj;->mLogs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbaq;

    .line 113
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, p0, p1}, Lbaq;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    .line 114
    goto :goto_1

    .line 116
    :cond_1
    return-object v3
.end method

.method public static b()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 130
    sget-object v0, Lbaj;->mLogs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    .line 132
    sget-object v1, Lbaj;->mLogs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbaq;

    .line 133
    add-int/lit8 v2, v1, 0x1

    iget-object v0, v0, Lbaq;->mOutputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    .line 134
    goto :goto_0

    .line 135
    :cond_0
    return-object v3
.end method
