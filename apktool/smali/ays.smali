.class public Lays;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mClock:Lbhk;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public mIv:Ljava/lang/String;

.field public mKey:Ljava/lang/String;

.field public mThumbnailIv:Ljava/lang/String;

.field public mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lays;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lays;)V

    .line 30
    iput-object p1, p0, Lays;->mKey:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lays;->mIv:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lays;->mThumbnailIv:Ljava/lang/String;

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lays;->mTimestamp:J

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lays;)V

    .line 42
    iput-object p1, p0, Lays;->mKey:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lays;->mIv:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lays;->mThumbnailIv:Ljava/lang/String;

    .line 45
    iput-wide p4, p0, Lays;->mTimestamp:J

    .line 46
    return-void
.end method
