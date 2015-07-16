.class public final Lsq;
.super Lsx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsq$a;
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
.field final mPasscode:Ljava/lang/String;

.field private final mPaymentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lsx$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p3    # Lsx$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct {p0, p3}, Lsx;-><init>(Lsx$a;)V

    .line 18
    iput-object p1, p0, Lsq;->mPaymentId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lsq;->mPasscode:Ljava/lang/String;

    .line 20
    const-class v0, Lsy;

    invoke-virtual {p0, v0, p0}, Lsq;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cash/payments/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsq;->mPaymentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/confirm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lsq$a;

    invoke-direct {v0, p0}, Lsq$a;-><init>(Lsq;)V

    return-object v0
.end method
