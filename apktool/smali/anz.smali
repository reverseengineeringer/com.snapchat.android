.class public final Lanz;
.super Lanv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanz$a;
    }
.end annotation


# instance fields
.field private final e:Lnp;

.field private final f:Laop;

.field private final g:Latt;

.field private final h:Ljava/lang/String;

.field private final i:Z

.field private final j:D

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Llr;

.field private final o:Z

.field private final p:Ljava/lang/String;

.field private final q:I

.field private final r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 10

    .prologue
    .line 48
    const/4 v3, 0x0

    invoke-static {}, Lnp;->a()Lnp;

    move-result-object v8

    invoke-static {}, Laop;->a()Laop;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v9}, Lanz;-><init>(Ljava/lang/String;Ljava/lang/String;JJLnp;Laop;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    invoke-static {}, Lnp;->a()Lnp;

    move-result-object v8

    invoke-static {}, Laop;->a()Laop;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lanz;-><init>(Ljava/lang/String;Ljava/lang/String;JJLnp;Laop;)V

    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLnp;Laop;)V
    .locals 21

    .prologue
    .line 71
    new-instance v3, Latt;

    invoke-direct {v3}, Latt;-><init>()V

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v19}, Lanz;-><init>(Lnp;Laop;Latt;Ljava/lang/String;Ljava/lang/String;JJZDLjava/lang/String;Ljava/lang/String;Llr;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZDJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Llr;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 21

    .prologue
    .line 64
    invoke-static {}, Lnp;->a()Lnp;

    move-result-object v1

    invoke-static {}, Laop;->a()Laop;

    move-result-object v2

    new-instance v3, Latt;

    invoke-direct {v3}, Latt;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v4, p10

    move-object/from16 v5, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p2

    move-wide/from16 v11, p3

    move-object/from16 v13, p9

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move/from16 v19, p16

    invoke-direct/range {v0 .. v19}, Lanz;-><init>(Lnp;Laop;Latt;Ljava/lang/String;Ljava/lang/String;JJZDLjava/lang/String;Ljava/lang/String;Llr;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 67
    return-void
.end method

.method private constructor <init>(Lnp;Laop;Latt;Ljava/lang/String;Ljava/lang/String;JJZDLjava/lang/String;Ljava/lang/String;Llr;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 92
    move-object v2, p0

    move-object v3, p4

    move-wide v4, p6

    move-wide/from16 v6, p8

    invoke-direct/range {v2 .. v7}, Lanv;-><init>(Ljava/lang/String;JJ)V

    .line 94
    iput-object p1, p0, Lanz;->e:Lnp;

    .line 95
    iput-object p2, p0, Lanz;->f:Laop;

    .line 96
    iput-object p3, p0, Lanz;->g:Latt;

    .line 99
    iput-object p5, p0, Lanz;->h:Ljava/lang/String;

    .line 100
    move/from16 v0, p10

    iput-boolean v0, p0, Lanz;->i:Z

    .line 101
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lanz;->j:D

    .line 102
    move-object/from16 v0, p13

    iput-object v0, p0, Lanz;->k:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lanz;->l:Ljava/lang/String;

    .line 104
    move-object/from16 v0, p14

    iput-object v0, p0, Lanz;->m:Ljava/lang/String;

    .line 105
    move-object/from16 v0, p15

    iput-object v0, p0, Lanz;->n:Llr;

    .line 106
    move/from16 v0, p16

    iput-boolean v0, p0, Lanz;->o:Z

    .line 107
    move-object/from16 v0, p17

    iput-object v0, p0, Lanz;->p:Ljava/lang/String;

    .line 108
    move-object/from16 v0, p18

    iput-object v0, p0, Lanz;->r:Ljava/lang/String;

    .line 109
    move/from16 v0, p19

    iput v0, p0, Lanz;->q:I

    .line 110
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    new-instance v0, Lanz$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanz$a;-><init>(B)V

    .line 117
    iget-object v1, p0, Lanz;->h:Ljava/lang/String;

    iput-object v1, v0, Lanz$a;->c:Ljava/lang/String;

    .line 118
    iget-boolean v1, p0, Lanz;->i:Z

    iput-boolean v1, v0, Lanz$a;->g:Z

    .line 119
    iget-wide v2, p0, Lanz;->j:D

    iput-wide v2, v0, Lanz$a;->f:D

    .line 120
    iget-object v1, p0, Lanz;->k:Ljava/lang/String;

    iput-object v1, v0, Lanz$a;->a:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lanz;->l:Ljava/lang/String;

    iput-object v1, v0, Lanz$a;->b:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lanz;->m:Ljava/lang/String;

    iput-object v1, v0, Lanz$a;->d:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lanz;->n:Llr;

    iput-object v1, v0, Lanz$a;->i:Llr;

    .line 124
    iget-boolean v1, p0, Lanz;->o:Z

    iput-boolean v1, v0, Lanz$a;->h:Z

    .line 125
    iget-object v1, p0, Lanz;->p:Ljava/lang/String;

    iput-object v1, v0, Lanz$a;->e:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lanz;->g:Latt;

    const-class v2, Lanz$a;

    invoke-virtual {v1, v0, v2}, Latt;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lanv;->a:Ljava/lang/String;

    iget-object v2, p0, Lanz;->h:Ljava/lang/String;

    invoke-static {v0, v2}, Lym;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/model/Snap;

    move-result-object v0

    check-cast v0, Laje;

    .line 133
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Laje;->v()V

    .line 136
    invoke-static {v0}, Lnp;->a(Laje;)V

    .line 137
    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Laje;)V

    .line 154
    :cond_0
    :goto_0
    iget-object v0, p0, Lanz;->d:Laol;

    invoke-virtual {v0}, Laol;->d()I

    .line 155
    return-void

    .line 139
    :cond_1
    iget-object v2, p0, Lanz;->h:Ljava/lang/String;

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    invoke-virtual {v0}, Lajq;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    invoke-virtual {v0}, Lajr;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 140
    :goto_1
    if-eqz v0, :cond_4

    .line 141
    invoke-virtual {v0}, Lajr;->v()V

    .line 142
    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Laje;)V

    .line 148
    :cond_4
    iget-object v0, p0, Lanz;->h:Ljava/lang/String;

    new-instance v2, Lajs;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p1, p2, v3}, Lajs;-><init>(Ljava/lang/String;JI)V

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    iget-object v0, v0, Lajv;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    iget-object v3, v2, Lajs;->mId:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-boolean v2, p0, Lanz;->i:Z

    iget-wide v4, p0, Lanz;->j:D

    iget-object v3, p0, Lanz;->l:Ljava/lang/String;

    iget-object v6, p0, Lanz;->h:Ljava/lang/String;

    iget-object v7, p0, Lanz;->m:Ljava/lang/String;

    iget-object v8, p0, Lanz;->n:Llr;

    iget-boolean v9, p0, Lanz;->o:Z

    iget-object v10, p0, Lanz;->p:Ljava/lang/String;

    iget-object v11, p0, Lanz;->r:Ljava/lang/String;

    iget v12, p0, Lanz;->q:I

    if-eqz v9, :cond_b

    const-string v0, "LOCAL"

    :goto_2
    if-eqz v2, :cond_c

    new-instance v1, Lle;

    invoke-direct {v1}, Lle;-><init>()V

    iput-object v3, v1, Lle;->posterId:Ljava/lang/String;

    iput-object v7, v1, Lle;->adsnapId:Ljava/lang/String;

    iput-object v8, v1, Lle;->storyType:Llr;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lle;->snapTime:Ljava/lang/Double;

    if-eqz v9, :cond_5

    const-string v2, "LOCAL"

    iput-object v2, v1, Lle;->geoFence:Ljava/lang/String;

    :cond_5
    if-eqz v10, :cond_6

    iput-object v10, v1, Lle;->sponsor:Ljava/lang/String;

    :cond_6
    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    :goto_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v12}, Laop;->a(I)Lhy;

    move-result-object v1

    new-instance v2, Lhs;

    invoke-direct {v2}, Lhs;-><init>()V

    iput-object v3, v2, Lhs;->posterId:Ljava/lang/String;

    iput-object v11, v2, Lhs;->encFilterGeofilterId:Ljava/lang/String;

    iput-object v8, v2, Lhs;->storyType:Llr;

    iput-object v1, v2, Lhs;->mediaType:Lhy;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iput-object v0, v2, Lhs;->geoFence:Ljava/lang/String;

    :cond_7
    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto/16 :goto_0

    .line 139
    :cond_8
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    iget-object v0, v0, Lajq;->mStories:Ljava/util/Map;

    const-string v3, "my_story_ads79sdf"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->l()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    invoke-virtual {v0}, Lajr;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_1

    :cond_a
    move-object v0, v1

    goto/16 :goto_1

    :cond_b
    move-object v0, v1

    .line 149
    goto :goto_2

    :cond_c
    new-instance v1, Llm;

    invoke-direct {v1}, Llm;-><init>()V

    if-eqz v3, :cond_d

    iput-object v3, v1, Llm;->posterId:Ljava/lang/String;

    :cond_d
    if-eqz v6, :cond_e

    iput-object v6, v1, Llm;->storySnapId:Ljava/lang/String;

    :cond_e
    if-eqz v8, :cond_f

    iput-object v8, v1, Llm;->storyType:Llr;

    :cond_f
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Llm;->snapTime:Ljava/lang/Double;

    if-eqz v9, :cond_10

    const-string v2, "LOCAL"

    iput-object v2, v1, Llm;->geoFence:Ljava/lang/String;

    :cond_10
    if-eqz v10, :cond_11

    iput-object v10, v1, Llm;->sponsor:Ljava/lang/String;

    :cond_11
    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto/16 :goto_3
.end method
