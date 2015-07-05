.class public Lcom/snapchat/android/service/SnapchatService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/service/SnapchatService$a;,
        Lcom/snapchat/android/service/SnapchatService$b;,
        Lcom/snapchat/android/service/SnapchatService$c;
    }
.end annotation


# static fields
.field private static g:Landroid/os/Handler;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/ThreadFactory;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private e:Laol;

.field private final f:Lazo;

.field private h:J

.field private final i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lazo;

    invoke-direct {v0}, Lazo;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/service/SnapchatService;-><init>(Lazo;)V

    .line 121
    return-void
.end method

.method protected constructor <init>(Lazo;)V
    .locals 2
    .param p1    # Lazo;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 108
    new-instance v0, Lcom/snapchat/android/service/SnapchatService$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snapchat/android/service/SnapchatService$c;-><init>(B)V

    iput-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->b:Ljava/util/concurrent/ThreadFactory;

    .line 396
    new-instance v0, Lcom/snapchat/android/service/SnapchatService$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/service/SnapchatService$1;-><init>(Lcom/snapchat/android/service/SnapchatService;)V

    iput-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->i:Ljava/lang/Runnable;

    .line 125
    iput-object p1, p0, Lcom/snapchat/android/service/SnapchatService;->f:Lazo;

    .line 126
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/service/SnapchatService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/snapchat/android/service/SnapchatService;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Intent;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 308
    const-string v0, "SnapchatService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "finalizeRequest "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    invoke-static {p1}, Laol;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-static {p1}, Laol;->b(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 313
    const-string v1, "SnapchatService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "finalizeRequest - requestId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService;->e:Laol;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v1, Laol;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService;->e:Laol;

    if-eqz p1, :cond_0

    if-eqz p1, :cond_2

    const-string v0, "from_pool"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, v1, Laol;->b:Laoj;

    invoke-virtual {v0, p1}, Laoj;->a(Landroid/content/Intent;)V

    :cond_0
    move v1, v2

    .line 323
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    const-string v0, "SnapchatService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removed one future - mFutureList.size()="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 327
    add-int/lit8 v1, v1, -0x1

    .line 323
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 319
    goto :goto_0

    .line 331
    :cond_3
    const-string v0, "SnapchatService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "finalizeRequest mStopRunnable futureList.size()=="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " hasPendingIntents="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/snapchat/android/service/SnapchatService;->e:Laol;

    invoke-virtual {v3}, Laol;->g()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->e:Laol;

    invoke-virtual {v0}, Laol;->g()Z

    move-result v0

    if-nez v0, :cond_4

    .line 335
    const-string v0, "SnapchatService"

    const-string v1, "Will stop service in 5 seconds"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    sget-object v0, Lcom/snapchat/android/service/SnapchatService;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 337
    sget-object v0, Lcom/snapchat/android/service/SnapchatService;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 339
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/service/SnapchatService;Lamk;)V
    .locals 3

    .prologue
    .line 58
    const-string v0, "SnapchatService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finalizeRequest "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lamk;->a()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/service/SnapchatService;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/service/SnapchatService;)Lazo;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->f:Lazo;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/service/SnapchatService;)Laol;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->e:Laol;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/service/SnapchatService;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/service/SnapchatService;)J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/snapchat/android/service/SnapchatService;->h:J

    return-wide v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 132
    invoke-virtual {p0}, Lcom/snapchat/android/service/SnapchatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->a:Landroid/content/Context;

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/service/SnapchatService;->h:J

    .line 135
    sget-object v0, Lcom/snapchat/android/service/SnapchatService;->g:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/snapchat/android/service/SnapchatService;->g:Landroid/os/Handler;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->c:Ljava/util/concurrent/ExecutorService;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    .line 141
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->e:Laol;

    .line 142
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 289
    const-string v0, "SnapchatService"

    const-string v1, "onDestroy()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 291
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1    # Landroid/content/Intent;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 149
    const-string v0, "SnapchatService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartCommand "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    if-eqz p1, :cond_0

    .line 151
    const-string v0, "SnapchatService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartCommand with op code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "op_code"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :cond_0
    sget-object v0, Lcom/snapchat/android/service/SnapchatService;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    if-eqz p1, :cond_1

    const-string v0, "op_code"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :pswitch_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    if-nez v0, :cond_2

    .line 158
    const-string v0, "SnapchatService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create a service operation from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/snapchat/android/service/SnapchatService;->a(Landroid/content/Intent;)V

    .line 166
    :goto_1
    return v5

    .line 156
    :pswitch_1
    new-instance v0, Lamj;

    invoke-direct {v0, p1}, Lamj;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lame;

    invoke-direct {v0, p1}, Lame;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lamf;

    invoke-direct {v0, p1}, Lamf;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Laml;

    invoke-direct {v0, p1}, Laml;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lamp;

    invoke-direct {v0, p1}, Lamp;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Ladk;

    invoke-direct {v0, p1}, Ladk;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lamn;

    invoke-direct {v0, p1}, Lamn;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lamm;

    invoke-direct {v0, p1}, Lamm;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lanc;

    invoke-direct {v0, p1}, Lanc;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lamq;

    invoke-direct {v0, p1}, Lamq;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lamh;

    invoke-direct {v0, p1}, Lamh;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lams;

    invoke-direct {v0, p1}, Lams;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_d
    new-instance v0, Lana;

    invoke-direct {v0, p1}, Lana;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_e
    new-instance v0, Lamt;

    invoke-direct {v0, p1}, Lamt;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_f
    new-instance v0, Lamz;

    invoke-direct {v0, p1}, Lamz;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_10
    new-instance v0, Land;

    invoke-direct {v0, p1}, Land;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_11
    new-instance v0, Lanb;

    invoke-direct {v0, p1}, Lanb;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_12
    new-instance v0, Lang;

    invoke-direct {v0, p1}, Lang;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_13
    new-instance v0, Lamy;

    invoke-direct {v0, p1}, Lamy;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_14
    new-instance v0, Lanf;

    invoke-direct {v0, p1}, Lanf;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_15
    new-instance v0, Lamx;

    invoke-direct {v0, p1}, Lamx;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_16
    new-instance v0, Lamc;

    invoke-direct {v0, p1}, Lamc;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_17
    new-instance v0, Lami;

    invoke-direct {v0, p1}, Lami;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_18
    new-instance v0, Lamw;

    invoke-direct {v0, p1}, Lamw;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_19
    new-instance v0, Lamu;

    invoke-direct {v0, p1}, Lamu;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_1a
    new-instance v0, Lane;

    invoke-direct {v0, p1}, Lane;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_1b
    new-instance v0, Lamv;

    invoke-direct {v0, p1}, Lamv;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_1c
    new-instance v0, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation;

    invoke-direct {v0, p1}, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_1d
    new-instance v0, Lamo;

    invoke-direct {v0, p1}, Lamo;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/service/SnapchatService;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/snapchat/android/service/SnapchatService$b;

    invoke-direct {v3, p0, v0}, Lcom/snapchat/android/service/SnapchatService$b;-><init>(Lcom/snapchat/android/service/SnapchatService;Lamk;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v1, "SnapchatService"

    const-string v2, "The new operation %s has been submitted. mFutureList.size()=%d"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method
