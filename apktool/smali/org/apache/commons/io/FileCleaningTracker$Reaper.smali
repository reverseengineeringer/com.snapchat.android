.class final Lorg/apache/commons/io/FileCleaningTracker$Reaper;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/FileCleaningTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Reaper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/io/FileCleaningTracker;


# direct methods
.method constructor <init>(Lorg/apache/commons/io/FileCleaningTracker;)V
    .locals 1

    .prologue
    .line 204
    iput-object p1, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    .line 205
    const-string v0, "File Reaper"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 206
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->setPriority(I)V

    .line 207
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->setDaemon(Z)V

    .line 208
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 217
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-boolean v0, v0, Lorg/apache/commons/io/FileCleaningTracker;->exitWhenFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-object v0, v0, Lorg/apache/commons/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 220
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-object v0, v0, Lorg/apache/commons/io/FileCleaningTracker;->q:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/FileCleaningTracker$Tracker;

    .line 221
    iget-object v1, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-object v1, v1, Lorg/apache/commons/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v0}, Lorg/apache/commons/io/FileCleaningTracker$Tracker;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    iget-object v1, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-object v1, v1, Lorg/apache/commons/io/FileCleaningTracker;->deleteFailures:Ljava/util/List;

    invoke-virtual {v0}, Lorg/apache/commons/io/FileCleaningTracker$Tracker;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/io/FileCleaningTracker$Tracker;->clear()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    goto :goto_0

    .line 230
    :cond_2
    return-void
.end method
