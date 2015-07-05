.class public final Lnp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnp$1;
    }
.end annotation


# static fields
.field private static final GEO_FENCE_LOCAL:Ljava/lang/String; = "LOCAL"

.field private static final sInstance:Lnp;


# instance fields
.field private final mScAnalyticsEventEngine:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lnp;

    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    move-result-object v1

    invoke-direct {v0, v1}, Lnp;-><init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;)V

    sput-object v0, Lnp;->sInstance:Lnp;

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
    iput-object p1, p0, Lnp;->mScAnalyticsEventEngine:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    .line 62
    return-void
.end method

.method private static a(I)Lhy;
    .locals 5
    .param p0    # I
        .annotation build Lcgb;
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
    sget-object v0, Lhy;->IMAGE:Lhy;

    .line 179
    :goto_0
    return-object v0

    .line 177
    :pswitch_1
    sget-object v0, Lhy;->VIDEO_NO_SOUND:Lhy;

    goto :goto_0

    .line 179
    :pswitch_2
    sget-object v0, Lhy;->VIDEO:Lhy;

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a()Lnp;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lnp;->sInstance:Lnp;

    return-object v0
.end method

.method public static a(Laim;)V
    .locals 3
    .param p0    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 65
    invoke-virtual {p0}, Laim;->b()V

    .line 68
    new-instance v2, Lgd;

    invoke-direct {v2}, Lgd;-><init>()V

    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFrontFacingSnap:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lgd;->camera:Ljava/lang/Long;

    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFlashOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lgd;->flash:Ljava/lang/Boolean;

    invoke-static {p0}, Lnp;->e(Laim;)Llc;

    move-result-object v0

    iput-object v0, v2, Lgd;->source:Llc;

    invoke-virtual {p0}, Laim;->h()I

    move-result v0

    invoke-static {v0}, Lnp;->a(I)Lhy;

    move-result-object v0

    iput-object v0, v2, Lgd;->mediaType:Lhy;

    iget-wide v0, p0, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v2, Lgd;->snapTimeSec:Ljava/lang/Double;

    .line 69
    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 70
    return-void

    .line 68
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Laje;)V
    .locals 4
    .param p0    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 86
    new-instance v0, Lgg;

    invoke-direct {v0}, Lgg;-><init>()V

    invoke-virtual {p0}, Laje;->ag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgg;->snapId:Ljava/lang/String;

    invoke-virtual {p0}, Laje;->ak()I

    move-result v1

    invoke-static {v1}, Lnp;->a(I)Lhy;

    move-result-object v1

    iput-object v1, v0, Lgg;->mediaType:Lhy;

    invoke-virtual {p0}, Laje;->F()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lgg;->snapTimeSec:Ljava/lang/Double;

    .line 88
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 89
    return-void
.end method

