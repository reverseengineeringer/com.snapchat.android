.class final Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/videotranscoder/task/Task$DoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->a()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;

.field final synthetic val$transcodingDoneSynchronizationObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 190
    iput-object p1, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$a;->this$0:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;

    iput-object p2, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$a;->val$transcodingDoneSynchronizationObject:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final done(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 2
    .param p1    # Lcom/snapchat/videotranscoder/task/Task$Status;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 193
    iget-object v1, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$a;->val$transcodingDoneSynchronizationObject:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$a;->val$transcodingDoneSynchronizationObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 195
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
