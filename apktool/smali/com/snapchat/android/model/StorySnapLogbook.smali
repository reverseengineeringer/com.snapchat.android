.class public final Lcom/snapchat/android/model/StorySnapLogbook;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lahy;
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
        "Lahy;",
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

.field public mStorySnap:Lakl;

.field public mStorySnapExtra:Lbki;

.field public mStorySnapNotes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbkk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laji;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    new-instance v0, Lakl;

    invoke-direct {v0, p1, p2, p3}, Lakl;-><init>(Laji;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v1}, Lcom/snapchat/android/model/StorySnapLogbook;-><init>(Lakl;Ljava/util/List;Lbki;)V

    .line 73
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v0, Lakg;

    .line 74
    iget-object v0, v0, Lakg;->mPostToStories:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajy;

    iget-object v0, v0, Lajy;->mStoryId:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStoryId:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>(Lakl;Ljava/util/List;Lbki;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakl;",
            "Ljava/util/List",
            "<",
            "Lbkk;",
            ">;",
            "Lbki;",
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
    iput-object p1, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    .line 63
    iput-object p2, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnapNotes:Ljava/util/List;

    .line 64
    iput-object p3, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnapExtra:Lbki;

    .line 65
    return-void
.end method

.method public constructor <init>(Lbjo;)V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lakl;

    invoke-virtual {p1}, Lbjo;->a()Lbkh;

    move-result-object v1

    invoke-direct {v0, v1}, Lakl;-><init>(Lbkh;)V

    const/4 v1, 0x0

    invoke-virtual {p1}, Lbjo;->b()Lbki;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/model/StorySnapLogbook;-><init>(Lakl;Ljava/util/List;Lbki;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lbkj;)V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lakl;

    invoke-virtual {p1}, Lbkj;->a()Lbkh;

    move-result-object v1

    invoke-direct {v0, v1}, Lakl;-><init>(Lbkh;)V

    invoke-virtual {p1}, Lbkj;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lbkj;->b()Lbki;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/model/StorySnapLogbook;-><init>(Lakl;Ljava/util/List;Lbki;)V

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/snapchat/android/stories/StoriesSection;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/snapchat/android/stories/StoriesSection;->ME:Lcom/snapchat/android/stories/StoriesSection;

    return-object v0
.end method

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

.method public final b(Z)V
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

    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    iget-object v1, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    invoke-virtual {v0, v1}, Lakl;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I

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
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    iget-object v0, v0, Lakl;->mClientId:Ljava/lang/String;

    iget-object v1, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    iget-object v1, v1, Lakl;->mClientId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    iget-object v0, v0, Lakl;->mClientId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    iget-object v0, v0, Lakl;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public final p()Lavx;
    .locals 5

    .prologue
    .line 151
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    invoke-virtual {v0}, Lakl;->aA()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    iget-boolean v0, v0, Lakl;->mFailed:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY:Lcom/snapchat/android/stories/StoriesThumbnailType;

    .line 154
    :goto_0
    new-instance v1, Lavx;

    const/4 v2, 0x1

    new-array v2, v2, [Lakl;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    aput-object v4, v2, v3

    invoke-static {v2}, Ldt;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    iget-object v4, v4, Lakl;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&storySnapLogbook"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lavx;-><init>(Lcom/snapchat/android/stories/StoriesThumbnailType;Ljava/util/List;Ljava/lang/String;)V

    return-object v1

    .line 151
    :cond_1
    sget-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->ALL_SNAPS:Lcom/snapchat/android/stories/StoriesThumbnailType;

    goto :goto_0
.end method
