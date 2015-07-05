.class public final Lms;
.super Lml;
.source "SourceFile"


# static fields
.field public static final AD_PLACEMENT_PRODUCT_ID:Ljava/lang/String; = "story"

.field public static final POSITION_PARAM:Ljava/lang/String; = "position"

.field public static final STORY_AD_PAGE_IMPRESSION_DURATION_KEY:Ljava/lang/String; = "story_ad_page_impression_duration"


# instance fields
.field private final mPosition:I

.field private final mStream:Lmr;


# direct methods
.method public constructor <init>(Lmr;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lml;-><init>()V

    .line 17
    iput p2, p0, Lms;->mPosition:I

    .line 18
    iput-object p1, p0, Lms;->mStream:Lmr;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lms;->mStream:Lmr;

    iget-object v0, v0, Lmr;->mStoryAdStreamRequestInfo:Lmw;

    iget-object v0, v0, Lmw;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lms;->mStream:Lmr;

    invoke-virtual {v1}, Lmr;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lms;->mPosition:I

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
    iget-object v0, p0, Lms;->mStream:Lmr;

    iget-object v0, v0, Lmr;->mStoryAdStreamRequestInfo:Lmw;

    iget-object v0, v0, Lmw;->mTargetingParams:Landroid/os/Bundle;

    .line 34
    const-string v1, "position"

    iget v2, p0, Lms;->mPosition:I

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
