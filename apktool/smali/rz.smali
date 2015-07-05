.class public final Lrz;
.super Lsh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsh",
        "<",
        "Lsi;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPaymentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lsh$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Lsh$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct {p0, p2}, Lsh;-><init>(Lsh$a;)V

    .line 18
    iput-object p1, p0, Lrz;->mPaymentId:Ljava/lang/String;

    .line 19
    const-class v0, Lsi;

    invoke-virtual {p0, v0, p0}, Lrz;->a(Ljava/lang/Class;Lts$b;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lsh$a;)V
    .locals 1
    .param p1    # Lsh$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lrz;-><init>(Ljava/lang/String;Lsh$a;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lrz;->mPaymentId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cash/payments/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lrz;->mPaymentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/accept-terms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cash/accept-terms"

    goto :goto_0
.end method
