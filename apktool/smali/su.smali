.class public final Lsu;
.super Lsx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsx",
        "<",
        "Lsy;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPaymentId:Ljava/lang/String;

.field final mPhoneNumber:Ljava/lang/String;

.field final mSignature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsx$a;)V
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
    .param p4    # Lsx$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0, p4}, Lsx;-><init>(Lsx$a;)V

    .line 26
    iput-object p2, p0, Lsu;->mPhoneNumber:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lsu;->mSignature:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lsu;->mPaymentId:Ljava/lang/String;

    .line 29
    const-class v0, Lsy;

    invoke-virtual {p0, v0, p0}, Lsu;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lsx$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lsx$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lsu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsx$a;)V

    .line 36
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lsu;->mPaymentId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cash/payments/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsu;->mPaymentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/phone-number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cash/phone-number"

    goto :goto_0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lsu$a;

    invoke-direct {v0, p0}, Lsu$a;-><init>(Lsu;)V

    return-object v0
.end method
