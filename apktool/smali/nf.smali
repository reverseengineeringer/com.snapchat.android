.class public final Lnf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnf$a;
    }
.end annotation


# static fields
.field private static final AD_KEY_PARAM:Ljava/lang/String; = "ad_key"

.field public static final AD_NO_FILL_STRING:Ljava/lang/String; = "NO-FILL"


# instance fields
.field public final mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

.field public final mAdResponseFieldBundle:Landroid/os/Bundle;

.field public mAdStreamPosition:I

.field mImpressionViewThreshold:J

.field public final mTransformedUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/snapchat/android/ads/AdRequestError;Landroid/os/Bundle;J)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lnf;->mTransformedUrl:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lnf;->mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

    .line 26
    iput-object p3, p0, Lnf;->mAdResponseFieldBundle:Landroid/os/Bundle;

    .line 27
    iput-wide p4, p0, Lnf;->mImpressionViewThreshold:J

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/snapchat/android/ads/AdRequestError;Landroid/os/Bundle;JB)V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p5}, Lnf;-><init>(Ljava/lang/String;Lcom/snapchat/android/ads/AdRequestError;Landroid/os/Bundle;J)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 4
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 59
    iget-object v2, p0, Lnf;->mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnf;->mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

    iget-object v2, v2, Lcom/snapchat/android/ads/AdRequestError;->mErrorCode:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    sget-object v3, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->CONTENT_NO_FILL:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    if-ne v2, v3, :cond_2

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    iget-object v2, p0, Lnf;->mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnf;->mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

    iget-object v2, v2, Lcom/snapchat/android/ads/AdRequestError;->mErrorCode:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    sget-object v3, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ERROR_CODE_NO_FILL:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    if-ne v2, v3, :cond_3

    move v2, v1

    :goto_1
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lnf;->mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnf;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 9
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 88
    iget-object v1, p0, Lnf;->mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

    if-nez v1, :cond_0

    iget-object v1, p0, Lnf;->mTransformedUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :cond_1
    iget-object v1, p0, Lnf;->mAdResponseFieldBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnf;->mAdResponseFieldBundle:Landroid/os/Bundle;

    const-string v3, "ad_key"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    iget-object v0, p0, Lnf;->mAdResponseFieldBundle:Landroid/os/Bundle;

    const-string v1, "ad_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_2
    iget-object v1, p0, Lnf;->mTransformedUrl:Ljava/lang/String;

    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 98
    if-ltz v1, :cond_0

    .line 100
    iget-object v3, p0, Lnf;->mTransformedUrl:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 102
    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 103
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 104
    aget-object v6, v5, v2

    .line 105
    const-string v7, "ad_key"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 107
    array-length v1, v5

    if-le v1, v8, :cond_0

    .line 108
    aget-object v0, v5, v8

    goto :goto_0

    .line 102
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
