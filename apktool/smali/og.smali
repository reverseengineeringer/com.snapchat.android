.class public final Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Log$1;
    }
.end annotation


# static fields
.field private static final GEO_FENCE_LOCAL:Ljava/lang/String; = "LOCAL"

.field private static final sInstance:Log;


# instance fields
.field private final mScAnalyticsEventEngine:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Log;

    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    move-result-object v1

    invoke-direct {v0, v1}, Log;-><init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;)V

    sput-object v0, Log;->sInstance:Log;

    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;)V
    .locals 0
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Log;->mScAnalyticsEventEngine:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    .line 62
    return-void
.end method

.method private static a(I)Lih;
    .locals 5
    .param p0    # I
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 173
    packed-switch p0, :pswitch_data_0

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid media type: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :pswitch_0
    sget-object v0, Lih;->IMAGE:Lih;

    .line 179
    :goto_0
    return-object v0

    .line 177
    :pswitch_1
    sget-object v0, Lih;->VIDEO_NO_SOUND:Lih;

    goto :goto_0

    .line 179
    :pswitch_2
    sget-object v0, Lih;->VIDEO:Lih;

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a()Log;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Log;->sInstance:Log;

    return-object v0
.end method

.method public static a(Laji;)V
    .locals 3
    .param p0    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 65
    invoke-virtual {p0}, Laji;->b()V

    .line 68
    new-instance v2, Lgm;

    invoke-direct {v2}, Lgm;-><init>()V

    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFrontFacingSnap:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lgm;->camera:Ljava/lang/Long;

    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFlashOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lgm;->flash:Ljava/lang/Boolean;

    invoke-static {p0}, Log;->e(Laji;)Llu;

    move-result-object v0

    iput-object v0, v2, Lgm;->source:Llu;

    invoke-virtual {p0}, Laji;->h()I

    move-result v0

    invoke-static {v0}, Log;->a(I)Lih;

    move-result-object v0

    iput-object v0, v2, Lgm;->mediaType:Lih;

    iget-wide v0, p0, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v2, Lgm;->snapTimeSec:Ljava/lang/Double;

    .line 69
    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 70
    return-void

    .line 68
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Laka;)V
    .locals 4
    .param p0    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 86
    new-instance v0, Lgp;

    invoke-direct {v0}, Lgp;-><init>()V

    invoke-virtual {p0}, Laka;->ae()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgp;->snapId:Ljava/lang/String;

    invoke-virtual {p0}, Laka;->ai()I

    move-result v1

    invoke-static {v1}, Log;->a(I)Lih;

    move-result-object v1

    iput-object v1, v0, Lgp;->mediaType:Lih;

    invoke-virtual {p0}, Laka;->G()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lgp;->snapTimeSec:Ljava/lang/Double;

    .line 88
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 89
    return-void
.end method

