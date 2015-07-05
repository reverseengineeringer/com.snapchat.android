.class public Lcom/snapchat/android/fragments/sendto/SendToFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lagg$a;


# static fields
.field private static b:Laim;


# instance fields
.field public a:Lzs;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Lagg;

.field private f:Landroid/os/Handler;

.field private g:Landroid/view/inputmethod/InputMethodManager;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/view/View;

.field private j:Z

.field private k:Lajv;

.field private l:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lajc;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/snapchat/android/ui/SendToBottomPanelView;

.field private final o:Lno;

.field private final p:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field private final q:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

.field private final r:Lnb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->f:Landroid/os/Handler;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->j:Z

    .line 117
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/ArrayList;

    .line 121
    invoke-static {}, Lno;->a()Lno;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lno;

    .line 122
    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->p:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 123
    new-instance v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->q:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    .line 124
    new-instance v0, Lnb;

    invoke-direct {v0}, Lnb;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->r:Lnb;

    .line 142
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    .line 143
    return-void
.end method

.method public static a(Laim;)Lcom/snapchat/android/fragments/sendto/SendToFragment;
    .locals 1
    .param p0    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 135
    sput-object p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laim;

    .line 136
    new-instance v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lno;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lno;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/sendto/SendToFragment;Ladb;)V
    .locals 25

    .prologue
    .line 98
    sget-object v2, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laim;

    invoke-static {v2}, Lnb;->a(Laim;)Lhm;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laim;

    invoke-static {v3}, Lnb;->b(Laim;)Lho;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Ladb;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Ladb;->d:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Ladb;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Ladb;->u:I

    move-object/from16 v0, p1

    iget v8, v0, Ladb;->v:I

    move-object/from16 v0, p1

    iget v9, v0, Ladb;->w:I

    move-object/from16 v0, p1

    iget-object v10, v0, Ladb;->x:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v11, v0, Ladb;->y:I

    move-object/from16 v0, p1

    iget v12, v0, Ladb;->z:I

    move-object/from16 v0, p1

    iget-object v13, v0, Ladb;->A:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-object/from16 v0, p1

    iget-object v14, v0, Ladb;->B:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-object/from16 v0, p1

    iget-boolean v15, v0, Ladb;->C:Z

    move-object/from16 v0, p1

    iget-wide v0, v0, Ladb;->D:J

    move-wide/from16 v16, v0

    sget-object v18, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laim;

    move-object/from16 v0, v18

    iget-boolean v0, v0, Laim;->mHasDrawing:Z

    move/from16 v18, v0

    sget-object v19, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laim;

    move-object/from16 v0, v19

    iget-object v0, v0, Laim;->mCaptionStyleDescription:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedHashSet;->size()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sget-object v22, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laim;

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    move-wide/from16 v22, v0

    sget-object v24, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laim;

    invoke-virtual/range {v24 .. v24}, Laim;->m()Z

    move-result v24

    invoke-static/range {v19 .. v19}, Laev;->a(Ljava/lang/String;)I

    move-result v19

    if-nez v9, :cond_f

    if-eqz v15, :cond_7

    move/from16 v0, v24

    invoke-static {v13, v0}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;Z)Lhy;

    move-result-object v9

    new-instance v10, Lhf;

    invoke-direct {v10}, Lhf;-><init>()V

    iput-object v4, v10, Lhf;->publisherId:Ljava/lang/String;

    iput-object v6, v10, Lhf;->dsnapId:Ljava/lang/String;

    iput-object v5, v10, Lhf;->editionId:Ljava/lang/String;

    iput-object v9, v10, Lhf;->mediaType:Lhy;

    invoke-static/range {v16 .. v17}, Lavf;->a(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v10, Lhf;->timeViewed:Ljava/lang/Double;

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v10, Lhf;->drawing:Ljava/lang/Boolean;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v10, Lhf;->recipientCount:Ljava/lang/Long;

    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_0

    move/from16 v0, v19

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v10, Lhf;->caption:Ljava/lang/Long;

    :cond_0
    if-eqz v2, :cond_1

    iput-object v2, v10, Lhf;->filterInfo:Lhm;

    :cond_1
    if-eqz v3, :cond_2

    iput-object v3, v10, Lhf;->filterVisual:Lho;

    :cond_2
    sget-object v2, Lhy;->VIDEO:Lhy;

    if-eq v9, v2, :cond_3

    sget-object v2, Lhy;->VIDEO_NO_SOUND:Lhy;

    if-ne v9, v2, :cond_4

    :cond_3
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v10, Lhf;->snapTimeSec:Ljava/lang/Double;

    :cond_4
    if-gez v8, :cond_6

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_5

    add-int/lit8 v2, v7, 0x1

    int-to-long v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v10, Lhf;->snapIndexCount:Ljava/lang/Long;

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lhf;->snapIndexPos:Ljava/lang/Long;

    :cond_5
    invoke-static {v10}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    :goto_1
    return-void

    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    move/from16 v0, v24

    invoke-static {v13, v0}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;Z)Lhy;

    move-result-object v9

    new-instance v10, Lgz;

    invoke-direct {v10}, Lgz;-><init>()V

    iput-object v4, v10, Lgz;->publisherId:Ljava/lang/String;

    iput-object v6, v10, Lgz;->dsnapId:Ljava/lang/String;

    iput-object v5, v10, Lgz;->editionId:Ljava/lang/String;

    iput-object v9, v10, Lgz;->mediaType:Lhy;

    invoke-static {v14}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lhy;

    move-result-object v4

    iput-object v4, v10, Lgz;->longformType:Lhy;

    invoke-static/range {v16 .. v17}, Lavf;->a(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v10, Lgz;->timeViewed:Ljava/lang/Double;

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v10, Lgz;->drawing:Ljava/lang/Boolean;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v10, Lgz;->recipientCount:Ljava/lang/Long;

    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_8

    move/from16 v0, v19

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v10, Lgz;->caption:Ljava/lang/Long;

    :cond_8
    if-eqz v2, :cond_9

    iput-object v2, v10, Lgz;->filterInfo:Lhm;

    :cond_9
    if-eqz v3, :cond_a

    iput-object v3, v10, Lgz;->filterVisual:Lho;

    :cond_a
    sget-object v2, Lhy;->VIDEO:Lhy;

    if-eq v9, v2, :cond_b

    sget-object v2, Lhy;->VIDEO_NO_SOUND:Lhy;

    if-ne v9, v2, :cond_c

    :cond_b
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v10, Lgz;->snapTimeSec:Ljava/lang/Double;

    :cond_c
    if-gez v8, :cond_e

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_d

    add-int/lit8 v2, v7, 0x1

    int-to-long v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v10, Lgz;->snapIndexCount:Ljava/lang/Long;

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lgz;->snapIndexPos:Ljava/lang/Long;

    :cond_d
    invoke-static {v10}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_1

    :cond_e
    const/4 v2, 0x0

    goto :goto_2

    :cond_f
    if-eqz v15, :cond_17

    move/from16 v0, v24

    invoke-static {v13, v0}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;Z)Lhy;

    move-result-object v6

    new-instance v9, Lgr;

    invoke-direct {v9}, Lgr;-><init>()V

    iput-object v4, v9, Lgr;->publisherId:Ljava/lang/String;

    iput-object v10, v9, Lgr;->adsnapId:Ljava/lang/String;

    iput-object v5, v9, Lgr;->editionId:Ljava/lang/String;

    iput-object v6, v9, Lgr;->mediaType:Lhy;

    invoke-static/range {v16 .. v17}, Lavf;->a(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v9, Lgr;->timeViewed:Ljava/lang/Double;

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v9, Lgr;->drawing:Ljava/lang/Boolean;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v9, Lgr;->recipientCount:Ljava/lang/Long;

    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_10

    move/from16 v0, v19

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v9, Lgr;->caption:Ljava/lang/Long;

    :cond_10
    if-eqz v2, :cond_11

    iput-object v2, v9, Lgr;->filterInfo:Lhm;

    :cond_11
    if-eqz v3, :cond_12

    iput-object v3, v9, Lgr;->filterVisual:Lho;

    :cond_12
    sget-object v2, Lhy;->VIDEO:Lhy;

    if-eq v6, v2, :cond_13

    sget-object v2, Lhy;->VIDEO_NO_SOUND:Lhy;

    if-ne v6, v2, :cond_14

    :cond_13
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v9, Lgr;->snapTimeSec:Ljava/lang/Double;

    :cond_14
    if-gez v8, :cond_16

    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_15

    add-int/lit8 v2, v7, 0x1

    int-to-long v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v9, Lgr;->snapIndexCount:Ljava/lang/Long;

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v9, Lgr;->snapIndexPos:Ljava/lang/Long;

    int-to-long v2, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v9, Lgr;->adIndexPos:Ljava/lang/Long;

    int-to-long v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v9, Lgr;->adIndexCount:Ljava/lang/Long;

    :cond_15
    invoke-static {v9}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto/16 :goto_1

    :cond_16
    const/4 v2, 0x0

    goto :goto_3

    :cond_17
    move/from16 v0, v24

    invoke-static {v13, v0}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;Z)Lhy;

    move-result-object v6

    new-instance v9, Lgn;

    invoke-direct {v9}, Lgn;-><init>()V

    iput-object v4, v9, Lgn;->publisherId:Ljava/lang/String;

    iput-object v10, v9, Lgn;->adsnapId:Ljava/lang/String;

    iput-object v5, v9, Lgn;->editionId:Ljava/lang/String;

    iput-object v6, v9, Lgn;->mediaType:Lhy;

    invoke-static/range {v16 .. v17}, Lavf;->a(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v9, Lgn;->timeViewed:Ljava/lang/Double;

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v9, Lgn;->drawing:Ljava/lang/Boolean;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v9, Lgn;->recipientCount:Ljava/lang/Long;

    invoke-static {v14}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lhy;

    move-result-object v4

    iput-object v4, v9, Lgn;->longformType:Lhy;

    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_18

    move/from16 v0, v19

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v9, Lgn;->caption:Ljava/lang/Long;

    :cond_18
    if-eqz v2, :cond_19

    iput-object v2, v9, Lgn;->filterInfo:Lhm;

    :cond_19
    if-eqz v3, :cond_1a

    iput-object v3, v9, Lgn;->filterVisual:Lho;

    :cond_1a
    sget-object v2, Lhy;->IMAGE:Lhy;

    if-eq v6, v2, :cond_1b

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v9, Lgn;->snapTimeSec:Ljava/lang/Double;

    :cond_1b
    if-gez v8, :cond_1d

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_1c

    add-int/lit8 v2, v7, 0x1

    int-to-long v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v9, Lgn;->snapIndexCount:Ljava/lang/Long;

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v9, Lgn;->snapIndexPos:Ljava/lang/Long;

    int-to-long v2, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v9, Lgn;->adIndexPos:Ljava/lang/Long;

    int-to-long v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v9, Lgn;->adIndexCount:Ljava/lang/Long;

    :cond_1c
    invoke-static {v9}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto/16 :goto_1

    :cond_1d
    const/4 v2, 0x0

    goto :goto_4
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/sendto/SendToFragment;Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/LinkedHashSet;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lajv;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->k:Lajv;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 98
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c010e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaExtras:Laiz;

    move-object v7, v0

    check-cast v7, Ladb;

    new-instance v0, Lbbg;

    iget v3, v7, Ladb;->o:I

    iget v4, v7, Ladb;->p:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "sending-"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laim;

    iget-object v8, v8, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lbbg;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c010f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v6, Lbbg;

    iget v9, v7, Ladb;->o:I

    iget v10, v7, Ladb;->p:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sent-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laim;

    iget-object v3, v3, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v7, v1

    move v11, v5

    invoke-direct/range {v6 .. v12}, Lbbg;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZLjava/lang/String;)V

    iput-boolean v5, v6, Lbbg;->delayed:Z

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/analytics/NetworkAnalytics;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->p:Lcom/snapchat/android/analytics/NetworkAnalytics;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->j:Z

    return v0
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o()V

    return-void
