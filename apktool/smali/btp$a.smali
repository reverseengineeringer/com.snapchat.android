.class final Lbtp$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Z

.field private b:Z

.field private c:Lbtp;


# direct methods
.method public constructor <init>(Lbtp;)V
    .locals 1

    .prologue
    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbtp$a;->a:Z

    .line 573
    iput-object p1, p0, Lbtp$a;->c:Lbtp;

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtp$a;->b:Z

    .line 575
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 583
    iget-boolean v0, p0, Lbtp$a;->b:Z

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lbtp$a;->c:Lbtp;

    invoke-virtual {v0}, Lbtp;->b()Z

    move-result v0

    iput-boolean v0, p0, Lbtp$a;->a:Z

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v1, p0, Lbtp$a;->c:Lbtp;

    :try_start_0
    invoke-static {}, Lbtp;->c()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    instance-of v2, v0, Lbqb;

    if-eqz v2, :cond_1

    check-cast v0, Lbqb;

    iget-object v0, v0, Lbqb;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lbtp;->a(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbrz; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, v1, Lbtp;->c:Lbqb;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lbtp;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lbtp;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lbtp;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
