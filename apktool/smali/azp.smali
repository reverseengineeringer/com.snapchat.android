.class public final Lazp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GRACEFUL_EXCEPTION_WARNING:Ljava/lang/String; = "See logs for error output: "

.field private static final TAG:Ljava/lang/String; = "GracefulExceptionHandler"


# instance fields
.field private final mBus:Lcom/squareup/otto/Bus;

.field private final mCrashSampler:Lazi;

.field private final mReleaseManager:Lcom/snapchat/android/util/debug/ReleaseManager;


# direct methods
.method constructor <init>(Lazi;Lcom/snapchat/android/util/debug/ReleaseManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lazp;-><init>(Lazi;Lcom/snapchat/android/util/debug/ReleaseManager;Lcom/squareup/otto/Bus;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Lazi;Lcom/snapchat/android/util/debug/ReleaseManager;Lcom/squareup/otto/Bus;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lazp;->mCrashSampler:Lazi;

    .line 35
    iput-object p2, p0, Lazp;->mReleaseManager:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 36
    iput-object p3, p0, Lazp;->mBus:Lcom/squareup/otto/Bus;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 5
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 40
    const-string v0, "GracefulExceptionHandler"

    invoke-static {v0, p1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lazp;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "See logs for error output: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lazp;->mCrashSampler:Lazi;

    invoke-virtual {v0}, Lazi;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-static {p1}, Laz;->a(Ljava/lang/Throwable;)V

    .line 47
    :cond_1
    return-void
.end method
