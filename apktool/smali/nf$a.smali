.class public final Lnf$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

.field mAdResponseFieldBundle:Landroid/os/Bundle;

.field private mImpressionViewThresholdMilliSeconds:J

.field mTransformedUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method


# virtual methods
.method public final a()Lnf;
    .locals 7

    .prologue
    .line 172
    new-instance v0, Lnf;

    iget-object v1, p0, Lnf$a;->mTransformedUrl:Ljava/lang/String;

    iget-object v2, p0, Lnf$a;->mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

    iget-object v3, p0, Lnf$a;->mAdResponseFieldBundle:Landroid/os/Bundle;

    iget-wide v4, p0, Lnf$a;->mImpressionViewThresholdMilliSeconds:J

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lnf;-><init>(Ljava/lang/String;Lcom/snapchat/android/ads/AdRequestError;Landroid/os/Bundle;JB)V

    return-object v0
.end method
