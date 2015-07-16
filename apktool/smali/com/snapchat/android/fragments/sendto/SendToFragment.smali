.class public Lcom/snapchat/android/fragments/sendto/SendToFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lahd$a;


# static fields
.field private static b:Laji;


# instance fields
.field public a:Laas;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Lahd;

.field private f:Landroid/os/Handler;

.field private g:Landroid/view/inputmethod/InputMethodManager;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/view/View;

.field private j:Z

.field private k:Lakp;

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
            "Lajy;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/snapchat/android/ui/SendToBottomPanelView;

.field private final o:Lof;

.field private final p:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field private final q:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

.field private final r:Lns;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->f:Landroid/os/Handler;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->j:Z

    .line 118
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/ArrayList;

    .line 122
    invoke-static {}, Lof;->a()Lof;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lof;

    .line 123
    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->p:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 124
    new-instance v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->q:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    .line 125
    new-instance v0, Lns;

    invoke-direct {v0}, Lns;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->r:Lns;

    .line 143
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    .line 144
    return-void
.end method

.method public static a(Laji;)Lcom/snapchat/android/fragments/sendto/SendToFragment;
    .locals 1
    .param p0    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 136
    sput-object p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laji;

    .line 137
    new-instance v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lof;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lof;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/sendto/SendToFragment;Laeb;)V
    .locals 26

    .prologue
    .line 99
    sget-object v2, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laji;

    invoke-static {v2}, Lns;->a(Laji;)Lhv;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laji;

    invoke-static {v3}, Lns;->b(Laji;)Lhx;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Laeb;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Laeb;->d:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Laeb;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Laeb;->u:I

    move-object/from16 v0, p1

    iget v8, v0, Laeb;->v:I

    move-object/from16 v0, p1

    iget v9, v0, Laeb;->w:I

    move-object/from16 v0, p1

    iget-object v10, v0, Laeb;->x:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v11, v0, Laeb;->y:I

    move-object/from16 v0, p1

    iget v12, v0, Laeb;->z:I

    move-object/from16 v0, p1

    iget-object v13, v0, Laeb;->A:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-object/from16 v0, p1

    iget-object v14, v0, Laeb;->B:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-object/from16 v0, p1

    iget-boolean v15, v0, Laeb;->C:Z

    move-object/from16 v0, p1

    iget-wide v0, v0, Laeb;->D:J

    move-wide/from16 v16, v0

    sget-object v18, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laji;

    move-object/from16 v0, v18

    iget-boolean v0, v0, Laji;->mHasDrawing:Z

    move/from16 v18, v0

    sget-object v19, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laji;

    move-object/from16 v0, v19

    iget-object v0, v0, Laji;->mCaptionStyleDescription:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedHashSet;->size()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sget-object v22, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laji;

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    move-wide/from16 v22, v0

    sget-object v24, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laji;

    invoke-virtual/range {v24 .. v24}, Laji;->m()Z

    move-result v24

    move-object/from16 v0, p1

    iget-object v0, v0, Laeb;->E:Llv;

    move-object/from16 v25, v0

    invoke-static/range {v19 .. v19}, Lafv;->a(Ljava/lang/String;)I

    move-result v19

    if-nez v9, :cond_f

    if-eqz v15, :cond_7

    move/from16 v0, v24

    invoke-static {v13, v0}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;Z)Lih;

    move-result-object v9

    new-instance v10, Lho;

    invoke-direct {v10}, Lho;-><init>()V

    iput-object v4, v10, Lho;->publisherId:Ljava/lang/String;

    iput-object v6, v10, Lho;->dsnapId:Ljava/lang/String;

    iput-object v5, v10, Lho;->editionId:Ljava/lang/String;

    iput-object v9, v10, Lho;->mediaType:Lih;

    invoke-static/range {v16 .. v17}, Lawd;->a(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v10, Lho;->timeViewed:Ljava/lang/Double;

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v10, Lho;->drawing:Ljava/lang/Boolean;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v10, Lho;->recipientCount:Ljava/lang/Long;

    move-object/from16 v0, v25

    iput-object v0, v10, Lho;->source:Llv;

    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_0

    move/from16 v0, v19

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v10, Lho;->caption:Ljava/lang/Long;

    :cond_0
    if-eqz v2, :cond_1

    iput-object v2, v10, Lho;->filterInfo:Lhv;

    :cond_1
    if-eqz v3, :cond_2

    iput-object v3, v10, Lho;->filterVisual:Lhx;

    :cond_2
    sget-object v2, Lih;->VIDEO:Lih;

    if-eq v9, v2, :cond_3

    sget-object v2, Lih;->VIDEO_NO_SOUND:Lih;

    if-ne v9, v2, :cond_4

    :cond_3
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v10, Lho;->snapTimeSec:Ljava/lang/Double;

    :cond_4
    if-gez v8, :cond_6

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_5

    add-int/lit8 v2, v7, 0x1

    int-to-long v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v10, Lho;->snapIndexCount:Ljava/lang/Long;

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lho;->snapIndexPos:Ljava/lang/Long;

    :cond_5
    invoke-static {v10}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    :goto_1
    return-void

    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    move/from16 v0, v24

    invoke-static {v13, v0}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;Z)Lih;

    move-result-object v9

    new-instance v10, Lhi;

    invoke-direct {v10}, Lhi;-><init>()V

    iput-object v4, v10, Lhi;->publisherId:Ljava/lang/String;

    iput-object v6, v10, Lhi;->dsnapId:Ljava/lang/String;

    iput-object v5, v10, Lhi;->editionId:Ljava/lang/String;

    iput-object v9, v10, Lhi;->mediaType:Lih;

    invoke-static {v14}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lih;

    move-result-object v4

    iput-object v4, v10, Lhi;->longformType:Lih;

    invoke-static/range {v16 .. v17}, Lawd;->a(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v10, Lhi;->timeViewed:Ljava/lang/Double;

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v10, Lhi;->drawing:Ljava/lang/Boolean;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v10, Lhi;->recipientCount:Ljava/lang/Long;

    move-object/from16 v0, v25

    iput-object v0, v10, Lhi;->source:Llv;

    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_8

    move/from16 v0, v19

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v10, Lhi;->caption:Ljava/lang/Long;

    :cond_8
    if-eqz v2, :cond_9

    iput-object v2, v10, Lhi;->filterInfo:Lhv;

    :cond_9
    if-eqz v3, :cond_a

    iput-object v3, v10, Lhi;->filterVisual:Lhx;

    :cond_a
    sget-object v2, Lih;->VIDEO:Lih;

    if-eq v9, v2, :cond_b

    sget-object v2, Lih;->VIDEO_NO_SOUND:Lih;

    if-ne v9, v2, :cond_c

    :cond_b
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v10, Lhi;->snapTimeSec:Ljava/lang/Double;

    :cond_c
    if-gez v8, :cond_e

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_d

    add-int/lit8 v2, v7, 0x1

    int-to-long v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v10, Lhi;->snapIndexCount:Ljava/lang/Long;

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lhi;->snapIndexPos:Ljava/lang/Long;

    :cond_d
    invoke-static {v10}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_1

    :cond_e
    const/4 v2, 0x0

    goto :goto_2

    :cond_f
    if-eqz v15, :cond_17

    move/from16 v0, v24

    invoke-static {v13, v0}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;Z)Lih;

    move-result-object v6

    new-instance v9, Lha;

    invoke-direct {v9}, Lha;-><init>()V

    iput-object v4, v9, Lha;->publisherId:Ljava/lang/String;

    iput-object v10, v9, Lha;->adsnapId:Ljava/lang/String;

    iput-object v5, v9, Lha;->editionId:Ljava/lang/String;

    iput-object v6, v9, Lha;->mediaType:Lih;

    invoke-static/range {v16 .. v17}, Lawd;->a(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v9, Lha;->timeViewed:Ljava/lang/Double;

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v9, Lha;->drawing:Ljava/lang/Boolean;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v9, Lha;->recipientCount:Ljava/lang/Long;

    move-object/from16 v0, v25

    iput-object v0, v9, Lha;->source:Llv;

    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_10

    move/from16 v0, v19

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v9, Lha;->caption:Ljava/lang/Long;

    :cond_10
    if-eqz v2, :cond_11

    iput-object v2, v9, Lha;->filterInfo:Lhv;

    :cond_11
    if-eqz v3, :cond_12

    iput-object v3, v9, Lha;->filterVisual:Lhx;

    :cond_12
    sget-object v2, Lih;->VIDEO:Lih;

    if-eq v6, v2, :cond_13

    sget-object v2, Lih;->VIDEO_NO_SOUND:Lih;

    if-ne v6, v2, :cond_14

    :cond_13
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v9, Lha;->snapTimeSec:Ljava/lang/Double;

    :cond_14
    if-gez v8, :cond_16

    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_15

    add-int/lit8 v2, v7, 0x1

    int-to-long v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v9, Lha;->snapIndexCount:Ljava/lang/Long;

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v9, Lha;->snapIndexPos:Ljava/lang/Long;

    int-to-long v2, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v9, Lha;->adIndexPos:Ljava/lang/Long;

    int-to-long v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v9, Lha;->adIndexCount:Ljava/lang/Long;

    :cond_15
    invoke-static {v9}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_1

    :cond_16
    const/4 v2, 0x0

    goto :goto_3

    :cond_17
    move/from16 v0, v24

    invoke-static {v13, v0}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;Z)Lih;

    move-result-object v6

    new-instance v9, Lgw;

    invoke-direct {v9}, Lgw;-><init>()V

    iput-object v4, v9, Lgw;->publisherId:Ljava/lang/String;

    iput-object v10, v9, Lgw;->adsnapId:Ljava/lang/String;

    iput-object v5, v9, Lgw;->editionId:Ljava/lang/String;

    iput-object v6, v9, Lgw;->mediaType:Lih;

    invoke-static/range {v16 .. v17}, Lawd;->a(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v9, Lgw;->timeViewed:Ljava/lang/Double;

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v9, Lgw;->drawing:Ljava/lang/Boolean;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v9, Lgw;->recipientCount:Ljava/lang/Long;

    invoke-static {v14}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lih;

    move-result-object v4

    iput-object v4, v9, Lgw;->longformType:Lih;

    move-object/from16 v0, v25

    iput-object v0, v9, Lgw;->source:Llv;

    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_18

    move/from16 v0, v19

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v9, Lgw;->caption:Ljava/lang/Long;

    :cond_18
    if-eqz v2, :cond_19

    iput-object v2, v9, Lgw;->filterInfo:Lhv;

    :cond_19
    if-eqz v3, :cond_1a

    iput-object v3, v9, Lgw;->filterVisual:Lhx;

    :cond_1a
    sget-object v2, Lih;->IMAGE:Lih;

    if-eq v6, v2, :cond_1b

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v9, Lgw;->snapTimeSec:Ljava/lang/Double;

    :cond_1b
    if-gez v8, :cond_1d

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_1c

    add-int/lit8 v2, v7, 0x1

    int-to-long v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v9, Lgw;->snapIndexCount:Ljava/lang/Long;

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v9, Lgw;->snapIndexPos:Ljava/lang/Long;

    int-to-long v2, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v9, Lgw;->adIndexPos:Ljava/lang/Long;

    int-to-long v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v9, Lgw;->adIndexCount:Ljava/lang/Long;

    :cond_1c
    invoke-static {v9}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_1

    :cond_1d
    const/4 v2, 0x0

    goto :goto_4
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/sendto/SendToFragment;Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V
    .locals 0

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/LinkedHashSet;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lakp;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->k:Lakp;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 7

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laji;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaExtras:Lajv;

    check-cast v0, Laeb;

    new-instance v2, Lbcg;

    iget v3, v0, Laeb;->o:I

    iget v4, v0, Laeb;->p:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sending-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laji;

    iget-object v6, v6, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Lbcg;-><init>(Ljava/lang/CharSequence;IILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c010f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lbcg;

    iget v4, v0, Laeb;->o:I

    iget v0, v0, Laeb;->p:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sent-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laji;

    iget-object v6, v6, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v4, v0, v5}, Lbcg;-><init>(Ljava/lang/CharSequence;IILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lbcg;->delayed:Z

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/analytics/NetworkAnalytics;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->p:Lcom/snapchat/android/analytics/NetworkAnalytics;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->j:Z

    return v0
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o()V

    return-void
.end method

.method static synthetic j(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
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

.method static synthetic k(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lahd;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lahd;

    return-object v0
.end method

.method static synthetic l(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m()Laji;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laji;

    return-object v0
.end method

.method static synthetic m(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic n(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/ui/window/WindowConfiguration;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 587
    new-instance v0, Lcom/snapchat/android/fragments/sendto/SendToFragment$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$2;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    .line 601
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 602
    return-void
.end method

.method static synthetic o(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/ui/window/WindowConfiguration;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 670
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 674
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->g:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->mFragmentLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 675
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 676
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->j:Z

    .line 677
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BACKGROUND_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    .line 678
    return-void
.end method

.method static synthetic p(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->g:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic q(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/ui/SendToBottomPanelView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Lcom/snapchat/android/ui/SendToBottomPanelView;

    return-object v0
.end method

.method static synthetic r(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 6

    .prologue
    .line 99
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
    .line 99
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
.method public final a(Lahh;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 427
    instance-of v0, p1, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_7

    .line 428
    check-cast p1, Lcom/snapchat/android/model/Friend;

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lof;

    iget-boolean v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->j:Z

    iget v2, v0, Lof;->mNumTotalActions:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lof;->mNumTotalActions:I

    if-eqz v1, :cond_1

    iget v1, v0, Lof;->mNumSearchedFriends:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lof;->mNumSearchedFriends:I

    :goto_0
    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lahd;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 436
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->i()V

    .line 437
    return-void

    .line 428
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lof;->mNumBestFriends:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lof;->mNumBestFriends:I

    goto :goto_0

    :cond_2
    iget-boolean v1, p1, Lcom/snapchat/android/model/Friend;->mIsRecent:Z

    if-eqz v1, :cond_3

    iget v1, v0, Lof;->mNumRecentFriends:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lof;->mNumRecentFriends:I

    goto :goto_0

    :cond_3
    iget-boolean v1, p1, Lcom/snapchat/android/model/Friend;->mJustAdded:Z

    if-eqz v1, :cond_4

    iget v1, v0, Lof;->mNumJustAddedFriends:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lof;->mNumJustAddedFriends:I

    goto :goto_0

    :cond_4
    iget v1, v0, Lof;->mNumOtherFriends:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lof;->mNumOtherFriends:I

    goto :goto_0

    :cond_5
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

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

    .line 429
    :cond_7
    instance-of v0, p1, Lajy;

    if-eqz v0, :cond_0

    .line 430
    if-eqz p2, :cond_8

    move-object v0, p1

    check-cast v0, Lajy;

    instance-of v1, v0, Lajw;

    if-eqz v1, :cond_9

    invoke-static {}, Lakr;->P()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v3

    :goto_2
    if-eqz v0, :cond_8

    move-object v0, p1

    .line 431
    check-cast v0, Lajy;

    instance-of v1, v0, Lajw;

    if-eqz v1, :cond_b

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040087

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a02ef

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

    .line 433
    :cond_8
    :goto_3
    check-cast p1, Lajy;

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lof;

    iget v1, v0, Lof;->mNumTotalActions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lof;->mNumTotalActions:I

    iget v1, v0, Lof;->mNumStories:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lof;->mNumStories:I

    if-eqz p2, :cond_c

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 430
    :cond_9
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a:Laas;

    iget-object v0, v0, Lajy;->mStoryId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Laas;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v3

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    .line 431
    :cond_b
    new-instance v1, Laqz;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a:Laas;

    new-instance v4, Lcom/snapchat/android/fragments/sendto/SendToFragment$12;

    invoke-direct {v4, p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$12;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;Lajy;)V

    invoke-direct {v1, v2, v0, v3, v4}, Laqz;-><init>(Landroid/content/Context;Lajy;Laas;Laqz$a;)V

    invoke-virtual {v1}, Laqz;->show()V

    goto :goto_3

    .line 433
    :cond_c
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public final a(Lahh;)Z
    .locals 1

    .prologue
    .line 417
    instance-of v0, p1, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 422
    :goto_0
    return v0

    .line 419
    :cond_0
    instance-of v0, p1, Lajy;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 422
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 178
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbfk;

    sget-object v2, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v1, v2}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 179
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbet;

    invoke-direct {v1, v3}, Lbet;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 180
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbx;

    invoke-direct {v1, v3}, Lbbx;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 182
    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laji;

    invoke-static {v0}, Lavr;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lof;

    const-string v2, "SELECT_FRIEND"

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "type"

    invoke-static {v0}, Lof;->b(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    iput-object v2, v1, Lof;->mSelectFriendMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v1}, Lof;->c()V

    iget v2, v1, Lof;->mNumSelectFriendSession:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lof;->mNumSelectFriendSession:I

    iget-object v2, v1, Lof;->mPrepareSnapMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lof;->mPrepareSnapMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "type"

    invoke-static {v0}, Lof;->b(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v2, "session_number"

    iget v3, v1, Lof;->mNumSelectFriendSession:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    const/4 v0, 0x0

    iput-object v0, v1, Lof;->mPrepareSnapMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 184
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f()V

    .line 189
    return-void
.end method

.method public final f_()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->j:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o()V

    .line 222
    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lof;

    invoke-virtual {v0}, Lof;->d()V

    .line 225
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final i()V
    .locals 5

    .prologue
    .line 544
    const-string v1, ""

    .line 545
    const-string v0, ""

    .line 546
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

    check-cast v0, Lajy;

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lajy;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 548
    const-string v0, ", "

    move-object v2, v1

    move-object v1, v0

    .line 549
    goto :goto_0

    .line 550
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

    .line 551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 552
    const-string v1, ", "

    goto :goto_1

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setText(Ljava/lang/String;)V

    .line 555
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n()V

    .line 556
    return-void
.end method

.method public final j_()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->g:Landroid/view/inputmethod/InputMethodManager;

    .line 158
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lakp;->a(Landroid/content/Context;)Lakp;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->k:Lakp;

    .line 160
    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laji;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 161
    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    .line 162
    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laji;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v0, v1, :cond_0

    .line 163
    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laji;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v0, Lakg;

    .line 164
    iget-object v0, v0, Lakg;->mPostToStories:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/ArrayList;

    .line 166
    :cond_0
    const v0, 0x7f0a0193

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f0a0338

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    new-instance v0, Lahd;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laji;

    iget-object v3, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->k:Lakp;

    iget-object v2, v2, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v5, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v2, v5, :cond_2

    new-instance v2, Laoz;

    invoke-direct {v2, v3}, Laoz;-><init>(Laib;)V

    :goto_0
    new-instance v3, Lcom/snapchat/android/model/Friend$a;

    invoke-direct {v3}, Lcom/snapchat/android/model/Friend$a;-><init>()V

    new-instance v5, Lars;

    invoke-direct {v5}, Lars;-><init>()V

    new-instance v6, Laqj;

    invoke-direct {v6, v4, v7}, Laqj;-><init>(Landroid/widget/ImageView;Landroid/support/v7/widget/RecyclerView;)V

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lahd;-><init>(Landroid/content/Context;Lapb;Lcom/snapchat/android/model/Friend$a;Lahd$a;Lars;Laqj;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lahd;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lahd;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    new-instance v0, Lcom/snapchat/android/fragments/sendto/SendToFragment$11;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$11;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lbqs;

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lahd;

    invoke-direct {v0, v1}, Lbqs;-><init>(Lbqr;)V

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$f;)V

    new-instance v1, Lbqt;

    invoke-direct {v1, v7, v0}, Lbqt;-><init>(Landroid/support/v7/widget/RecyclerView;Lbqs;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lahd;

    iput-object v0, v1, Lbqt;->b:Lbqt$a;

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a0337

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;

    invoke-virtual {v0, v7}, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0}, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->getOnScrollListener()Landroid/support/v7/widget/RecyclerView$j;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$j;)V

    const v0, 0x7f0a0333

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c:Landroid/view/View;

    const v0, 0x7f0a0330

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d:Landroid/view/View;

    const v0, 0x7f0a0331

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->i:Landroid/view/View;

    const v0, 0x7f0a0332

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

    const v0, 0x7f0a0336

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Lcom/snapchat/android/ui/SendToBottomPanelView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Lcom/snapchat/android/ui/SendToBottomPanelView;

    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setSendButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Lcom/snapchat/android/ui/SendToBottomPanelView;

    new-instance v1, Latu;

    iget-object v2, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/SendToBottomPanelView;->getSendButton()Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {v1, v2}, Latu;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setSendButtonOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n()V

    const v0, 0x7f0a032e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFragment$10;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$10;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
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

    .line 168
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->k:Lakp;

    invoke-static {v2, v3}, Lauk;->f(Ljava/lang/String;Lakp;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    sget-object v2, Lcom/snapchat/android/model/Friend$SuggestState;->PENDING:Lcom/snapchat/android/model/Friend$SuggestState;

    iput-object v2, v0, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    goto :goto_1

    .line 166
    :cond_2
    new-instance v2, Lapa;

    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lapa;-><init>(Laib;Lakk;)V

    goto/16 :goto_0

    .line 173
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

    .line 174
    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->setRetainInstance(Z)V

    .line 133
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 148
    const v0, 0x7f040095

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->mFragmentLayout:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 204
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroyView()V

    .line 210
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->k:Lakp;

    invoke-virtual {v0}, Lakp;->o()Ljava/util/List;

    move-result-object v0

    .line 211
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

    .line 212
    iget-boolean v2, v0, Lcom/snapchat/android/model/Friend;->mJustAdded:Z

    if-eqz v2, :cond_0

    .line 213
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/snapchat/android/model/Friend;->mJustAdded:Z

    goto :goto_0

    .line 216
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 193
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 194
    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laji;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 195
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->a(Ljava/util/LinkedHashSet;)V

    .line 196
    sget-object v1, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Laji;

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v2, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v1, v2, :cond_0

    .line 197
    check-cast v0, Lakg;

    .line 198
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/ArrayList;

    iput-object v1, v0, Lakg;->mPostToStories:Ljava/util/ArrayList;

    .line 200
    :cond_0
    return-void
.end method

.method public onPostToStoriesUpdatedEvent(Lbdo;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lahd;

    iget-object v1, v0, Lahd;->c:Lapb;

    invoke-interface {v1}, Lapb;->a()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lahd;->e:Ljava/util/List;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 539
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lahd;

    invoke-virtual {v0}, Lahd;->b()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 540
    return-void
.end method

.method public onRefreshFriendExistsTask(Lbdx;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lahd;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 534
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lbdw;)V
    .locals 5
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 518
    iget-object v2, p1, Lbdw;->mFriend:Lcom/snapchat/android/model/Friend;

    .line 519
    iget-object v3, p1, Lbdw;->mAction:Lcom/snapchat/android/model/FriendAction;

    .line 520
    if-eqz v2, :cond_1

    .line 521
    sget-object v4, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    if-ne v4, v3, :cond_2

    .line 522
    iput-boolean v1, v2, Lcom/snapchat/android/model/Friend;->mJustAdded:Z

    .line 523
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lahd;

    iget-object v3, v1, Lahd;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget-object v3, v1, Lahd;->e:Ljava/util/List;

    invoke-interface {v3, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, v1, Lahd;->e:Ljava/util/List;

    iput-object v0, v1, Lahd;->f:Ljava/util/List;

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 527
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lahd;

    invoke-virtual {v0}, Lahd;->b()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 529
    :cond_1
    return-void

    .line 524
    :cond_2
    sget-object v4, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    if-ne v4, v3, :cond_0

    .line 525
    iget-object v3, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lahd;

    iget-object v4, v3, Lahd;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lahd;->f:Ljava/util/List;

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