.method public static b(Laji;)V
    .locals 12
    .param p0    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 73
    invoke-virtual {p0}, Laji;->c()V

    .line 77
    new-instance v9, Lgq;

    invoke-direct {v9}, Lgq;-><init>()V

    invoke-static {p0}, Log;->f(Laji;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lgq;->caption:Ljava/lang/Long;

    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFrontFacingSnap:Z

    if-eqz v0, :cond_8

    move-wide v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lgq;->camera:Ljava/lang/Long;

    iget-boolean v0, p0, Laji;->mHasDrawing:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lgq;->drawing:Ljava/lang/Boolean;

    iget-wide v0, p0, Laji;->mViewTimeSec:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v9, Lgq;->viewTimeSec:Ljava/lang/Double;

    invoke-static {p0}, Lns;->a(Laji;)Lhv;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, v9, Lgq;->filterInfo:Lhv;

    :cond_0
    invoke-static {p0}, Lns;->b(Laji;)Lhx;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, v9, Lgq;->filterVisual:Lhx;

    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFlashOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lgq;->flash:Ljava/lang/Boolean;

    invoke-static {p0}, Log;->e(Laji;)Llu;

    move-result-object v0

    iput-object v0, v9, Lgq;->source:Llu;

    iget-wide v0, p0, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v9, Lgq;->snapTimeSec:Ljava/lang/Double;

    invoke-virtual {p0}, Laji;->h()I

    move-result v0

    invoke-static {v0}, Log;->a(I)Lih;

    move-result-object v0

    iput-object v0, v9, Lgq;->mediaType:Lih;

    iget-object v1, p0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    int-to-long v10, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lgq;->recipientCount:Ljava/lang/Long;

    instance-of v0, v1, Lakg;

    if-eqz v0, :cond_c

    move-object v0, v1

    check-cast v0, Lakg;

    iget-object v10, v0, Lakg;->mPostToStories:Ljava/util/ArrayList;

    if-eqz v10, :cond_c

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajy;

    iget-object v0, v0, Lajy;->mStoryId:Ljava/lang/String;

    const-string v11, "my_story_ads79sdf"

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v8, v6

    :goto_1
    if-eqz v8, :cond_3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v6, :cond_4

    :cond_3
    if-nez v8, :cond_9

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    :cond_4
    move v0, v6

    :goto_2
    move v7, v0

    move v0, v8

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lgq;->withMyStory:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lgq;->withOurStory:Ljava/lang/Boolean;

    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsReply:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lgq;->reply:Ljava/lang/Boolean;

    iget-boolean v0, v1, Lcom/snapchat/android/model/MediaMailingMetadata;->mSavedInGallery:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lgq;->withGallery:Ljava/lang/Boolean;

    .line 78
    invoke-static {v9}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 79
    invoke-virtual {p0}, Laji;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 80
    new-instance v1, Lhy;

    invoke-direct {v1}, Lhy;-><init>()V

    invoke-static {p0}, Log;->f(Laji;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lhy;->caption:Ljava/lang/Long;

    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFrontFacingSnap:Z

    if-eqz v0, :cond_a

    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lhy;->camera:Ljava/lang/Long;

    iget-boolean v0, p0, Laji;->mHasDrawing:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lhy;->drawing:Ljava/lang/Boolean;

    iget-wide v2, p0, Laji;->mViewTimeSec:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lhy;->viewTimeSec:Ljava/lang/Double;

    invoke-static {p0}, Lns;->a(Laji;)Lhv;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-object v0, v1, Lhy;->filterInfo:Lhv;

    :cond_5
    invoke-static {p0}, Lns;->b(Laji;)Lhx;

    move-result-object v0

    if-eqz v0, :cond_6

    iput-object v0, v1, Lhy;->filterVisual:Lhx;

    :cond_6
    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFlashOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lhy;->flash:Ljava/lang/Boolean;

    invoke-static {p0}, Log;->e(Laji;)Llu;

    move-result-object v0

    iput-object v0, v1, Lhy;->source:Llu;

    iget-wide v2, p0, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lhy;->snapTimeSec:Ljava/lang/Double;

    invoke-virtual {p0}, Laji;->h()I

    move-result v0

    invoke-static {v0}, Log;->a(I)Lih;

    move-result-object v0

    iput-object v0, v1, Lhy;->mediaType:Lih;

    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lhy;->recipientCount:Ljava/lang/Long;

    iget-boolean v2, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mSavedInGallery:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lhy;->withGallery:Ljava/lang/Boolean;

    invoke-virtual {p0}, Laji;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhy;->filterGeofilterId:Ljava/lang/String;

    iget-object v2, p0, Laji;->mGeofilterSwipeMetaData:Lnt;

    iget-wide v2, v2, Lnt;->mGeofilterIndexCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lhy;->filterIndexCount:Ljava/lang/Long;

    iget-object v2, p0, Laji;->mGeofilterSwipeMetaData:Lnt;

    iget-wide v2, v2, Lnt;->mGeofilterIndexPos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lhy;->filterIndexPos:Ljava/lang/Long;

    check-cast v0, Lakg;

    iget-object v0, v0, Lakg;->mPostToStories:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lhy;->storyPostCount:Ljava/lang/Long;

    .line 81
    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lmk;)V

    .line 83
    :cond_7
    return-void

    :cond_8
    move-wide v0, v4

    .line 77
    goto/16 :goto_0

    :cond_9
    move v0, v7

    goto/16 :goto_2

    :cond_a
    move-wide v2, v4

    .line 80
    goto/16 :goto_4

    :cond_b
    move v8, v7

    goto/16 :goto_1

    :cond_c
    move v0, v7

    goto/16 :goto_3
.end method

.method public static b(Laka;)V
    .locals 4
    .param p0    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 131
    new-instance v0, Lgo;

    invoke-direct {v0}, Lgo;-><init>()V

    invoke-virtual {p0}, Laka;->ae()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgo;->snapId:Ljava/lang/String;

    invoke-virtual {p0}, Laka;->ai()I

    move-result v1

    invoke-static {v1}, Log;->a(I)Lih;

    move-result-object v1

    iput-object v1, v0, Lgo;->mediaType:Lih;

    invoke-virtual {p0}, Laka;->G()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lgo;->snapTimeSec:Ljava/lang/Double;

    .line 133
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 134
    return-void
.end method

.method public static c(Laji;)V
    .locals 13
    .param p0    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 92
    invoke-virtual {p0}, Laji;->c()V

    .line 96
    iget-object v1, p0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 97
    instance-of v0, v1, Lakg;

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected SnapMailingMetadata class, Actual class: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, v1

    .line 105
    check-cast v0, Lakg;

    iget-object v6, v0, Lakg;->mPostToStories:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    move v2, v0

    .line 107
    :goto_0
    iget-boolean v7, v1, Lcom/snapchat/android/model/MediaMailingMetadata;->mSavedInGallery:Z

    .line 109
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajy;

    .line 110
    iget-object v1, v0, Lajy;->mStoryId:Ljava/lang/String;

    const-string v3, "my_story_ads79sdf"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lmj;->MY:Lmj;

    .line 116
    :goto_2
    sget-object v3, Lmj;->MY:Lmj;

    if-ne v1, v3, :cond_6

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v3

    .line 118
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v10, v4

    iget-boolean v9, v0, Lajy;->mIsLocalStory:Z

    new-instance v12, Lmc;

    invoke-direct {v12}, Lmc;-><init>()V

    invoke-static {p0}, Log;->f(Laji;)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v12, Lmc;->caption:Ljava/lang/Long;

    iget-boolean v4, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFrontFacingSnap:Z

    if-eqz v4, :cond_7

    const-wide/16 v4, 0x1

    :goto_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v12, Lmc;->camera:Ljava/lang/Long;

    iget-boolean v4, p0, Laji;->mHasDrawing:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v12, Lmc;->drawing:Ljava/lang/Boolean;

    invoke-static {p0}, Lns;->a(Laji;)Lhv;

    move-result-object v4

    iput-object v4, v12, Lmc;->filterInfo:Lhv;

    invoke-static {p0}, Lns;->b(Laji;)Lhx;

    move-result-object v4

    iput-object v4, v12, Lmc;->filterVisual:Lhx;

    iget-boolean v4, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFlashOn:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v12, Lmc;->flash:Ljava/lang/Boolean;

    invoke-static {p0}, Log;->e(Laji;)Llu;

    move-result-object v4

    iput-object v4, v12, Lmc;->source:Llu;

    invoke-virtual {p0}, Laji;->h()I

    move-result v4

    invoke-static {v4}, Log;->a(I)Lih;

    move-result-object v4

    iput-object v4, v12, Lmc;->mediaType:Lih;

    iget-wide v4, p0, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v12, Lmc;->snapTime:Ljava/lang/Double;

    iget-wide v4, p0, Laji;->mViewTimeSec:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v12, Lmc;->view_time_sec:Ljava/lang/Double;

    iput-object v3, v12, Lmc;->posterId:Ljava/lang/String;

    iput-object v1, v12, Lmc;->storyType:Lmj;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v12, Lmc;->storyPostCount:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v12, Lmc;->withSnap:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v12, Lmc;->withGallery:Ljava/lang/Boolean;

    if-eqz v9, :cond_2

    const-string v3, "LOCAL"

    iput-object v3, v12, Lmc;->geoFence:Ljava/lang/String;

    .line 121
    :cond_2
    invoke-static {v12}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 122
    invoke-virtual {p0}, Laji;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    iget-boolean v0, v0, Lajy;->mIsLocalStory:Z

    new-instance v3, Lia;

    invoke-direct {v3}, Lia;-><init>()V

    invoke-static {p0}, Log;->f(Laji;)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lia;->caption:Ljava/lang/Long;

    iget-boolean v4, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFrontFacingSnap:Z

    if-eqz v4, :cond_8

    const-wide/16 v4, 0x1

    :goto_5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lia;->camera:Ljava/lang/Long;

    iget-boolean v4, p0, Laji;->mHasDrawing:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lia;->drawing:Ljava/lang/Boolean;

    invoke-static {p0}, Lns;->a(Laji;)Lhv;

    move-result-object v4

    iput-object v4, v3, Lia;->filterInfo:Lhv;

    invoke-static {p0}, Lns;->b(Laji;)Lhx;

    move-result-object v4

    iput-object v4, v3, Lia;->filterVisual:Lhx;

    iget-boolean v4, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFlashOn:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lia;->flash:Ljava/lang/Boolean;

    invoke-static {p0}, Log;->e(Laji;)Llu;

    move-result-object v4

    iput-object v4, v3, Lia;->source:Llu;

    invoke-virtual {p0}, Laji;->h()I

    move-result v4

    invoke-static {v4}, Log;->a(I)Lih;

    move-result-object v4

    iput-object v4, v3, Lia;->mediaType:Lih;

    iget-wide v4, p0, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lia;->snapTimeSec:Ljava/lang/Double;

    iget-wide v4, p0, Laji;->mViewTimeSec:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lia;->viewTimeSec:Ljava/lang/Double;

    iput-object v1, v3, Lia;->storyType:Lmj;

    if-eqz v0, :cond_3

    const-string v0, "LOCAL"

    iput-object v0, v3, Lia;->geoFence:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0}, Laji;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lia;->filterGeofilterId:Ljava/lang/String;

    iget-object v0, p0, Laji;->mGeofilterSwipeMetaData:Lnt;

    iget-wide v0, v0, Lnt;->mGeofilterIndexCount:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lia;->filterIndexCount:Ljava/lang/Long;

    iget-object v0, p0, Laji;->mGeofilterSwipeMetaData:Lnt;

    iget-wide v0, v0, Lnt;->mGeofilterIndexPos:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lia;->filterIndexPos:Ljava/lang/Long;

    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lia;->recipientCount:Ljava/lang/Long;

    iget-boolean v0, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mSavedInGallery:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lia;->withGallery:Ljava/lang/Boolean;

    .line 125
    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lmk;)V

    goto/16 :goto_1

    .line 106
    :cond_4
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_0

    .line 110
    :cond_5
    sget-object v1, Lmj;->OUR:Lmj;

    goto/16 :goto_2

    .line 116
    :cond_6
    iget-object v3, v0, Lajy;->mStoryId:Ljava/lang/String;

    goto/16 :goto_3

    .line 118
    :cond_7
    const-wide/16 v4, 0x0

    goto/16 :goto_4

    .line 123
    :cond_8
    const-wide/16 v4, 0x0

    goto/16 :goto_5

    .line 128
    :cond_9
    return-void
