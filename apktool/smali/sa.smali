.class public final Lsa;
.super Lsh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsa$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsh",
        "<",
        "Lsi;",
        ">;"
    }
.end annotation


# instance fields
.field final mPasscode:Ljava/lang/String;

.field private final mPaymentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lsh$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p3    # Lsh$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct {p0, p3}, Lsh;-><init>(Lsh$a;)V

    .line 18
    iput-object p1, p0, Lsa;->mPaymentId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lsa;->mPasscode:Ljava/lang/String;

    .line 20
    const-class v0, Lsi;

    invoke-virtual {p0, v0, p0}, Lsa;->a(Ljava/lang/Class;Lts$b;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lsa$a;

    invoke-direct {v0, p0}, Lsa$a;-><init>(Lsa;)V

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cash/payments/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsa;->mPaymentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/confirm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
