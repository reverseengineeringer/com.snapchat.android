.class final Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->a()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$b;->this$0:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressUpdated(I)V
    .locals 4

    .prologue
    .line 202
    const/16 v0, 0x64

    iget-object v1, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$b;->this$0:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;

    invoke-static {v1}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->a(Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;)I

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$b;->this$0:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;

    invoke-static {v2}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->b(Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;)I

    move-result v2

    mul-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$b;->this$0:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->a(Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;[Ljava/lang/Object;)V

    .line 205
    return-void
.end method
