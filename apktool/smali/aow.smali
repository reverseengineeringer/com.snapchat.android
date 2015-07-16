.class public final Laow;
.super Laos;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laow$a;
    }
.end annotation


# instance fields
.field private final e:Log;

.field private final f:Lapl;

.field private final g:Laur;

.field private final h:Ljava/lang/String;

.field private final i:Z

.field private final j:D

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Lmj;

.field private final o:Z

.field private final p:I

.field private final q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 10

    .prologue
    .line 47
    const/4 v3, 0x0

    invoke-static {}, Log;->a()Log;

    move-result-object v8

    invoke-static {}, Lapl;->a()Lapl;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v9}, Laow;-><init>(Ljava/lang/String;Ljava/lang/String;JJLog;Lapl;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    invoke-static {}, Log;->a()Log;

    move-result-object v8

    invoke-static {}, Lapl;->a()Lapl;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Laow;-><init>(Ljava/lang/String;Ljava/lang/String;JJLog;Lapl;)V

    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLog;Lapl;)V
    .locals 19

    .prologue
    .line 69
    new-instance v3, Laur;

    invoke-direct {v3}, Laur;-><init>()V

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v18}, Laow;-><init>(Log;Lapl;Laur;Ljava/lang/String;Ljava/lang/String;JJZDLjava/lang/String;Ljava/lang/String;Lmj;ZLjava/lang/String;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZDJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmj;ZLjava/lang/String;I)V
    .locals 19

    .prologue
    .line 62
    invoke-static {}, Log;->a()Log;

    move-result-object v1

    invoke-static {}, Lapl;->a()Lapl;

    move-result-object v2

    new-instance v3, Laur;

    invoke-direct {v3}, Laur;-><init>()V

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

    move/from16 v18, p15

    invoke-direct/range {v0 .. v18}, Laow;-><init>(Log;Lapl;Laur;Ljava/lang/String;Ljava/lang/String;JJZDLjava/lang/String;Ljava/lang/String;Lmj;ZLjava/lang/String;I)V

    .line 65
    return-void
.end method

