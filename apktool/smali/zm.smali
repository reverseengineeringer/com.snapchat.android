.class public final Lzm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzj;


# instance fields
.field private final a:Lajx;

.field private final b:Lzn;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lajx;

    invoke-direct {v0}, Lajx;-><init>()V

    new-instance v1, Lzn;

    invoke-direct {v1}, Lzn;-><init>()V

    invoke-direct {p0, v0, v1}, Lzm;-><init>(Lajx;Lzn;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Lajx;Lzn;)V
    .locals 5
    .param p1    # Lajx;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lzn;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v4, p0, Lzm;->c:I

    .line 28
    iput-boolean v4, p0, Lzm;->d:Z

    .line 36
    iput-object p1, p0, Lzm;->a:Lajx;

    .line 37
    iput-object p2, p0, Lzm;->b:Lzn;

    .line 38
    const-string v0, "TapToSkipTutorial"

    const-string v1, "Existing values: hasTappedToSkip:%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lajx;->bB()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Laio;)V
    .locals 1
    .param p1    # Laio;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lzm;->c:I

    .line 73
    iput-boolean v0, p0, Lzm;->d:Z

    .line 74
    return-void
.end method

.method public final a(Laje;)V
    .locals 2
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 53
    instance-of v0, p1, Lajr;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lzm;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Lajx;->bB()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lzm;->c:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Laje;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzm;->d:Z

    .line 56
    iget-object v0, p0, Lzm;->b:Lzn;

    const v1, 0x7f0c0297

    invoke-virtual {v0, v1}, Lzn;->a(I)V

    .line 58
    :cond_0
    return-void
.end method

.method public final a(Laje;Laio;)V
    .locals 1
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laio;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lzm;->c:I

    .line 44
    return-void
.end method

.method public final a(Laje;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V
    .locals 1
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 63
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->SKIP_REQUESTED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-ne p2, v0, :cond_0

    .line 64
    const/4 v0, 0x1

    invoke-static {v0}, Lajx;->y(Z)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget v0, p0, Lzm;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzm;->c:I

    goto :goto_0
.end method