.end method

.method public static c(Laka;)V
    .locals 8
    .param p0    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 137
    new-instance v1, Lgr;

    invoke-direct {v1}, Lgr;-><init>()V

    invoke-virtual {p0}, Laka;->ae()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lgr;->snapId:Ljava/lang/String;

    invoke-virtual {p0}, Laka;->ai()I

    move-result v0

    invoke-static {v0}, Log;->a(I)Lih;

    move-result-object v0

    iput-object v0, v1, Lgr;->mediaType:Lih;

    invoke-virtual {p0}, Laka;->G()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lgr;->snapTimeSec:Ljava/lang/Double;

    invoke-virtual {p0}, Laka;->z()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lgr;->viewTimeSec:Ljava/lang/Double;

    cmpl-double v0, v4, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lgr;->fullView:Ljava/lang/Boolean;

    iget-boolean v0, p0, Laka;->mIsViewedFromStart:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lgr;->initialView:Ljava/lang/Boolean;

    invoke-virtual {p0}, Laka;->F()J

    move-result-wide v2

    invoke-virtual {p0}, Laka;->U()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lgr;->ackTimeSec:Ljava/lang/Double;

    .line 139
    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 140
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Laji;)V
    .locals 8
    .param p0    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 161
    invoke-virtual {p0}, Laji;->h()I

    move-result v1

    .line 162
    iget-object v0, p0, Laji;->mGeofilterSwipeMetaData:Lnt;

    iget-object v0, v0, Lnt;->mData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu;

    .line 163
    new-instance v3, Lhz;

    invoke-direct {v3}, Lhz;-><init>()V

    iget-object v4, v0, Lnu;->filterGeofilterId:Ljava/lang/String;

    iput-object v4, v3, Lhz;->filterGeofilterId:Ljava/lang/String;

    invoke-virtual {v0}, Lnu;->a()V

    iget-object v4, v0, Lnu;->viewTimeStopwatch:Lcs;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5}, Lcs;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    long-to-double v4, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lhz;->viewTimeSec:Ljava/lang/Double;

    iget-wide v4, v0, Lnu;->filterIndexPos:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lhz;->filterIndexPos:Ljava/lang/Long;

    iget-wide v4, v0, Lnu;->filterIndexCount:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lhz;->filterIndexCount:Ljava/lang/Long;

    iget-wide v4, v0, Lnu;->filterCount:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lhz;->filterCount:Ljava/lang/Long;

    invoke-static {v1}, Log;->a(I)Lih;

    move-result-object v0

    iput-object v0, v3, Lhz;->mediaType:Lih;

    .line 164
    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lmk;)V

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method

