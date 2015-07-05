.class public final Ltj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mConnectionReleased:Z

.field private mDuration:J

.field private mMethod:Ljava/lang/String;

.field private mNeedToSaveMetrics:Z

.field private mPath:Ljava/lang/String;

.field private mReceivedBytes:J

.field private mRequestTime:J

.field private mResponseStatusReady:Z

.field private mSentBytes:J

.field private mStatusCode:I

.field private mStatusLine:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v0, p0, Ltj;->mConnectionReleased:Z

    .line 11
    iput-boolean v0, p0, Ltj;->mResponseStatusReady:Z

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltj;->mNeedToSaveMetrics:Z

    return-void
.end method

.method private a()V
    .locals 14

    .prologue
    .line 52
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    iget-wide v2, p0, Ltj;->mRequestTime:J

    iget-object v4, p0, Ltj;->mMethod:Ljava/lang/String;

    iget-object v5, p0, Ltj;->mPath:Ljava/lang/String;

    iget-wide v6, p0, Ltj;->mSentBytes:J

    iget-wide v8, p0, Ltj;->mReceivedBytes:J

    iget-wide v10, p0, Ltj;->mDuration:J

    iget-object v12, p0, Ltj;->mStatusLine:Ljava/lang/String;

    iget v13, p0, Ltj;->mStatusCode:I

    invoke-static/range {v1 .. v13}, Laaq;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJJLjava/lang/String;I)V

    .line 54
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(JJ)V
    .locals 1

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Ltj;->mReceivedBytes:J

    .line 26
    iput-wide p3, p0, Ltj;->mSentBytes:J

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltj;->mConnectionReleased:Z

    .line 29
    iget-boolean v0, p0, Ltj;->mResponseStatusReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltj;->mNeedToSaveMetrics:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-direct {p0}, Ltj;->a()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltj;->mNeedToSaveMetrics:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_0
    monitor-exit p0

    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 1

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ltj;->mMethod:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Ltj;->mPath:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Ltj;->mStatusLine:Ljava/lang/String;

    .line 40
    iput p4, p0, Ltj;->mStatusCode:I

    .line 41
    iput-wide p5, p0, Ltj;->mRequestTime:J

    .line 42
    iput-wide p7, p0, Ltj;->mDuration:J

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltj;->mResponseStatusReady:Z

    .line 45
    iget-boolean v0, p0, Ltj;->mConnectionReleased:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltj;->mNeedToSaveMetrics:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0}, Ltj;->a()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltj;->mNeedToSaveMetrics:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