.method public static b(Laim;)V
    .locals 12
    .param p0    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 73
    invoke-virtual {p0}, Laim;->c()V

    .line 77
    new-instance v9, Lgh;

    invoke-direct {v9}, Lgh;-><init>()V

    invoke-static {p0}, Lnp;->f(Laim;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lgh;->caption:Ljava/lang/Long;

    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFrontFacingSnap:Z

    if-eqz v0, :cond_8

    move-wide v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lgh;->camera:Ljava/lang/Long;

    iget-boolean v0, p0, Laim;->mHasDrawing:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lgh;->drawing:Ljava/lang/Boolean;

    iget-wide v0, p0, Laim;->mViewTimeSec:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v9, Lgh;->viewTimeSec:Ljava/lang/Double;

    new-instance v0, Lnb;

    invoke-direct {v0}, Lnb;-><init>()V

    invoke-static {p0}, Lnb;->a(Laim;)Lhm;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, v9, Lgh;->filterInfo:Lhm;

    :cond_0
    invoke-static {p0}, Lnb;->b(Laim;)Lho;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, v9, Lgh;->filterVisual:Lho;

    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFlashOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lgh;->flash:Ljava/lang/Boolean;

    invoke-static {p0}, Lnp;->e(Laim;)Llc;

    move-result-object v0

    iput-object v0, v9, Lgh;->source:Llc;

    iget-wide v0, p0, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v9, Lgh;->snapTimeSec:Ljava/lang/Double;

    invoke-virtual {p0}, Laim;->h()I

    move-result v0

    invoke-static {v0}, Lnp;->a(I)Lhy;

    move-result-object v0

    iput-object v0, v9, Lgh;->mediaType:Lhy;

    iget-object v1, p0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    int-to-long v10, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lgh;->recipientCount:Ljava/lang/Long;

    instance-of v0, v1, Lajk;

    if-eqz v0, :cond_c

    move-object v0, v1

    check-cast v0, Lajk;

    iget-object v10, v0, Lajk;->mPostToStories:Ljava/util/ArrayList;

    if-eqz v10, :cond_c

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajc;

    iget-object v0, v0, Lajc;->mStoryId:Ljava/lang/String;

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

    iput-object v0, v9, Lgh;->withMyStory:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lgh;->withOurStory:Ljava/lang/Boolean;

    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsReply:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lgh;->reply:Ljava/lang/Boolean;

    iget-boolean v0, v1, Lcom/snapchat/android/model/MediaMailingMetadata;->mSavedInGallery:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lgh;->withGallery:Ljava/lang/Boolean;

    .line 78
    invoke-static {v9}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 79
    invoke-virtual {p0}, Laim;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 80
    new-instance v1, Lhp;

    invoke-direct {v1}, Lhp;-><init>()V

    invoke-static {p0}, Lnp;->f(Laim;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lhp;->caption:Ljava/lang/Long;

    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFrontFacingSnap:Z

    if-eqz v0, :cond_a

    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lhp;->camera:Ljava/lang/Long;

    iget-boolean v0, p0, Laim;->mHasDrawing:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lhp;->drawing:Ljava/lang/Boolean;

    iget-wide v2, p0, Laim;->mViewTimeSec:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lhp;->viewTimeSec:Ljava/lang/Double;

    new-instance v0, Lnb;

    invoke-direct {v0}, Lnb;-><init>()V

    invoke-static {p0}, Lnb;->a(Laim;)Lhm;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-object v0, v1, Lhp;->filterInfo:Lhm;

    :cond_5
    invoke-static {p0}, Lnb;->b(Laim;)Lho;

    move-result-object v0

    if-eqz v0, :cond_6

    iput-object v0, v1, Lhp;->filterVisual:Lho;

    :cond_6
    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFlashOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lhp;->flash:Ljava/lang/Boolean;

    invoke-static {p0}, Lnp;->e(Laim;)Llc;

    move-result-object v0

    iput-object v0, v1, Lhp;->source:Llc;

    iget-wide v2, p0, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lhp;->snapTimeSec:Ljava/lang/Double;

    invoke-virtual {p0}, Laim;->h()I

    move-result v0

    invoke-static {v0}, Lnp;->a(I)Lhy;

    move-result-object v0

    iput-object v0, v1, Lhp;->mediaType:Lhy;

    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lhp;->recipientCount:Ljava/lang/Long;

    iget-boolean v2, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mSavedInGallery:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lhp;->withGallery:Ljava/lang/Boolean;

    invoke-virtual {p0}, Laim;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhp;->filterGeofilterId:Ljava/lang/String;

    iget-object v2, p0, Laim;->mGeofilterSwipeMetaData:Lnc;

    iget-wide v2, v2, Lnc;->mGeofilterIndexCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lhp;->filterIndexCount:Ljava/lang/Long;

    iget-object v2, p0, Laim;->mGeofilterSwipeMetaData:Lnc;

    iget-wide v2, v2, Lnc;->mGeofilterIndexPos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lhp;->filterIndexPos:Ljava/lang/Long;

    check-cast v0, Lajk;

    iget-object v0, v0, Lajk;->mPostToStories:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lhp;->storyPostCount:Ljava/lang/Long;

    .line 81
    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lls;)V

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

.method public static b(Laje;)V
    .locals 4
    .param p0    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 131
    new-instance v0, Lgf;

    invoke-direct {v0}, Lgf;-><init>()V

    invoke-virtual {p0}, Laje;->ag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgf;->snapId:Ljava/lang/String;

    invoke-virtual {p0}, Laje;->ak()I

    move-result v1

    invoke-static {v1}, Lnp;->a(I)Lhy;

    move-result-object v1

    iput-object v1, v0, Lgf;->mediaType:Lhy;

    invoke-virtual {p0}, Laje;->F()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lgf;->snapTimeSec:Ljava/lang/Double;

    .line 133
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 134
    return-void
.end method

.method public static c(Laim;)V
    .locals 13
    .param p0    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 92
    invoke-virtual {p0}, Laim;->c()V

    .line 96
    iget-object v1, p0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 97
    instance-of v0, v1, Lajk;

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
    check-cast v0, Lajk;

    iget-object v6, v0, Lajk;->mPostToStories:Ljava/util/ArrayList;

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

    check-cast v0, Lajc;

    .line 110
    iget-object v1, v0, Lajc;->mStoryId:Ljava/lang/String;

    const-string v3, "my_story_ads79sdf"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Llr;->MY:Llr;

    .line 116
    :goto_2
    sget-object v3, Llr;->MY:Llr;

    if-ne v1, v3, :cond_6

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v3

    .line 118
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v10, v4

    iget-boolean v9, v0, Lajc;->mIsLocalStory:Z

    new-instance v12, Llk;

    invoke-direct {v12}, Llk;-><init>()V

    invoke-static {p0}, Lnp;->f(Laim;)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v12, Llk;->caption:Ljava/lang/Long;

    iget-boolean v4, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFrontFacingSnap:Z

    if-eqz v4, :cond_7

    const-wide/16 v4, 0x1

    :goto_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v12, Llk;->camera:Ljava/lang/Long;

    iget-boolean v4, p0, Laim;->mHasDrawing:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v12, Llk;->drawing:Ljava/lang/Boolean;

    new-instance v4, Lnb;

    invoke-direct {v4}, Lnb;-><init>()V

    invoke-static {p0}, Lnb;->a(Laim;)Lhm;

    move-result-object v4

    iput-object v4, v12, Llk;->filterInfo:Lhm;

    invoke-static {p0}, Lnb;->b(Laim;)Lho;

    move-result-object v4

    iput-object v4, v12, Llk;->filterVisual:Lho;

    iget-boolean v4, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFlashOn:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v12, Llk;->flash:Ljava/lang/Boolean;

    invoke-static {p0}, Lnp;->e(Laim;)Llc;

    move-result-object v4

    iput-object v4, v12, Llk;->source:Llc;

    invoke-virtual {p0}, Laim;->h()I

    move-result v4

    invoke-static {v4}, Lnp;->a(I)Lhy;

    move-result-object v4

    iput-object v4, v12, Llk;->mediaType:Lhy;

    iget-wide v4, p0, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v12, Llk;->snapTime:Ljava/lang/Double;

    iget-wide v4, p0, Laim;->mViewTimeSec:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v12, Llk;->view_time_sec:Ljava/lang/Double;

    iput-object v3, v12, Llk;->posterId:Ljava/lang/String;

    iput-object v1, v12, Llk;->storyType:Llr;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v12, Llk;->storyPostCount:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v12, Llk;->withSnap:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v12, Llk;->withGallery:Ljava/lang/Boolean;

    if-eqz v9, :cond_2

    const-string v3, "LOCAL"

    iput-object v3, v12, Llk;->geoFence:Ljava/lang/String;

    .line 121
    :cond_2
    invoke-static {v12}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 122
    invoke-virtual {p0}, Laim;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    iget-boolean v0, v0, Lajc;->mIsLocalStory:Z

    new-instance v3, Lhr;

    invoke-direct {v3}, Lhr;-><init>()V

    invoke-static {p0}, Lnp;->f(Laim;)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lhr;->caption:Ljava/lang/Long;

    iget-boolean v4, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFrontFacingSnap:Z

    if-eqz v4, :cond_8

    const-wide/16 v4, 0x1

    :goto_5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lhr;->camera:Ljava/lang/Long;

    iget-boolean v4, p0, Laim;->mHasDrawing:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lhr;->drawing:Ljava/lang/Boolean;

    new-instance v4, Lnb;

    invoke-direct {v4}, Lnb;-><init>()V

    invoke-static {p0}, Lnb;->a(Laim;)Lhm;

    move-result-object v4

    iput-object v4, v3, Lhr;->filterInfo:Lhm;

    invoke-static {p0}, Lnb;->b(Laim;)Lho;

    move-result-object v4

    iput-object v4, v3, Lhr;->filterVisual:Lho;

    iget-boolean v4, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFlashOn:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lhr;->flash:Ljava/lang/Boolean;

    invoke-static {p0}, Lnp;->e(Laim;)Llc;

    move-result-object v4

    iput-object v4, v3, Lhr;->source:Llc;

    invoke-virtual {p0}, Laim;->h()I

    move-result v4

    invoke-static {v4}, Lnp;->a(I)Lhy;

    move-result-object v4

    iput-object v4, v3, Lhr;->mediaType:Lhy;

    iget-wide v4, p0, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lhr;->snapTimeSec:Ljava/lang/Double;

    iget-wide v4, p0, Laim;->mViewTimeSec:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lhr;->viewTimeSec:Ljava/lang/Double;

    iput-object v1, v3, Lhr;->storyType:Llr;

    if-eqz v0, :cond_3

    const-string v0, "LOCAL"

    iput-object v0, v3, Lhr;->geoFence:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0}, Laim;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lhr;->filterGeofilterId:Ljava/lang/String;

    iget-object v0, p0, Laim;->mGeofilterSwipeMetaData:Lnc;

    iget-wide v0, v0, Lnc;->mGeofilterIndexCount:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lhr;->filterIndexCount:Ljava/lang/Long;

    iget-object v0, p0, Laim;->mGeofilterSwipeMetaData:Lnc;

    iget-wide v0, v0, Lnc;->mGeofilterIndexPos:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lhr;->filterIndexPos:Ljava/lang/Long;

    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lhr;->recipientCount:Ljava/lang/Long;

    iget-boolean v0, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mSavedInGallery:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lhr;->withGallery:Ljava/lang/Boolean;

    .line 125
    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lls;)V

    goto/16 :goto_1

    .line 106
    :cond_4
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_0

    .line 110
    :cond_5
    sget-object v1, Llr;->OUR:Llr;

    goto/16 :goto_2

    .line 116
    :cond_6
    iget-object v3, v0, Lajc;->mStoryId:Ljava/lang/String;

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

