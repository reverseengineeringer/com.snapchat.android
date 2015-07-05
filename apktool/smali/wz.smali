.class public final Lwz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lwz;


# instance fields
.field public final a:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

.field private final c:Lcom/snapchat/videotranscoder/task/TaskExecutor;

.field private final d:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lajm;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Lcom/snapchat/videotranscoder/task/TaskExecutor;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/task/TaskExecutor;-><init>()V

    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    move-result-object v1

    new-instance v2, Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/snapchat/videotranscoder/utils/TranscodingResources;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, v2}, Lwz;-><init>(Lcom/snapchat/videotranscoder/task/TaskExecutor;Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;Lcom/snapchat/videotranscoder/utils/TranscodingResources;)V

    .line 55
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/videotranscoder/task/TaskExecutor;Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;Lcom/snapchat/videotranscoder/utils/TranscodingResources;)V
    .locals 1
    .param p1    # Lcom/snapchat/videotranscoder/task/TaskExecutor;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lwz;->e:Ljava/util/Map;

    .line 61
    iput-object p1, p0, Lwz;->c:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    .line 62
    iput-object p2, p0, Lwz;->d:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    .line 63
    iput-object p3, p0, Lwz;->a:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    .line 64
    return-void
.end method

.method public static a()Lwz;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lwz;->b:Lwz;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lwz;

    invoke-direct {v0}, Lwz;-><init>()V

    sput-object v0, Lwz;->b:Lwz;

    .line 49
    :cond_0
    sget-object v0, Lwz;->b:Lwz;

    return-object v0
.end method

.method private c(Lajm;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 147
    iget-object v1, p1, Lajm;->mTranscodingState:Lwu;

    invoke-virtual {v1}, Lwu;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const-string v1, "VideoTranscoder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Transcoding failed with: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lajm;->mTranscodingState:Lwu;

    invoke-virtual {v3}, Lwu;->c()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " trying again"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p0, p1}, Lwz;->a(Lajm;)V

    .line 150
    const/4 v0, 0x1

    .line 152
    :cond_0
    return v0
.end method

.method private d(Lajm;)V
    .locals 4
    .param p1    # Lajm;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 183
    iget-object v0, p1, Lajm;->mTranscodingState:Lwu;

    invoke-virtual {v0}, Lwu;->c()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->RUNNING:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lwz;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 185
    monitor-enter v1

    .line 186
    const-wide/32 v2, 0xea60

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 187
    monitor-exit v1

    .line 189
    :cond_0
    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lajm;)V
    .locals 7
    .param p1    # Lajm;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v3, Lwv;

    invoke-direct {v3, p1}, Lwv;-><init>(Lajm;)V

    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v4

    invoke-virtual {p1}, Lajm;->o()Z

    move-result v5

    sget-object v1, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->ENABLED_FOR_LOW_QUALITY:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-ne v4, v1, :cond_3

    move v1, v0

    :goto_0
    if-nez v5, :cond_0

    if-eqz v1, :cond_4

    :cond_0
    :goto_1
    if-eqz v0, :cond_7

    iget-object v0, p0, Lwz;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lwz;->e:Ljava/util/Map;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->INVALID:Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-virtual {p1, v0}, Lajm;->a(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->ENABLED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-eq v4, v0, :cond_2

    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->ENABLED_FOR_LOW_QUALITY:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-ne v4, v0, :cond_7

    :cond_2
    const/4 v0, 0x5

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_6

    iget-object v0, p1, Lajm;->mTranscodingState:Lwu;

    invoke-virtual {v0}, Lwu;->c()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    sget-object v4, Lcom/snapchat/videotranscoder/task/Task$Status;->INVALID:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-ne v0, v4, :cond_6

    :try_start_0
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    if-nez v0, :cond_5

    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Null video uri!"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v2}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->c(Z)V

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/SetupException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v4, "VideoTranscoder"

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/SetupException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    :try_start_1
    invoke-static {v4}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->c(Z)V

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lwv;->a(Ljava/lang/String;)Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    move-result-object v0

    new-instance v4, Lww;

    new-instance v5, Loh;

    invoke-direct {v5}, Loh;-><init>()V

    invoke-direct {v4, p0, p1, v0, v5}, Lww;-><init>(Lwz;Lajm;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;Loh;)V

    new-instance v5, Lcom/snapchat/videotranscoder/task/TranscodingTask;

    iget-object v6, p0, Lwz;->a:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    invoke-direct {v5, v6, v0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v5, v4, v0}, Lwz;->a(Lcom/snapchat/videotranscoder/task/TranscodingTask;Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->RUNNING:Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-virtual {p1, v0}, Lajm;->a(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    :try_end_1
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_2

    :cond_6
    if-gez v1, :cond_7

    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->CONFIG_ERROR:Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-virtual {p0, p1, v0}, Lwz;->a(Lajm;Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 68
    :cond_7
    return-void
.end method

.method public final a(Lajm;Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 102
    iget-object v1, p1, Lajm;->mTranscodingState:Lwu;

    iget-object v2, v1, Lwu;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, v1, Lwu;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lwu;->b:I

    invoke-virtual {v1, p2}, Lwu;->a(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-static {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->c(Z)V

    .line 105
    iget-object v1, p1, Lajm;->mTranscodingState:Lwu;

    invoke-virtual {v1}, Lwu;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-direct {p0, p1}, Lwz;->c(Lajm;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 109
    :cond_0
    invoke-virtual {p1, p2}, Lajm;->b(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 113
    :cond_1
    iget-object v1, p0, Lwz;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    monitor-enter v1

    .line 115
    :try_start_2
    iget-object v2, p0, Lwz;->d:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    sget-object v3, Lcom/snapchat/videotranscoder/task/Task$Status;->FINISHED:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-ne p2, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v2, v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b(Z)V

    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 117
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final a(Lcom/snapchat/videotranscoder/task/TranscodingTask;Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 1
    .param p1    # Lcom/snapchat/videotranscoder/task/TranscodingTask;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 200
    iget-object v0, p0, Lwz;->c:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/snapchat/videotranscoder/task/TaskExecutor;->execute(Lcom/snapchat/videotranscoder/task/Task;Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    .line 201
    return-void
.end method

.method public final b(Lajm;)Z
    .locals 3
    .param p1    # Lajm;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1}, Lwz;->d(Lajm;)V

    .line 169
    iget-object v1, p1, Lajm;->mTranscodingState:Lwu;

    invoke-virtual {v1}, Lwu;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    invoke-direct {p0, p1}, Lwz;->c(Lajm;)Z

    move-result v1

    .line 171
    if-nez v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    iget-object v1, p1, Lajm;->mTranscodingState:Lwu;

    invoke-virtual {v1}, Lwu;->c()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v1

    invoke-virtual {p1, v1}, Lajm;->b(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 177
    :cond_2
    invoke-direct {p0, p1}, Lwz;->d(Lajm;)V

    .line 179
    iget-object v1, p1, Lajm;->mTranscodingState:Lwu;

    invoke-virtual {v1}, Lwu;->c()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v1

    sget-object v2, Lcom/snapchat/videotranscoder/task/Task$Status;->FINISHED:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