.method public static d(Laka;)V
    .locals 4
    .param p0    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 143
    new-instance v0, Lgs;

    invoke-direct {v0}, Lgs;-><init>()V

    .line 145
    invoke-virtual {p0}, Laka;->ai()I

    move-result v1

    invoke-static {v1}, Log;->a(I)Lih;

    move-result-object v1

    iput-object v1, v0, Lgs;->mediaType:Lih;

    .line 146
    invoke-virtual {p0}, Laka;->G()D

    move-result-wide v2

    .line 147
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lgs;->snapTimeSec:Ljava/lang/Double;

    .line 148
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 149
    return-void
.end method

.method private static e(Laji;)Llu;
    .locals 2
    .param p0    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 189
    sget-object v0, Log$1;->$SwitchMap$com$snapchat$android$model$Mediabryo$SnapType:[I

    iget-object v1, p0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Mediabryo$SnapType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 195
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 191
    :pswitch_0
    sget-object v0, Llu;->FEED:Llu;

    goto :goto_0

    .line 193
    :pswitch_1
    sget-object v0, Llu;->DISCOVER:Llu;

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static e(Laka;)V
    .locals 4
    .param p0    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 152
    new-instance v0, Lgn;

    invoke-direct {v0}, Lgn;-><init>()V

    .line 154
    invoke-virtual {p0}, Laka;->ai()I

    move-result v1

    invoke-static {v1}, Log;->a(I)Lih;

    move-result-object v1

    iput-object v1, v0, Lgn;->mediaType:Lih;

    .line 155
    invoke-virtual {p0}, Laka;->G()D

    move-result-wide v2

    .line 156
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lgn;->snapTimeSec:Ljava/lang/Double;

    .line 157
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 158
    return-void
.end method

.method private static f(Laji;)Ljava/lang/Long;
    .locals 5
    .param p0    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Laji;->mCaptionAnalyticData:Laqn;

    .line 202
    if-nez v0, :cond_0

    .line 204
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    .line 206
    :cond_0
    sget-object v1, Log$1;->$SwitchMap$com$snapchat$android$ui$caption$CaptionTypeEnums:[I

    iget-object v2, v0, Laqn;->a:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 215
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid caption type: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, v0, Laqn;->a:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :pswitch_0
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 210
    :pswitch_1
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 212
    :pswitch_2
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
