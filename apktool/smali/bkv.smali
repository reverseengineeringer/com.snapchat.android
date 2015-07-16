.class public final Lbkv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected dsnapsData:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dsnaps_data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbkw;",
            ">;"
        }
    .end annotation
.end field

.field protected editionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "edition_id"
    .end annotation
.end field

.field protected filledIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filled_icon"
    .end annotation
.end field

.field protected introMovie:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "intro_movie"
    .end annotation
.end field

.field protected introVideoAdMetadata:Lbhv;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "intro_video_ad_metadata"
    .end annotation
.end field

.field protected invertedIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inverted_icon"
    .end annotation
.end field

.field protected loadingIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "loading_icon"
    .end annotation
.end field

.field protected name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field protected position:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "position"
    .end annotation
.end field

.field protected primaryColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "primary_color"
    .end annotation
.end field

.field protected promotedStoriesPagePosition:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "promoted_stories_page_position"
    .end annotation
.end field

.field protected publisherFormalName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "publisher_formal_name"
    .end annotation
.end field

.field protected publisherName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "publisher_name"
    .end annotation
.end field

.field protected secondaryColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "secondary_color"
    .end annotation
.end field

.field protected storiesPagePosition:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stories_page_position"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lbkv;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lbkv;->storiesPagePosition:Ljava/lang/Integer;

    return-object v0
.end method

.method public final c()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lbkv;->promotedStoriesPagePosition:Ljava/lang/Integer;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lbkv;->publisherName:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lbkv;->publisherFormalName:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 364
    if-ne p1, p0, :cond_0

    .line 365
    const/4 v0, 0x1

    .line 371
    :goto_0
    return v0

    .line 367
    :cond_0
    instance-of v0, p1, Lbkv;

    if-nez v0, :cond_1

    .line 368
    const/4 v0, 0x0

    goto :goto_0

    .line 370
    :cond_1
    check-cast p1, Lbkv;

    .line 371
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbkv;->name:Ljava/lang/String;

    iget-object v2, p1, Lbkv;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->position:Ljava/lang/Integer;

    iget-object v2, p1, Lbkv;->position:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->storiesPagePosition:Ljava/lang/Integer;

    iget-object v2, p1, Lbkv;->storiesPagePosition:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->promotedStoriesPagePosition:Ljava/lang/Integer;

    iget-object v2, p1, Lbkv;->promotedStoriesPagePosition:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->publisherName:Ljava/lang/String;

    iget-object v2, p1, Lbkv;->publisherName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->publisherFormalName:Ljava/lang/String;

    iget-object v2, p1, Lbkv;->publisherFormalName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->filledIcon:Ljava/lang/String;

    iget-object v2, p1, Lbkv;->filledIcon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->invertedIcon:Ljava/lang/String;

    iget-object v2, p1, Lbkv;->invertedIcon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->loadingIcon:Ljava/lang/String;

    iget-object v2, p1, Lbkv;->loadingIcon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->introMovie:Ljava/lang/String;

    iget-object v2, p1, Lbkv;->introMovie:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->primaryColor:Ljava/lang/String;

    iget-object v2, p1, Lbkv;->primaryColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->secondaryColor:Ljava/lang/String;

    iget-object v2, p1, Lbkv;->secondaryColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->editionId:Ljava/lang/String;

    iget-object v2, p1, Lbkv;->editionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->dsnapsData:Ljava/util/List;

    iget-object v2, p1, Lbkv;->dsnapsData:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->introVideoAdMetadata:Lbhv;

    iget-object v2, p1, Lbkv;->introVideoAdMetadata:Lbhv;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto/16 :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lbkv;->filledIcon:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lbkv;->invertedIcon:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lbkv;->loadingIcon:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 343
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbkv;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->position:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->storiesPagePosition:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->promotedStoriesPagePosition:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->publisherName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->publisherFormalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->filledIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->invertedIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->loadingIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->introMovie:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->primaryColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->secondaryColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->editionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->dsnapsData:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkv;->introVideoAdMetadata:Lbhv;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lbkv;->introMovie:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lbkv;->primaryColor:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lbkv;->secondaryColor:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lbkv;->editionId:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbkw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lbkv;->dsnapsData:Ljava/util/List;

    return-object v0
.end method

.method public final n()Lbhv;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lbkv;->introVideoAdMetadata:Lbhv;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
