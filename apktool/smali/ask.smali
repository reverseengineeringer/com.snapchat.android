.class public final Lask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lasj;


# instance fields
.field final a:Lasj;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lasj;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lasj;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lask;->b:Landroid/os/Handler;

    .line 20
    iput-object p2, p0, Lask;->a:Lasj;

    .line 21
    return-void
.end method

.method private static a()Z
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lbhp;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lasi;)V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lask;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lask;->b:Landroid/os/Handler;

    new-instance v1, Lask$1;

    invoke-direct {v1, p0, p1}, Lask$1;-><init>(Lask;Lasi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lask;->a:Lasj;

    invoke-interface {v0, p1}, Lasj;->a(Lasi;)V

    goto :goto_0
.end method

.method public final a(Lasi;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lask;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lask;->b:Landroid/os/Handler;

    new-instance v1, Lask$2;

    invoke-direct {v1, p0, p1, p2}, Lask$2;-><init>(Lask;Lasi;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lask;->a:Lasj;

    invoke-interface {v0, p1, p2}, Lasj;->a(Lasi;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V

    goto :goto_0
.end method
