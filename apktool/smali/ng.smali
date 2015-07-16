.class public final Lng;
.super Lnc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lng$a;
    }
.end annotation


# static fields
.field protected static final DISCOVER_AD_PAGE_IMPRESSION_DURATION_KEY:Ljava/lang/String; = "ad_page_impression_duration"

.field private static final PRODUCT_ID:Ljava/lang/String; = "discover"

.field protected static final TITLE_SPLASH_POSITION:I


# instance fields
.field private final mAdType:I

.field private final mAdUnitId:Ljava/lang/String;

.field private final mChannelName:Ljava/lang/String;

.field private final mEditionName:Ljava/lang/String;

.field private final mPosition:I

.field private final mTargetingParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lnc;-><init>()V

    .line 32
    iput-object p1, p0, Lng;->mEditionName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lng;->mChannelName:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lng;->mAdUnitId:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lng;->mTargetingParams:Ljava/util/Map;

    .line 36
    iput p5, p0, Lng;->mPosition:I

    .line 37
    iput p6, p0, Lng;->mAdType:I

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;IIB)V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p6}, Lng;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lng;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    const-string v0, "%s-%s-%s-[%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "discover"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lng;->mChannelName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lng;->mEditionName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lng;->mPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    return-object v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 42
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 44
    iget-object v0, p0, Lng;->mTargetingParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_0
    return-object v2
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "ad_page_impression_duration"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    const-string v0, "AdPlaceholder(%s:%s[%d]-%d)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lng;->mChannelName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lng;->mEditionName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lng;->mPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lng;->mAdType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
