.class public final Lwu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lbwr;
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:I

.field private final c:Laxc;

.field private d:Lcom/snapchat/videotranscoder/task/Task$Status;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Laxc;->a()Laxc;

    move-result-object v0

    invoke-direct {p0, v0}, Lwu;-><init>(Laxc;)V

    .line 25
    return-void
.end method

.method private constructor <init>(Laxc;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lwu;->a:Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->INVALID:Lcom/snapchat/videotranscoder/task/Task$Status;

    iput-object v0, p0, Lwu;->d:Lcom/snapchat/videotranscoder/task/Task$Status;

    .line 20
    const/4 v0, 0x5

    iput v0, p0, Lwu;->b:I

    .line 29
    iput-object p1, p0, Lwu;->c:Laxc;

    .line 30
    return-void
.end method

.method private f()Z
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lwu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lwu;->d:Lcom/snapchat/videotranscoder/task/Task$Status;

    sget-object v2, Lcom/snapchat/videotranscoder/task/Task$Status;->RUNNING:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lwu;->d:Lcom/snapchat/videotranscoder/task/Task$Status;

    sget-object v2, Lcom/snapchat/videotranscoder/task/Task$Status;->CONFIGURED:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 36
    iget-object v1, p0, Lwu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    iget v0, p0, Lwu;->b:I

    rsub-int/lit8 v0, v0, 0x5

    monitor-exit v1

    return v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 2

    .prologue
    .line 69
    iget-object v1, p0, Lwu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    iput-object p1, p0, Lwu;->d:Lcom/snapchat/videotranscoder/task/Task$Status;

    .line 71
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 94
    iget-object v3, p0, Lwu;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 95
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v2, p0, Lwu;->d:Lcom/snapchat/videotranscoder/task/Task$Status;

    sget-object v4, Lcom/snapchat/videotranscoder/task/Task$Status;->INVALID:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-ne v2, v4, :cond_2

    move v2, v1

    .line 96
    :goto_0
    invoke-direct {p0}, Lwu;->f()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    monitor-exit v3

    return v0

    :cond_2
    move v2, v0

    .line 95
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    iget-object v1, p0, Lwu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lwu;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwu;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 47
    :cond_0
    iget-object v0, p0, Lwu;->c:Laxc;

    invoke-virtual {v0}, Laxc;->b()Ljava/io/File;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwu;->e:Ljava/lang/String;

    .line 52
    :cond_1
    iget-object v0, p0, Lwu;->e:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Lcom/snapchat/videotranscoder/task/Task$Status;
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Lwu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lwu;->d:Lcom/snapchat/videotranscoder/task/Task$Status;

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lwu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    iget v0, p0, Lwu;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()Z
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lwu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lwu;->d:Lcom/snapchat/videotranscoder/task/Task$Status;

    sget-object v2, Lcom/snapchat/videotranscoder/task/Task$Status;->CONFIG_ERROR:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lwu;->d:Lcom/snapchat/videotranscoder/task/Task$Status;

    sget-object v2, Lcom/snapchat/videotranscoder/task/Task$Status;->FAILED:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
