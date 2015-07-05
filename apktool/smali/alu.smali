.class public abstract Lalu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/concurrent/CountDownLatch;

.field final b:Lalb;

.field volatile c:Z

.field d:Ljava/lang/String;

.field protected final e:Lalb$a;


# direct methods
.method protected constructor <init>(Lalb;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lalu;->a:Ljava/util/concurrent/CountDownLatch;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lalu;->c:Z

    .line 87
    new-instance v0, Lalu$1;

    invoke-direct {v0, p0}, Lalu$1;-><init>(Lalu;)V

    iput-object v0, p0, Lalu;->e:Lalb$a;

    .line 30
    iput-object p1, p0, Lalu;->b:Lalb;

    .line 31
    return-void
.end method


# virtual methods
.method protected abstract a(Lbfl;)Z
.end method

.method protected final b(Ljava/lang/String;Landroid/os/Bundle;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lalu;->d:Ljava/lang/String;

    .line 48
    new-instance v0, Lalc$a;

    invoke-direct {v0}, Lalc$a;-><init>()V

    iput-object p3, v0, Lalc$a;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object p4, v0, Lalc$a;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object p1, v0, Lalc$a;->d:Ljava/lang/String;

    iget-object v1, p0, Lalu;->d:Ljava/lang/String;

    iput-object v1, v0, Lalc$a;->e:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p5, v1, v3

    iput-object v1, v0, Lalc$a;->h:[Ljava/lang/String;

    iput-object p6, v0, Lalc$a;->g:Ljava/lang/String;

    iput-object p2, v0, Lalc$a;->f:Landroid/os/Bundle;

    invoke-virtual {v0}, Lalc$a;->a()Lalc;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lalu;->b:Lalb;

    iget-object v2, p0, Lalu;->e:Lalb$a;

    invoke-virtual {v1, v0, v2}, Lalb;->a(Lalc;Lalb$a;)V

    .line 62
    :try_start_0
    iget-object v0, p0, Lalu;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    iget-boolean v0, p0, Lalu;->c:Z

    return v0

    .line 64
    :catch_0
    move-exception v0

    const-string v0, "MediaDownload"

    const-string v1, "Interrupt while waiting for latch!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
