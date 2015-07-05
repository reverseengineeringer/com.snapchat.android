.class public final Lazi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final BETA_SAMPLING_RATE:D = 0.5

.field private static final INSTANCE:Lazi;

.field protected static final PRODUCTION_SAMPLING_RATE:D = 0.009999999776482582


# instance fields
.field private mInitialized:Z

.field private final mReleaseManager:Lcom/snapchat/android/util/debug/ReleaseManager;

.field private mShouldReportCrashes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lazi;

    invoke-direct {v0}, Lazi;-><init>()V

    sput-object v0, Lazi;->INSTANCE:Lazi;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lazi;-><init>(Lcom/snapchat/android/util/debug/ReleaseManager;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/util/debug/ReleaseManager;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lazi;->mReleaseManager:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 37
    return-void
.end method

.method public static a()Lazi;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lazi;->INSTANCE:Lazi;

    return-object v0
.end method

.method private static a(D)Z
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lajx;->bw()Ljava/util/UUID;

    move-result-object v0

    .line 69
    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lazi;->a(DLjava/lang/String;)Z

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lazi;->a(DLjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(DLjava/lang/String;)Z
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 78
    int-to-double v0, v0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 79
    cmpg-double v0, v0, p0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized b()Z
    .locals 2

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lazi;->mInitialized:Z

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lazi;->mShouldReportCrashes:Z

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lazi;->mInitialized:Z

    .line 43
    :cond_0
    iget-boolean v0, p0, Lazi;->mShouldReportCrashes:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 41
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lazi;->mShouldReportCrashes:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 41
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Lazi;->a(D)Z

    move-result v0

    iput-boolean v0, p0, Lazi;->mShouldReportCrashes:Z

    goto :goto_0

    :cond_3
    const-wide v0, 0x3f847ae140000000L    # 0.009999999776482582

    invoke-static {v0, v1}, Lazi;->a(D)Z

    move-result v0

    iput-boolean v0, p0, Lazi;->mShouldReportCrashes:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
