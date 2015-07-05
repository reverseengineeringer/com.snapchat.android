.class public final Lanc$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "password"
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phoneNumber"
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceid"
    .end annotation
.end field

.field f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dtoken1i"
    .end annotation
.end field

.field g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dsig"
    .end annotation
.end field

.field final synthetic h:Lanc;


# direct methods
.method public constructor <init>(Lanc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 99
    iput-object p1, p0, Lanc$a;->h:Lanc;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 100
    iput-object p2, p0, Lanc$a;->a:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lanc$a;->a:Ljava/lang/String;

    const-string v1, "pwConfirmPhoneNumber"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iput-object p3, p0, Lanc$a;->c:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lanc$a;->b:Ljava/lang/String;

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lanc$a;->a:Ljava/lang/String;

    const-string v1, "enableTwoFA"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    iput-object p3, p0, Lanc$a;->d:Ljava/lang/String;

    .line 106
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanc$a;->b:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Lanc;->c:Laya;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lanc$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lanc$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Laya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_2

    .line 112
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lanc$a;->f:Ljava/lang/String;

    .line 113
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lanc$a;->g:Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_2
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null deviceTokenAndSignaturePair"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_3
    iget-object v0, p0, Lanc$a;->a:Ljava/lang/String;

    const-string v1, "twoFAForgetOneDevice"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iput-object p3, p0, Lanc$a;->e:Ljava/lang/String;

    goto :goto_0
.end method
