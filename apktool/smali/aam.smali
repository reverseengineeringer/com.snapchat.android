.class public final Laam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laaj;


# instance fields
.field private final a:Lakr;

.field private final b:Laan;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lakr;

    invoke-direct {v0}, Lakr;-><init>()V

    new-instance v1, Laan;

    invoke-direct {v1}, Laan;-><init>()V

    invoke-direct {p0, v0, v1}, Laam;-><init>(Lakr;Laan;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Lakr;Laan;)V
    .locals 3
    .param p1    # Lakr;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Laan;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v2, p0, Laam;->c:I

    .line 28
    iput-boolean v2, p0, Laam;->d:Z

    .line 36
    iput-object p1, p0, Laam;->a:Lakr;

    .line 37
    iput-object p2, p0, Laam;->b:Laan;

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lakr;->bw()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Lajk;)V
    .locals 1
    .param p1    # Lajk;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 72
    iput v0, p0, Laam;->c:I

    .line 73
    iput-boolean v0, p0, Laam;->d:Z

    .line 74
    return-void
.end method

.method public final a(Laka;Lajk;)V
    .locals 1
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lajk;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 43
    const/4 v0, 0x0

    iput v0, p0, Laam;->c:I

    .line 44
    return-void
.end method

.method public final a(Laka;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V
    .locals 1
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 63
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->SKIP_REQUESTED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-ne p2, v0, :cond_0

    .line 64
    const/4 v0, 0x1

    invoke-static {v0}, Lakr;->x(Z)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget v0, p0, Laam;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laam;->c:I

    goto :goto_0
.end method

.method public final d(Laka;)V
    .locals 2
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 53
    instance-of v0, p1, Lakl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laam;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Lakr;->bw()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Laam;->c:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Laka;->W()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Laam;->d:Z

    .line 56
    iget-object v0, p0, Laam;->b:Laan;

    const v1, 0x7f0c0297

    invoke-virtual {v0, v1}, Laan;->a(I)V

    .line 58
    :cond_0
    return-void
.end method
