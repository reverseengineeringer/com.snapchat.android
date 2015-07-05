.class final Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/snapchat/android/model/StorySnapLogbook;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$1;->this$0:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 245
    check-cast p1, Lcom/snapchat/android/model/StorySnapLogbook;

    check-cast p2, Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-virtual {v0}, Lajr;->W()J

    move-result-wide v0

    iget-object v2, p2, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-virtual {v2}, Lajr;->W()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-virtual {v0}, Lajr;->W()J

    move-result-wide v0

    iget-object v2, p2, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-virtual {v2}, Lajr;->W()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
