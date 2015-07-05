.class public Lahd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lahb;


# instance fields
.field protected final a:Lcom/snapchat/android/model/StoryGroup;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/StoryGroup;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lahd;->a:Lcom/snapchat/android/model/StoryGroup;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lahd;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lahd;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    .line 69
    invoke-virtual {v0, p1}, Lajr;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lahd;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->DEFAULT:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    return-object v0
.end method

.method public final d()Lcom/snapchat/android/model/StoryGroup;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lahd;->a:Lcom/snapchat/android/model/StoryGroup;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 85
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    .line 87
    :cond_0
    instance-of v0, p1, Lahd;

    if-nez v0, :cond_1

    .line 88
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :cond_1
    check-cast p1, Lahd;

    .line 92
    iget-object v0, p0, Lahd;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lahd;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lahd;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lahd;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    return v0
.end method

.method public final i()Lcom/snapchat/android/stories/StoriesSection;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/snapchat/android/stories/StoriesSection;->ME:Lcom/snapchat/android/stories/StoriesSection;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lahd;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lahd;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lahd;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->k()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Lauz;
    .locals 5

    .prologue
    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v0, p0, Lahd;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 76
    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Lauz;

    sget-object v2, Lcom/snapchat/android/stories/StoriesThumbnailType;->ALL_SNAPS:Lcom/snapchat/android/stories/StoriesThumbnailType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lahd;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v4}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&storyGroup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lauz;-><init>(Lcom/snapchat/android/stories/StoriesThumbnailType;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method
