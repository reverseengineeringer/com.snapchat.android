.class public final Lbaa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbaa$a;
    }
.end annotation


# static fields
.field public static final CURRENT_TIME_KEY:Ljava/lang/String; = "CURRENT_TIME"

.field private static final INSTANCE:Lbaa;

.field public static final LATENCY_CHECKER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UILatencyChecker"


# instance fields
.field public mDeferPause:Z

.field private mRunning:Z

.field private mStartPage:Ljava/lang/String;

.field protected mUILatencyCheckerThread:Ljava/lang/Thread;

.field private final mUIThreadLatencyHandler:Lbab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lbaa;

    invoke-direct {v0}, Lbaa;-><init>()V

    sput-object v0, Lbaa;->INSTANCE:Lbaa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbaa;->mRunning:Z

    .line 27
    new-instance v0, Lbab;

    invoke-direct {v0}, Lbab;-><init>()V

    iput-object v0, p0, Lbaa;->mUIThreadLatencyHandler:Lbab;

    .line 75
    return-void
.end method

.method public static a()Lbaa;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lbaa;->INSTANCE:Lbaa;

    return-object v0
.end method

.method static synthetic a(Lbaa;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lbaa;->mRunning:Z

    return v0
.end method

.method static synthetic b(Lbaa;)Lbab;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lbaa;->mUIThreadLatencyHandler:Lbab;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lbaa;->mDeferPause:Z

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbaa;->mRunning:Z

    .line 52
    iput-object p1, p0, Lbaa;->mStartPage:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lbaa;->mUIThreadLatencyHandler:Lbab;

    invoke-virtual {v0}, Lbab;->a()V

    .line 54
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbaa$a;

    invoke-direct {v1, p0}, Lbaa$a;-><init>(Lbaa;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lbaa;->mUILatencyCheckerThread:Ljava/lang/Thread;

    .line 55
    iget-object v0, p0, Lbaa;->mUILatencyCheckerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 57
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lbaa;->mDeferPause:Z

    .line 42
    iput-boolean v0, p0, Lbaa;->mRunning:Z

    .line 43
    iget-object v0, p0, Lbaa;->mUIThreadLatencyHandler:Lbab;

    iget-object v1, p0, Lbaa;->mStartPage:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lbab;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    return-void
.end method
