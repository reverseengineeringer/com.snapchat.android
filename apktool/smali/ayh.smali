.class public Layh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mKey:Ljava/lang/String;

.field public final mType:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Layh;->mKey:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Layh;->mType:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 35
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    .line 36
    :cond_0
    instance-of v0, p1, Layh;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :cond_1
    check-cast p1, Layh;

    .line 38
    iget-object v0, p0, Layh;->mKey:Ljava/lang/String;

    iget-object v1, p1, Layh;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Layh;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Layh;->mKey:Ljava/lang/String;

    return-object v0
.end method
