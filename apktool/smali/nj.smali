.class public final Lnj;
.super Lnc;
.source "SourceFile"


# static fields
.field public static final AD_PLACEMENT_PRODUCT_ID:Ljava/lang/String; = "story"

.field public static final POSITION_PARAM:Ljava/lang/String; = "position"

.field public static final STORY_AD_PAGE_IMPRESSION_DURATION_KEY:Ljava/lang/String; = "story_ad_page_impression_duration"


# instance fields
.field private final mPosition:I

.field private final mStream:Lni;


# direct methods
.method public constructor <init>(Lni;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lnc;-><init>()V

    .line 17
    iput p2, p0, Lnj;->mPosition:I

    .line 18
    iput-object p1, p0, Lnj;->mStream:Lni;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lnj;->mStream:Lni;

    iget-object v0, v0, Lni;->mStoryAdStreamRequestInfo:Lnn;

    iget-object v0, v0, Lnn;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnj;->mStream:Lni;

    invoke-virtual {v1}, Lni;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnj;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lnj;->mStream:Lni;

    iget-object v0, v0, Lni;->mStoryAdStreamRequestInfo:Lnn;

    iget-object v0, v0, Lnn;->mTargetingParams:Landroid/os/Bundle;

    .line 34
    const-string v1, "position"

    iget v2, p0, Lnj;->mPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "story_ad_page_impression_duration"

    return-object v0
.end method
