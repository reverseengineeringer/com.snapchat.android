.class final Lael$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lacx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lael;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lael;


# direct methods
.method constructor <init>(Lael;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lael$4;->a:Lael;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;ILbku;Lbkw;)V
    .locals 11

    .prologue
    .line 465
    iget-object v0, p0, Lael$4;->a:Lael;

    iget-object v0, v0, Lael;->m:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    const-string v1, "DISCOVER_SHARE_LINK_VALIDATION"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "link_status"

    invoke-virtual/range {p7 .. p7}, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 466
    :cond_0
    new-instance v1, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p7

    move-wide/from16 v6, p5

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v1 .. v10}, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;JILbku;Lbkw;)V

    .line 470
    iget-object v0, p0, Lael$4;->a:Lael;

    invoke-virtual {v0, p1, v1}, Lael;->a(Ljava/lang/String;Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;)V

    .line 471
    return-void
.end method
