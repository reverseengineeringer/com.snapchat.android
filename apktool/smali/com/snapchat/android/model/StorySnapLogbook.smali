.class public final Lcom/snapchat/android/model/StorySnapLogbook;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lahb;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/StorySnapLogbook$ActionState;,
        Lcom/snapchat/android/model/StorySnapLogbook$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lahb;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/snapchat/android/model/StorySnapLogbook;",
        ">;"
    }
.end annotation


# instance fields
.field public transient mActionState:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

.field public transient mChangedListener:Lcom/snapchat/android/model/StorySnapLogbook$a;

.field public transient mIsDeletingAllowed:Z

.field public transient mStoryId:Ljava/lang/String;

.field public mStorySnap:Lajr;

.field public mStorySnapExtra:Lbjh;

.field public mStorySnapNotes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbjj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laim;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    new-instance v0, Lajr;

    invoke-direct {v0, p1, p2, p3}, Lajr;-><init>(Laim;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v1}, Lcom/snapchat/android/model/StorySnapLogbook;-><init>(Lajr;Ljava/util/List;Lbjh;)V

    .line 73
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v0, Lajk;

    .line 74
    iget-object v0, v0, Lajk;->mPostToStories:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajc;

    iget-object v0, v0, Lajc;->mStoryId:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStoryId:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>(Lajr;Ljava/util/List;Lbjh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajr;",
            "Ljava/util/List",
            "<",
            "Lbjj;",
            ">;",
            "Lbjh;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->READY:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mActionState:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mIsDeletingAllowed:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mChangedListener:Lcom/snapchat/android/model/StorySnapLogbook$a;

    .line 62
    iput-object p1, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    .line 63
    iput-object p2, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnapNotes:Ljava/util/List;

    .line 64
    iput-object p3, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnapExtra:Lbjh;

    .line 65
    return-void
.end method

.method public constructor <init>(Lbio;)V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lajr;

    invoke-virtual {p1}, Lbio;->a()Lbjg;

    move-result-object v1

    invoke-direct {v0, v1}, Lajr;-><init>(Lbjg;)V

    const/4 v1, 0x0

    invoke-virtual {p1}, Lbio;->b()Lbjh;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/model/StorySnapLogbook;-><init>(Lajr;Ljava/util/List;Lbjh;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lbji;)V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lajr;

    invoke-virtual {p1}, Lbji;->a()Lbjg;

    move-result-object v1

    invoke-direct {v0, v1}, Lajr;-><init>(Lbjg;)V

    invoke-virtual {p1}, Lbji;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lbji;->b()Lbjh;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/model/StorySnapLogbook;-><init>(Lajr;Ljava/util/List;Lbjh;)V

    .line 55
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V
    .locals 1

    .prologue
    .line 195
    iput-object p1, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mActionState:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    .line 197
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mChangedListener:Lcom/snapchat/android/model/StorySnapLogbook$a;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mChangedListener:Lcom/snapchat/android/model/StorySnapLogbook$a;

    invoke-interface {v0, p0}, Lcom/snapchat/android/model/StorySnapLogbook$a;->b(Lcom/snapchat/android/model/StorySnapLogbook;)V

    .line 200
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mIsDeletingAllowed:Z

    .line 225
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mChangedListener:Lcom/snapchat/android/model/StorySnapLogbook$a;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mChangedListener:Lcom/snapchat/android/model/StorySnapLogbook$a;

    invoke-interface {v0, p0}, Lcom/snapchat/android/model/StorySnapLogbook$a;->b(Lcom/snapchat/android/model/StorySnapLogbook;)V

    .line 228
    :cond_0
    return-void
.end method

.method public final c()Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->MY_STORY_SNAP:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 29
    check-cast p1, Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    iget-object v1, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-virtual {v0, v1}, Lajr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 160
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    .line 162
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;

    if-nez v0, :cond_1

    .line 163
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :cond_1
    check-cast p1, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    iget-object v0, v0, Lajr;->mClientId:Ljava/lang/String;

    iget-object v1, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    iget-object v1, v1, Lajr;->mClientId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    iget-object v0, v0, Lajr;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    iget-object v0, v0, Lajr;->mClientId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    return v0
.end method

.method public final i()Lcom/snapchat/android/stories/StoriesSection;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/snapchat/android/stories/StoriesSection;->ME:Lcom/snapchat/android/stories/StoriesSection;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 132
    const-string v0, ""

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public final m()Lauz;
    .locals 5

    .prologue
    .line 151
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-virtual {v0}, Lajr;->aF()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    iget-boolean v0, v0, Lajr;->mFailed:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY:Lcom/snapchat/android/stories/StoriesThumbnailType;

    .line 154
    :goto_0
    new-instance v1, Lauz;

    const/4 v2, 0x1

    new-array v2, v2, [Lajr;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    aput-object v4, v2, v3

    invoke-static {v2}, Ldk;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    iget-object v4, v4, Lajr;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&storySnapLogbook"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lauz;-><init>(Lcom/snapchat/android/stories/StoriesThumbnailType;Ljava/util/List;Ljava/lang/String;)V

    return-object v1

    .line 151
    :cond_1
    sget-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->ALL_SNAPS:Lcom/snapchat/android/stories/StoriesThumbnailType;

    goto :goto_0
.end method