.method public static c(Laje;)V
    .locals 8
    .param p0    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 137
    new-instance v1, Lgi;

    invoke-direct {v1}, Lgi;-><init>()V

    invoke-virtual {p0}, Laje;->ag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lgi;->snapId:Ljava/lang/String;

    invoke-virtual {p0}, Laje;->ak()I

    move-result v0

    invoke-static {v0}, Lnp;->a(I)Lhy;

    move-result-object v0

    iput-object v0, v1, Lgi;->mediaType:Lhy;

    invoke-virtual {p0}, Laje;->F()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lgi;->snapTimeSec:Ljava/lang/Double;

    invoke-virtual {p0}, Laje;->y()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lgi;->viewTimeSec:Ljava/lang/Double;

    cmpl-double v0, v4, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lgi;->fullView:Ljava/lang/Boolean;

    iget-boolean v0, p0, Laje;->mIsViewedFromStart:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lgi;->initialView:Ljava/lang/Boolean;

    invoke-virtual {p0}, Laje;->E()J

    move-result-wide v2

    invoke-virtual {p0}, Laje;->W()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lgi;->ackTimeSec:Ljava/lang/Double;

    .line 139
    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 140
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Laim;)V
    .locals 8
    .param p0    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 161
    invoke-virtual {p0}, Laim;->h()I

    move-result v1

    .line 162
    iget-object v0, p0, Laim;->mGeofilterSwipeMetaData:Lnc;

    iget-object v0, v0, Lnc;->mData:Ljava/util/Map;

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

    check-cast v0, Lnd;

    .line 163
    new-instance v3, Lhq;

    invoke-direct {v3}, Lhq;-><init>()V

    iget-object v4, v0, Lnd;->filterGeofilterId:Ljava/lang/String;

    iput-object v4, v3, Lhq;->filterGeofilterId:Ljava/lang/String;

    invoke-virtual {v0}, Lnd;->a()V

    iget-object v4, v0, Lnd;->viewTimeStopwatch:Lcn;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5}, Lcn;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    long-to-double v4, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lhq;->viewTimeSec:Ljava/lang/Double;

    iget-wide v4, v0, Lnd;->filterIndexPos:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lhq;->filterIndexPos:Ljava/lang/Long;

    iget-wide v4, v0, Lnd;->filterIndexCount:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lhq;->filterIndexCount:Ljava/lang/Long;

    iget-wide v4, v0, Lnd;->filterCount:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lhq;->filterCount:Ljava/lang/Long;

    invoke-static {v1}, Lnp;->a(I)Lhy;

    move-result-object v0

    iput-object v0, v3, Lhq;->mediaType:Lhy;

    .line 164
    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lls;)V

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method

