.class public final Lps$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final DELAY:J = 0x190L

.field private static final MESSAGE_WHAT_SEARCH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "StorySearchScheduler"


# instance fields
.field private final mSearchTaskCallback:Lps$b;


# direct methods
.method public constructor <init>(Lps$b;)V
    .locals 0
    .param p1    # Lps$b;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 71
    iput-object p1, p0, Lps$a;->mSearchTaskCallback:Lps$b;

    .line 72
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0, v1}, Lps$a;->removeMessages(I)V

    .line 86
    invoke-virtual {p0, v1, p1}, Lps$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 87
    const-wide/16 v2, 0x190

    invoke-virtual {p0, v0, v2, v3}, Lps$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 94
    new-instance v1, Lps;

    iget-object v2, p0, Lps$a;->mSearchTaskCallback:Lps$b;

    invoke-direct {v1, v0, v2}, Lps;-><init>(Ljava/lang/String;Lps$b;)V

    sget-object v0, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lps;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    :cond_0
    return-void
.end method
