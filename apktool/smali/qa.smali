.class public final Lqa;
.super Lth;
.source "SourceFile"

# interfaces
.implements Lajv$b;
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqa$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lth;",
        "Lajv$b;",
        "Lts$b",
        "<",
        "Lbjf;",
        ">;"
    }
.end annotation


# static fields
.field public static final PATH:Ljava/lang/String; = "/bq/stories"

.field private static final TAG:Ljava/lang/String; = "SyncStoryTask"


# instance fields
.field private final mBus:Lcom/squareup/otto/Bus;

.field private final mChecksum:Ljava/lang/String;

.field private mServerInfoResponse:Lbiw;

.field private final mUserPrefs:Lajx;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lqa;-><init>(Lcom/squareup/otto/Bus;Lajx;)V

    .line 39
    return-void
.end method

.method private constructor <init>(Lcom/squareup/otto/Bus;Lajx;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lth;-><init>()V

    .line 44
    iput-object p1, p0, Lqa;->mBus:Lcom/squareup/otto/Bus;

    .line 45
    iput-object p2, p0, Lqa;->mUserPrefs:Lajx;

    .line 46
    invoke-static {}, Lajx;->az()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqa;->mChecksum:Ljava/lang/String;

    .line 47
    const-class v0, Lbjf;

    invoke-virtual {p0, v0, p0}, Lqa;->a(Ljava/lang/Class;Lts$b;)V

    .line 48
    return-void
.end method


# virtual methods
.method public final D_()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lqa;->mServerInfoResponse:Lbiw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqa;->mServerInfoResponse:Lbiw;

    invoke-virtual {v0}, Lbiw;->e()Lbiw$a;

    move-result-object v0

    sget-object v1, Lbiw$a;->NOT_EQUAL:Lbiw$a;

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lqa;->mChecksum:Ljava/lang/String;

    invoke-static {}, Lajx;->az()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lqa;->mServerInfoResponse:Lbiw;

    invoke-virtual {v0}, Lbiw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lajx;->k(Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    new-instance v0, Lqa;

    invoke-direct {v0}, Lqa;-><init>()V

    invoke-virtual {v0}, Lqa;->f()V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 27
    check-cast p1, Lbjf;

    invoke-virtual {p2}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqa;->mUser:Lajv;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lbjf;->g()Lbiw;

    move-result-object v0

    iput-object v0, p0, Lqa;->mServerInfoResponse:Lbiw;

    iget-object v0, p0, Lqa;->mUser:Lajv;

    invoke-virtual {v0, p1}, Lajv;->a(Lbjf;)Z

    move-result v0

    iget-object v2, p0, Lqa;->mUser:Lajv;

    invoke-virtual {v2, p0}, Lajv;->a(Lajv$b;)V

    :goto_0
    iget-object v2, p0, Lqa;->mBus:Lcom/squareup/otto/Bus;

    new-instance v3, Lbeo;

    invoke-direct {v3, v6}, Lbeo;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lqa;->mBus:Lcom/squareup/otto/Bus;

    new-instance v3, Lbeh;

    iget-object v4, p0, Lqa;->mUUID:Ljava/util/UUID;

    new-instance v5, Lajv$a;

    invoke-direct {v5, v1, v1, v0, v1}, Lajv$a;-><init>(ZZZZ)V

    invoke-direct {v3, v4, v6, v1, v5}, Lbeh;-><init>(Ljava/util/UUID;ZZLajv$a;)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lqa;->mBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lbeo;

    invoke-direct {v2, v1}, Lbeo;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lqa;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lbeh;

    iget-object v2, p0, Lqa;->mUUID:Ljava/util/UUID;

    invoke-direct {v1, v2}, Lbeh;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lqa$a;

    invoke-direct {v0}, Lqa$a;-><init>()V

    iget-object v1, p0, Lqa;->mChecksum:Ljava/lang/String;

    iput-object v1, v0, Lqa$a;->mChecksum:Ljava/lang/String;

    invoke-static {}, Loz;->a()Loz;

    move-result-object v1

    const-string v2, "/bq/stories"

    invoke-virtual {v1, v2}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lqa$a;->mFeatureMap:Ljava/lang/String;

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "/bq/stories"

    return-object v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lqa;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lbei;

    invoke-direct {v1}, Lbei;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 58
    invoke-super {p0}, Lth;->f()V

    .line 59
    return-void
.end method