.method public static d(Laje;)V
    .locals 4
    .param p0    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 143
    new-instance v0, Lgj;

    invoke-direct {v0}, Lgj;-><init>()V

    .line 145
    invoke-virtual {p0}, Laje;->ak()I

    move-result v1

    invoke-static {v1}, Lnp;->a(I)Lhy;

    move-result-object v1

    iput-object v1, v0, Lgj;->mediaType:Lhy;

    .line 146
    invoke-virtual {p0}, Laje;->F()D

    move-result-wide v2

    .line 147
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lgj;->snapTimeSec:Ljava/lang/Double;

    .line 148
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 149
    return-void
.end method

.method private static e(Laim;)Llc;
    .locals 2
    .param p0    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 189
    sget-object v0, Lnp$1;->$SwitchMap$com$snapchat$android$model$Mediabryo$SnapType:[I

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
    sget-object v0, Llc;->FEED:Llc;

    goto :goto_0

    .line 193
    :pswitch_1
    sget-object v0, Llc;->DISCOVER:Llc;

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static e(Laje;)V
    .locals 4
    .param p0    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 152
    new-instance v0, Lge;

    invoke-direct {v0}, Lge;-><init>()V

    .line 154
    invoke-virtual {p0}, Laje;->ak()I

    move-result v1

    invoke-static {v1}, Lnp;->a(I)Lhy;

    move-result-object v1

    iput-object v1, v0, Lge;->mediaType:Lhy;

    .line 155
    invoke-virtual {p0}, Laje;->F()D

    move-result-wide v2

    .line 156
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lge;->snapTimeSec:Ljava/lang/Double;

    .line 157
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 158
    return-void
.end method

.method private static f(Laim;)Ljava/lang/Long;
    .locals 5
    .param p0    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Laim;->mCaptionAnalyticData:Lapo;

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
    sget-object v1, Lnp$1;->$SwitchMap$com$snapchat$android$ui$caption$CaptionTypeEnums:[I

    iget-object v2, v0, Lapo;->a:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

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

    iget-object v0, v0, Lapo;->a:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

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
