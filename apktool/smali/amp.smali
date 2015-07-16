.class public final Lamp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamp$a;,
        Lamp$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lalw;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Lalw;->a()Lalw;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0, v1}, Lamp;-><init>(Lalw;Landroid/os/Handler;)V

    .line 85
    return-void
.end method

.method private constructor <init>(Lalw;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lamp;->b:Lalw;

    .line 90
    iput-object p2, p0, Lamp;->a:Landroid/os/Handler;

    .line 91
    return-void
.end method

.method static synthetic a(Lamp;Lamp$a;Lus;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lamp;->a:Landroid/os/Handler;

    new-instance v1, Lamp$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lamp$3;-><init>(Lamp;Lamp$a;Lus;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a(Laka;Ljava/lang/String;Ljava/lang/Object;Laxn;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;Lamp$a;)V
    .locals 9

    .prologue
    .line 136
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    invoke-virtual {p1}, Laka;->M()Z

    .line 140
    const-string v1, "%s-%s-%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Laka;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Laka;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 142
    new-instance v2, Laly$a;

    invoke-direct {v2}, Laly$a;-><init>()V

    iput-object p6, v2, Laly$a;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-object/from16 v0, p7

    iput-object v0, v2, Laly$a;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object p2, v2, Laly$a;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Laka;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Laly$a;->e:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Laka;->j()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iput-object v3, v2, Laly$a;->h:[Ljava/lang/String;

    iput-object v1, v2, Laly$a;->g:Ljava/lang/String;

    iput-object p3, v2, Laly$a;->i:Ljava/lang/Object;

    invoke-virtual {p1}, Laka;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Laka;->i()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Laly$a;->a(Ljava/lang/String;Ljava/lang/String;I)Laly$a;

    move-result-object v1

    invoke-virtual {v1}, Laly$a;->a()Laly;

    move-result-object v7

    .line 154
    instance-of v1, p1, Lakl;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lamp;->b:Lalw;

    new-instance v2, Lamp$1;

    invoke-virtual {p1}, Laka;->i()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-direct {v2, p0, p4, v3, v0}, Lamp$1;-><init>(Lamp;Laxn;Ljava/lang/String;Lamp$a;)V

    invoke-virtual {v1, v7, v2}, Lalw;->a(Laly;Lalw$a;)V

    .line 171
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v8, p0, Lamp;->b:Lalw;

    new-instance v1, Lamp$2;

    invoke-virtual {p1}, Laka;->i()Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lamp$2;-><init>(Lamp;Laka;Laxn;Ljava/lang/String;Lamp$a;)V

    invoke-virtual {v8, v7, v1}, Lalw;->a(Laly;Lalw$a;)V

    goto :goto_0
.end method
