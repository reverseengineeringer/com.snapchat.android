.class public final Lqq;
.super Ltx;
.source "SourceFile"

# interfaces
.implements Lakp$b;
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltx;",
        "Lakp$b;",
        "Lui$b",
        "<",
        "Lbkg;",
        ">;"
    }
.end annotation


# static fields
.field public static final PATH:Ljava/lang/String; = "/bq/stories"

.field private static final TAG:Ljava/lang/String; = "SyncStoryTask"


# instance fields
.field private final mBus:Lcom/squareup/otto/Bus;

.field private final mChecksum:Ljava/lang/String;

.field private mServerInfoResponse:Lbjx;

.field private final mUserPrefs:Lakr;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lqq;-><init>(Lcom/squareup/otto/Bus;Lakr;)V

    .line 39
    return-void
.end method

.method private constructor <init>(Lcom/squareup/otto/Bus;Lakr;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ltx;-><init>()V

    .line 44
    iput-object p1, p0, Lqq;->mBus:Lcom/squareup/otto/Bus;

    .line 45
    iput-object p2, p0, Lqq;->mUserPrefs:Lakr;

    .line 46
    invoke-static {}, Lakr;->ay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqq;->mChecksum:Ljava/lang/String;

    .line 47
    const-class v0, Lbkg;

    invoke-virtual {p0, v0, p0}, Lqq;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 48
    return-void
.end method


# virtual methods
.method public final D_()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lqq;->mServerInfoResponse:Lbjx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqq;->mServerInfoResponse:Lbjx;

    invoke-virtual {v0}, Lbjx;->e()Lbjx$a;

    move-result-object v0

    sget-object v1, Lbjx$a;->NOT_EQUAL:Lbjx$a;

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lqq;->mChecksum:Ljava/lang/String;

    invoke-static {}, Lakr;->ay()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lqq;->mServerInfoResponse:Lbjx;

    invoke-virtual {v0}, Lbjx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lakr;->k(Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    new-instance v0, Lqq;

    invoke-direct {v0}, Lqq;-><init>()V

    invoke-virtual {v0}, Lqq;->execute()V

    goto :goto_0
.end method

.method public final execute()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lqq;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lbfh;

    invoke-direct {v1}, Lbfh;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 58
    invoke-super {p0}, Ltx;->execute()V

    .line 59
    return-void
.end method

.method protected final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "/bq/stories"

    return-object v0
.end method

.method public final synthetic getRequestPayload()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lqq$a;

    invoke-direct {v0}, Lqq$a;-><init>()V

    iget-object v1, p0, Lqq;->mChecksum:Ljava/lang/String;

    iput-object v1, v0, Lqq$a;->mChecksum:Ljava/lang/String;

    invoke-static {}, Lpq;->a()Lpq;

    move-result-object v1

    const-string v2, "/bq/stories"

    invoke-virtual {v1, v2}, Lpq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lqq$a;->mFeatureMap:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 27
    check-cast p1, Lbkg;

    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqq;->mUser:Lakp;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lbkg;->g()Lbjx;

    move-result-object v0

    iput-object v0, p0, Lqq;->mServerInfoResponse:Lbjx;

    iget-object v0, p0, Lqq;->mUser:Lakp;

    invoke-virtual {v0, p1}, Lakp;->a(Lbkg;)Z

    move-result v0

    iget-object v2, p0, Lqq;->mUser:Lakp;

    invoke-virtual {v2, p0}, Lakp;->a(Lakp$b;)V

    :goto_0
    iget-object v2, p0, Lqq;->mBus:Lcom/squareup/otto/Bus;

    new-instance v3, Lbfn;

    invoke-direct {v3, v6}, Lbfn;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lqq;->mBus:Lcom/squareup/otto/Bus;

    new-instance v3, Lbfg;

    iget-object v4, p0, Lqq;->mUUID:Ljava/util/UUID;

    new-instance v5, Lakp$a;

    invoke-direct {v5, v1, v1, v0, v1}, Lakp$a;-><init>(ZZZZ)V

    invoke-direct {v3, v4, v6, v1, v5}, Lbfg;-><init>(Ljava/util/UUID;ZZLakp$a;)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lqq;->mBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lbfn;

    invoke-direct {v2, v1}, Lbfn;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lqq;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lbfg;

    iget-object v2, p0, Lqq;->mUUID:Ljava/util/UUID;

    invoke-direct {v1, v2}, Lbfg;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
