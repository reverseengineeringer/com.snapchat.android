.class public final Lst;
.super Lsx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lst$b;,
        Lst$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsx",
        "<",
        "Lst$b;",
        ">;"
    }
.end annotation


# instance fields
.field final mExpiration:Ljava/lang/String;

.field final mPan:Ljava/lang/String;

.field private final mPaymentId:Ljava/lang/String;

.field final mPostalCode:Ljava/lang/String;

.field final mSecurityCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsx$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p6    # Lsx$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0, p6}, Lsx;-><init>(Lsx$a;)V

    .line 31
    iput-object p2, p0, Lst;->mPan:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lst;->mExpiration:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lst;->mSecurityCode:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lst;->mPostalCode:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lst;->mPaymentId:Ljava/lang/String;

    .line 36
    const-class v0, Lst$b;

    invoke-virtual {p0, v0, p0}, Lst;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsx$a;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Lsx$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 41
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lst;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsx$a;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lst;->mPaymentId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cash/payments/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lst;->mPaymentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/card"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cash/card"

    goto :goto_0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lst$a;

    invoke-direct {v0, p0}, Lst$a;-><init>(Lst;)V

    return-object v0
.end method