.end method

.method static synthetic j(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->g:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->j:Z

    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    return-void
.end method

.method static synthetic k(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lagg;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lagg;

    return-object v0
.end method

.method static synthetic l(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m()Laim;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laim;

    return-object v0
.end method

.method static synthetic m(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic n(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/ui/window/WindowConfiguration;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 584
    new-instance v0, Lcom/snapchat/android/fragments/sendto/SendToFragment$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$2;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    .line 598
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 599
    return-void
.end method

.method static synthetic o(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/ui/window/WindowConfiguration;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 667
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 671
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->g:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->mFragmentLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 672
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 673
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->j:Z

    .line 674
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BACKGROUND_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    .line 675
    return-void
.end method

.method static synthetic p(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->g:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic q(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/ui/SendToBottomPanelView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Lcom/snapchat/android/ui/SendToBottomPanelView;

    return-object v0
.end method

.method static synthetic r(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 6

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Lcom/snapchat/android/ui/SendToBottomPanelView;

    const-string v1, "top"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->mFragmentLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v5}, Lcom/snapchat/android/ui/SendToBottomPanelView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->mFragmentLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$4;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method static synthetic s(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 6

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Lcom/snapchat/android/ui/SendToBottomPanelView;

    const-string v1, "top"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->mFragmentLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->mFragmentLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v5}, Lcom/snapchat/android/ui/SendToBottomPanelView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$3;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lagk;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 425
    instance-of v0, p1, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_7

    .line 426
    check-cast p1, Lcom/snapchat/android/model/Friend;

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lno;

    iget-boolean v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->j:Z

    iget v2, v0, Lno;->mNumTotalActions:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lno;->mNumTotalActions:I

    if-eqz v1, :cond_1

    iget v1, v0, Lno;->mNumSearchedFriends:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lno;->mNumSearchedFriends:I

    :goto_0
    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lagg;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 434
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->i()V

    .line 435
    return-void

    .line 426
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lno;->mNumBestFriends:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lno;->mNumBestFriends:I

    goto :goto_0

    :cond_2
    iget-boolean v1, p1, Lcom/snapchat/android/model/Friend;->mIsRecent:Z

    if-eqz v1, :cond_3

    iget v1, v0, Lno;->mNumRecentFriends:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lno;->mNumRecentFriends:I

    goto :goto_0

    :cond_3
    iget-boolean v1, p1, Lcom/snapchat/android/model/Friend;->mJustAdded:Z

    if-eqz v1, :cond_4

    iget v1, v0, Lno;->mNumJustAddedFriends:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lno;->mNumJustAddedFriends:I

    goto :goto_0

    :cond_4
    iget v1, v0, Lno;->mNumOtherFriends:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lno;->mNumOtherFriends:I

    goto :goto_0

    :cond_5
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c0059

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 427
    :cond_7
    instance-of v0, p1, Lajc;

    if-eqz v0, :cond_0

    .line 428
    if-eqz p2, :cond_8

    move-object v0, p1

    check-cast v0, Lajc;

    instance-of v1, v0, Laja;

    if-eqz v1, :cond_9

    invoke-static {}, Lajx;->P()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v3

    :goto_2
    if-eqz v0, :cond_8

    move-object v0, p1

    .line 429
    check-cast v0, Lajc;

    instance-of v1, v0, Laja;

    if-eqz v1, :cond_b

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040085

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a02f0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v2

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0028

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0058

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 431
    :cond_8
    :goto_3
    check-cast p1, Lajc;

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lno;

    iget v1, v0, Lno;->mNumTotalActions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lno;->mNumTotalActions:I

    iget v1, v0, Lno;->mNumStories:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lno;->mNumStories:I

    if-eqz p2, :cond_c

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 428
    :cond_9
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a:Lzs;

    iget-object v0, v0, Lajc;->mStoryId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lzs;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v3

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    .line 429
    :cond_b
    new-instance v1, Laqa;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a:Lzs;

    new-instance v4, Lcom/snapchat/android/fragments/sendto/SendToFragment$12;

    invoke-direct {v4, p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$12;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;Lajc;)V

    invoke-direct {v1, v2, v0, v3, v4}, Laqa;-><init>(Landroid/content/Context;Lajc;Lzs;Laqa$a;)V

    invoke-virtual {v1}, Laqa;->show()V

    goto :goto_3

    .line 431
    :cond_c
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public final a(Lagk;)Z
    .locals 1

    .prologue
    .line 415
    instance-of v0, p1, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 420
    :goto_0
    return v0

    .line 417
    :cond_0
    instance-of v0, p1, Lajc;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 420
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 177
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbel;

    sget-object v2, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v1, v2}, Lbel;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lno;

    const-string v1, "SELECT_FRIEND"

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    iput-object v1, v0, Lno;->mSelectFriendMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v0}, Lno;->c()V

    iget v1, v0, Lno;->mNumSelectFriendSession:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lno;->mNumSelectFriendSession:I

    .line 180
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdt;

    invoke-direct {v1, v3}, Lbdt;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 181
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbaw;

    invoke-direct {v1, v3}, Lbaw;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f()V

    .line 187
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->j:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o()V

    .line 220
    const/4 v0, 0x1

    .line 223
    :goto_0
    return v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lno;

    invoke-virtual {v0}, Lno;->d()V

    .line 223
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g_()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method protected final i()V
    .locals 5

    .prologue
    .line 542
    const-string v1, ""

    .line 543
    const-string v0, ""

    .line 544
    iget-object v2, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajc;

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lajc;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 546
    const-string v0, ", "

    move-object v2, v1

    move-object v1, v0

    .line 547
    goto :goto_0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 550
    const-string v1, ", "

    goto :goto_1

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setText(Ljava/lang/String;)V

    .line 553
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n()V

    .line 554
    return-void
.end method

.method public final l_()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->g:Landroid/view/inputmethod/InputMethodManager;

    .line 157
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lajv;->a(Landroid/content/Context;)Lajv;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->k:Lajv;

    .line 159
    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 160
    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    .line 161
    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v0, v1, :cond_0

    .line 162
    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v0, Lajk;

    .line 163
    iget-object v0, v0, Lajk;->mPostToStories:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/ArrayList;

    .line 165
    :cond_0
    const v0, 0x7f0a0193

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f0a0339

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    new-instance v0, Lagg;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Laof;

    invoke-direct {v2}, Laof;-><init>()V

    sget-object v2, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laim;

    iget-object v3, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->k:Lajv;

    iget-object v2, v2, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v5, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v2, v5, :cond_2

    new-instance v2, Laoc;

    invoke-direct {v2, v3}, Laoc;-><init>(Lahe;)V

    :goto_0
    new-instance v3, Lcom/snapchat/android/model/Friend$a;

    invoke-direct {v3}, Lcom/snapchat/android/model/Friend$a;-><init>()V

    new-instance v5, Laqt;

    invoke-direct {v5}, Laqt;-><init>()V

    new-instance v6, Lapk;

    invoke-direct {v6, v4, v7}, Lapk;-><init>(Landroid/widget/ImageView;Landroid/support/v7/widget/RecyclerView;)V

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lagg;-><init>(Landroid/content/Context;Laoe;Lcom/snapchat/android/model/Friend$a;Lagg$a;Laqt;Lapk;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lagg;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lagg;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    new-instance v0, Lcom/snapchat/android/fragments/sendto/SendToFragment$11;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$11;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lbpr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lagg;

    invoke-direct {v0, v1}, Lbpr;-><init>(Lbpq;)V

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$f;)V

    new-instance v1, Lbps;

    invoke-direct {v1, v7, v0}, Lbps;-><init>(Landroid/support/v7/widget/RecyclerView;Lbpr;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lagg;

    iput-object v0, v1, Lbps;->b:Lbps$a;

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a0338

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;

    invoke-virtual {v0, v7}, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0}, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->getOnScrollListener()Landroid/support/v7/widget/RecyclerView$j;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$j;)V

    const v0, 0x7f0a0334

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c:Landroid/view/View;

    const v0, 0x7f0a0331

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d:Landroid/view/View;

    const v0, 0x7f0a0332

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->i:Landroid/view/View;

    const v0, 0x7f0a0333

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$5;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$6;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$7;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->i:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFragment$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$8;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFragment$9;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$9;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a0337

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Lcom/snapchat/android/ui/SendToBottomPanelView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Lcom/snapchat/android/ui/SendToBottomPanelView;

    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setSendButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Lcom/snapchat/android/ui/SendToBottomPanelView;

    new-instance v1, Lasv;

    iget-object v2, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/SendToBottomPanelView;->getSendButton()Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {v1, v2}, Lasv;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setSendButtonOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n()V

    const v0, 0x7f0a032f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFragment$10;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$10;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 167
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->k:Lajv;

    invoke-static {v2, v3}, Latm;->f(Ljava/lang/String;Lajv;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    sget-object v2, Lcom/snapchat/android/model/Friend$SuggestState;->PENDING:Lcom/snapchat/android/model/Friend$SuggestState;

    iput-object v2, v0, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    goto :goto_1

    .line 165
    :cond_2
    new-instance v2, Laod;

    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Laod;-><init>(Lahe;Lajq;)V

    goto/16 :goto_0

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->i()V

    .line 173
    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->setRetainInstance(Z)V

    .line 132
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 147
    const v0, 0x7f040093

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->mFragmentLayout:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 202
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroyView()V

    .line 208
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->k:Lajv;

    invoke-virtual {v0}, Lajv;->o()Ljava/util/List;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 210
    iget-boolean v2, v0, Lcom/snapchat/android/model/Friend;->mJustAdded:Z

    if-eqz v2, :cond_0

    .line 211
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/snapchat/android/model/Friend;->mJustAdded:Z

    goto :goto_0

    .line 214
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 191
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 192
    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 193
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->a(Ljava/util/LinkedHashSet;)V

    .line 194
    sget-object v1, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laim;

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v2, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v1, v2, :cond_0

    .line 195
    check-cast v0, Lajk;

    .line 196
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/ArrayList;

    iput-object v1, v0, Lajk;->mPostToStories:Ljava/util/ArrayList;

    .line 198
    :cond_0
    return-void
.end method

.method public onPostToStoriesUpdatedEvent(Lbco;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lagg;

    iget-object v1, v0, Lagg;->c:Laoe;

    invoke-interface {v1}, Laoe;->a()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lagg;->e:Ljava/util/List;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 537
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lagg;

    invoke-virtual {v0}, Lagg;->b()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 538
    return-void
.end method

.method public onRefreshFriendExistsTask(Lbcx;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lagg;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 532
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lbcw;)V
    .locals 5
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 516
    iget-object v2, p1, Lbcw;->mFriend:Lcom/snapchat/android/model/Friend;

    .line 517
    iget-object v3, p1, Lbcw;->mAction:Lcom/snapchat/android/model/FriendAction;

    .line 518
    if-eqz v2, :cond_1

    .line 519
    sget-object v4, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    if-ne v4, v3, :cond_2

    .line 520
    iput-boolean v1, v2, Lcom/snapchat/android/model/Friend;->mJustAdded:Z

    .line 521
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lagg;

    iget-object v3, v1, Lagg;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget-object v3, v1, Lagg;->e:Ljava/util/List;

    invoke-interface {v3, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, v1, Lagg;->e:Ljava/util/List;

    iput-object v0, v1, Lagg;->f:Ljava/util/List;

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 525
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lagg;

    invoke-virtual {v0}, Lagg;->b()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 527
    :cond_1
    return-void

    .line 522
    :cond_2
    sget-object v4, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    if-ne v4, v3, :cond_0

    .line 523
    iget-object v3, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lagg;

    iget-object v4, v3, Lagg;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lagg;->f:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    if-eqz v0, :cond_0

    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    goto :goto_0
.end method
