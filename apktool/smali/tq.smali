.class public final Ltq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAcceptTermsBlocker:Lrt;
    .annotation build Lchd;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accept_terms"
    .end annotation
.end field

.field public mCardBlocker:Lrx;
    .annotation build Lchd;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card"
    .end annotation
.end field

.field private mConfirmBlocker:Lrz;
    .annotation build Lchd;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "confirm"
    .end annotation
.end field

.field private mPhoneNumberBlocker:Lsg;
    .annotation build Lchd;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone_number"
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;
    .annotation build Lchd;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method private c()Lso;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Ltq;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lso;

    iget-object v1, p0, Ltq;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Lso;-><init>(Ljava/lang/String;)V

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ltq;->mAcceptTermsBlocker:Lrt;

    if-nez v0, :cond_0

    iget-object v0, p0, Ltq;->mCardBlocker:Lrx;

    if-nez v0, :cond_0

    iget-object v0, p0, Ltq;->mConfirmBlocker:Lrz;

    if-nez v0, :cond_0

    iget-object v0, p0, Ltq;->mPhoneNumberBlocker:Lsg;

    if-nez v0, :cond_0

    invoke-direct {p0}, Ltq;->c()Lso;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lrl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget-object v1, p0, Ltq;->mAcceptTermsBlocker:Lrt;

    .line 60
    if-eqz v1, :cond_0

    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    iget-object v1, p0, Ltq;->mCardBlocker:Lrx;

    .line 64
    if-eqz v1, :cond_1

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_1
    iget-object v1, p0, Ltq;->mConfirmBlocker:Lrz;

    .line 68
    if-eqz v1, :cond_2

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_2
    iget-object v1, p0, Ltq;->mPhoneNumberBlocker:Lsg;

    .line 76
    if-eqz v1, :cond_3

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    invoke-direct {p0}, Ltq;->c()Lso;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_4

    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_4
    return-object v0
.end method
