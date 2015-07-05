.class public final Lajk;
.super Lcom/snapchat/android/model/MediaMailingMetadata;
.source "SourceFile"


# instance fields
.field public mPostToStories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lajc;",
            ">;"
        }
    .end annotation
.end field

.field private mPostToStoriesString:Ljava/lang/String;

.field public mShouldExecutePostStoryTaskAfterUpload:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/snapchat/android/model/MediaMailingMetadata;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lajk;->mShouldExecutePostStoryTaskAfterUpload:Z

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lajk;->mPostToStories:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Lcom/snapchat/android/model/MediaMailingMetadata;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lajk;

    invoke-direct {v0}, Lajk;-><init>()V

    .line 71
    invoke-super {p0, v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->a(Lcom/snapchat/android/model/MediaMailingMetadata;)V

    .line 72
    iget-boolean v1, p0, Lajk;->mShouldExecutePostStoryTaskAfterUpload:Z

    iput-boolean v1, v0, Lajk;->mShouldExecutePostStoryTaskAfterUpload:Z

    .line 73
    iget-object v1, p0, Lajk;->mPostToStoriesString:Ljava/lang/String;

    iput-object v1, v0, Lajk;->mPostToStoriesString:Ljava/lang/String;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lajk;->mPostToStories:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lajk;->mPostToStories:Ljava/util/ArrayList;

    .line 75
    return-object v0
.end method
