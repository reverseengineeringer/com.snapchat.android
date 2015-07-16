.class public final Lajw;
.super Lajy;
.source "SourceFile"


# static fields
.field private static sInstance:Lajw;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 10
    const-string v0, "my_story_ads79sdf"

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0178

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lajy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public static declared-synchronized a()Lajw;
    .locals 2

    .prologue
    .line 14
    const-class v1, Lajw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lajw;->sInstance:Lajw;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lajw;

    invoke-direct {v0}, Lajw;-><init>()V

    sput-object v0, Lajw;->sInstance:Lajw;

    .line 17
    :cond_0
    sget-object v0, Lajw;->sInstance:Lajw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method