.method private constructor <init>(Log;Lapl;Laur;Ljava/lang/String;Ljava/lang/String;JJZDLjava/lang/String;Ljava/lang/String;Lmj;ZLjava/lang/String;I)V
    .locals 8

    .prologue
    .line 89
    move-object v2, p0

    move-object v3, p4

    move-wide v4, p6

    move-wide/from16 v6, p8

    invoke-direct/range {v2 .. v7}, Laos;-><init>(Ljava/lang/String;JJ)V

    .line 91
    iput-object p1, p0, Laow;->e:Log;

    .line 92
    iput-object p2, p0, Laow;->f:Lapl;

    .line 93
    iput-object p3, p0, Laow;->g:Laur;

    .line 96
    iput-object p5, p0, Laow;->h:Ljava/lang/String;

    .line 97
    move/from16 v0, p10

    iput-boolean v0, p0, Laow;->i:Z

    .line 98
    move-wide/from16 v0, p11

    iput-wide v0, p0, Laow;->j:D

    .line 99
    move-object/from16 v0, p13

    iput-object v0, p0, Laow;->k:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Laow;->l:Ljava/lang/String;

    .line 101
    move-object/from16 v0, p14

    iput-object v0, p0, Laow;->m:Ljava/lang/String;

    .line 102
    move-object/from16 v0, p15

    iput-object v0, p0, Laow;->n:Lmj;

    .line 103
    move/from16 v0, p16

    iput-boolean v0, p0, Laow;->o:Z

    .line 104
    move-object/from16 v0, p17

    iput-object v0, p0, Laow;->q:Ljava/lang/String;

    .line 105
    move/from16 v0, p18

    iput v0, p0, Laow;->p:I

    .line 106
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    new-instance v0, Laow$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laow$a;-><init>(B)V

    .line 113
    iget-object v1, p0, Laow;->h:Ljava/lang/String;

    iput-object v1, v0, Laow$a;->c:Ljava/lang/String;

    .line 114
    iget-boolean v1, p0, Laow;->i:Z

    iput-boolean v1, v0, Laow$a;->f:Z

    .line 115
    iget-wide v2, p0, Laow;->j:D

    iput-wide v2, v0, Laow$a;->e:D

    .line 116
    iget-object v1, p0, Laow;->k:Ljava/lang/String;

    iput-object v1, v0, Laow$a;->a:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Laow;->l:Ljava/lang/String;

    iput-object v1, v0, Laow$a;->b:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Laow;->m:Ljava/lang/String;

    iput-object v1, v0, Laow$a;->d:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Laow;->n:Lmj;

    iput-object v1, v0, Laow$a;->h:Lmj;

    .line 120
    iget-boolean v1, p0, Laow;->o:Z

    iput-boolean v1, v0, Laow$a;->g:Z

    .line 121
    iget-object v1, p0, Laow;->g:Laur;

    const-class v2, Laow$a;

    invoke-virtual {v1, v0, v2}, Laur;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Laos;->a:Ljava/lang/String;

    iget-object v2, p0, Laow;->h:Ljava/lang/String;

    invoke-static {v0, v2}, Lzi;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/model/Snap;

    move-result-object v0

    check-cast v0, Laka;

    .line 127
    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Laka;->w()V

    .line 130
    invoke-static {v0}, Log;->a(Laka;)V

    .line 131
    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Laka;)V

    .line 147
    :cond_0
    :goto_0
    iget-object v0, p0, Laow;->d:Laph;

    invoke-virtual {v0}, Laph;->d()I

    .line 148
    return-void

    .line 133
    :cond_1
    iget-object v2, p0, Laow;->h:Ljava/lang/String;

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v0

    invoke-virtual {v0}, Lakk;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

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

    check-cast v0, Lakl;

    invoke-virtual {v0}, Lakl;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 134
    :goto_1
    if-eqz v0, :cond_4

    .line 135
    invoke-virtual {v0}, Lakl;->w()V

    .line 136
    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Laka;)V

    .line 142
    :cond_4
    iget-object v0, p0, Laow;->h:Ljava/lang/String;

    new-instance v2, Lakm;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p1, p2, v3}, Lakm;-><init>(Ljava/lang/String;JI)V

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    iget-object v0, v0, Lakp;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    iget-object v3, v2, Lakm;->mId:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-boolean v2, p0, Laow;->i:Z

    iget-wide v4, p0, Laow;->j:D

    iget-object v3, p0, Laow;->l:Ljava/lang/String;

    iget-object v6, p0, Laow;->h:Ljava/lang/String;

    iget-object v7, p0, Laow;->m:Ljava/lang/String;

    iget-object v8, p0, Laow;->n:Lmj;

    iget-boolean v9, p0, Laow;->o:Z

    iget-object v10, p0, Laow;->q:Ljava/lang/String;

    iget v11, p0, Laow;->p:I

    if-eqz v9, :cond_a

    const-string v0, "LOCAL"

    :goto_2
    if-eqz v2, :cond_b

    new-instance v1, Llw;

    invoke-direct {v1}, Llw;-><init>()V

    iput-object v3, v1, Llw;->posterId:Ljava/lang/String;

    iput-object v7, v1, Llw;->adsnapId:Ljava/lang/String;

    iput-object v8, v1, Llw;->storyType:Lmj;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Llw;->snapTime:Ljava/lang/Double;

    if-eqz v9, :cond_5

    const-string v2, "LOCAL"

    iput-object v2, v1, Llw;->geoFence:Ljava/lang/String;

    :cond_5
    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    :goto_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v11}, Lapl;->a(I)Lih;

    move-result-object v1

    new-instance v2, Lib;

    invoke-direct {v2}, Lib;-><init>()V

    iput-object v3, v2, Lib;->posterId:Ljava/lang/String;

    iput-object v10, v2, Lib;->encFilterGeofilterId:Ljava/lang/String;

    iput-object v8, v2, Lib;->storyType:Lmj;

    iput-object v1, v2, Lib;->mediaType:Lih;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iput-object v0, v2, Lib;->geoFence:Ljava/lang/String;

    :cond_6
    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_0

    .line 133
    :cond_7
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v0

    iget-object v0, v0, Lakk;->mStories:Ljava/util/Map;

    const-string v3, "my_story_ads79sdf"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->l()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    invoke-virtual {v0}, Lakl;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_1

    :cond_9
    move-object v0, v1

    goto/16 :goto_1

    :cond_a
    move-object v0, v1

    .line 143
    goto :goto_2

    :cond_b
    new-instance v1, Lme;

    invoke-direct {v1}, Lme;-><init>()V

    if-eqz v3, :cond_c

    iput-object v3, v1, Lme;->posterId:Ljava/lang/String;

    :cond_c
    if-eqz v6, :cond_d

    iput-object v6, v1, Lme;->storySnapId:Ljava/lang/String;

    :cond_d
    if-eqz v8, :cond_e

    iput-object v8, v1, Lme;->storyType:Lmj;

    :cond_e
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lme;->snapTime:Ljava/lang/Double;

    if-eqz v9, :cond_f

    const-string v2, "LOCAL"

    iput-object v2, v1, Lme;->geoFence:Ljava/lang/String;

    :cond_f
    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_3
.end method
