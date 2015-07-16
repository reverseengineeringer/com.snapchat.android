.class public abstract Lamr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/concurrent/CountDownLatch;

.field final b:Lalw;

.field volatile c:Z

.field d:Ljava/lang/String;

.field protected final e:Lalw$a;


# direct methods
.method protected constructor <init>(Lalw;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lamr;->a:Ljava/util/concurrent/CountDownLatch;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamr;->c:Z

    .line 87
    new-instance v0, Lamr$1;

    invoke-direct {v0, p0}, Lamr$1;-><init>(Lamr;)V

    iput-object v0, p0, Lamr;->e:Lalw$a;

    .line 30
    iput-object p1, p0, Lamr;->b:Lalw;

    .line 31
    return-void
.end method


# virtual methods
.method protected abstract a(Lbgl;)Z
.end method

.method protected final b(Ljava/lang/String;Landroid/os/Bundle;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lamr;->d:Ljava/lang/String;

    .line 48
    new-instance v0, Laly$a;

    invoke-direct {v0}, Laly$a;-><init>()V

    iput-object p3, v0, Laly$a;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object p4, v0, Laly$a;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object p1, v0, Laly$a;->d:Ljava/lang/String;

    iget-object v1, p0, Lamr;->d:Ljava/lang/String;

    iput-object v1, v0, Laly$a;->e:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    iput-object v1, v0, Laly$a;->h:[Ljava/lang/String;

    iput-object p6, v0, Laly$a;->g:Ljava/lang/String;

    iput-object p2, v0, Laly$a;->f:Landroid/os/Bundle;

    invoke-virtual {v0}, Laly$a;->a()Laly;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lamr;->b:Lalw;

    iget-object v2, p0, Lamr;->e:Lalw$a;

    invoke-virtual {v1, v0, v2}, Lalw;->a(Laly;Lalw$a;)V

    .line 62
    :try_start_0
    iget-object v0, p0, Lamr;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    iget-boolean v0, p0, Lamr;->c:Z

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
