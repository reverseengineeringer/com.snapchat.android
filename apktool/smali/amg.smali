.class public final Lamg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamg$a;
    }
.end annotation


# static fields
.field public static final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lamg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Lama;

.field private final d:Lqb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lamg$1;

    invoke-direct {v0}, Lamg$1;-><init>()V

    sput-object v0, Lamg;->a:Ljavax/inject/Provider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lqb;

    invoke-direct {v0}, Lqb;-><init>()V

    invoke-static {}, Lamh;->a()Lamh;

    move-result-object v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {}, Lama;->a()Lama;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lamg;-><init>(Lqb;Ljava/util/concurrent/ExecutorService;Lama;)V

    .line 52
    return-void
.end method

.method private constructor <init>(Lqb;Ljava/util/concurrent/ExecutorService;Lama;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p3, p0, Lamg;->c:Lama;

    .line 63
    iput-object p1, p0, Lamg;->d:Lqb;

    .line 64
    iput-object p2, p0, Lamg;->b:Ljava/util/concurrent/ExecutorService;

    .line 65
    return-void
.end method


# virtual methods
.method protected final a(Laly;Lbgl;)Lus;
    .locals 6
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 124
    iget-object v0, p0, Lamg;->c:Lama;

    invoke-virtual {v0}, Lama;->b()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 125
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 126
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_2

    :cond_0
    move v0, v2

    .line 129
    :goto_1
    invoke-static {}, Lakr;->m()Z

    move-result v4

    if-nez v4, :cond_3

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to download media when user is logged out"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    new-instance v1, Lus$a;

    iget-object v2, p1, Laly;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lus$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Lus$a;->mCaughtException:Ljava/lang/Exception;

    invoke-virtual {v1}, Lus$a;->a()Lus;

    move-result-object v0

    .line 157
    :goto_2
    return-object v0

    .line 125
    :cond_1
    const-string v0, "Unknown"

    move-object v3, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 126
    goto :goto_1

    .line 137
    :cond_3
    if-nez v0, :cond_4

    iget-boolean v0, p1, Laly;->a:Z

    if-eqz v0, :cond_4

    .line 138
    new-instance v0, Lamb;

    const-string v1, "Operation only allowed on wifi"

    invoke-direct {v0, v1}, Lamb;-><init>(Ljava/lang/String;)V

    .line 140
    new-instance v1, Lus$a;

    iget-object v2, p1, Laly;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lus$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Lus$a;->mCaughtException:Ljava/lang/Exception;

    invoke-virtual {v1}, Lus$a;->a()Lus;

    move-result-object v0

    goto :goto_2

    .line 145
    :cond_4
    iget-object v0, p1, Laly;->i:Ljava/lang/Object;

    if-eqz v0, :cond_5

    move v0, v2

    :goto_3
    if-eqz v0, :cond_7

    iget-object v4, p1, Laly;->d:Ljava/lang/String;

    iget-object v5, p1, Laly;->i:Ljava/lang/Object;

    if-nez v5, :cond_6

    invoke-static {v4, p2}, Lqb;->a(Ljava/lang/String;Lbgk;)Lqn;

    move-result-object v0

    .line 149
    :goto_4
    :try_start_0
    invoke-virtual {v0}, Lqn;->executeSynchronously()Lus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    :cond_5
    move v0, v1

    .line 145
    goto :goto_3

    :cond_6
    new-instance v0, Lqn;

    invoke-direct {v0, v4, p2, v5}, Lqn;-><init>(Ljava/lang/String;Lbgk;Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    iget-object v0, p1, Laly;->d:Ljava/lang/String;

    invoke-static {v0, p2}, Lqb;->a(Ljava/lang/String;Lbgk;)Lqn;

    move-result-object v0

    goto :goto_4

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object v0, v4, v2

    .line 154
    new-instance v1, Lus$a;

    iget-object v2, p1, Laly;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lus$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Lus$a;->mCaughtException:Ljava/lang/Exception;

    invoke-virtual {v1}, Lus$a;->a()Lus;

    move-result-object v0

    goto :goto_2
.end method
