.class Landroid/media/SubtitleTrack$CueList$EntryIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleTrack$CueList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Long;",
        "Landroid/media/SubtitleTrack$Cue;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mCurrentTimeMs:J

.field private mDone:Z

.field private mLastEntry:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field private mLastListIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field private mListIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field private mRemainingCues:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/media/SubtitleTrack$CueList;


# direct methods
.method public constructor <init>(Landroid/media/SubtitleTrack$CueList;Ljava/util/SortedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 532
    iput-object p1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$0:Landroid/media/SubtitleTrack$CueList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iget-boolean v0, p1, Landroid/media/SubtitleTrack$CueList;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 534
    :cond_0
    iput-object p2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    .line 536
    invoke-direct {p0}, Landroid/media/SubtitleTrack$CueList$EntryIterator;->nextKey()V

    .line 537
    return-void
.end method

.method private nextKey()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 542
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    if-nez v0, :cond_1

    .line 543
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mDone:Z

    .line 557
    iput-object v6, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    .line 558
    iput-object v6, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    .line 562
    :goto_0
    return-void

    .line 545
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mCurrentTimeMs:J

    .line 546
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    iget-wide v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mCurrentTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 549
    :try_start_2
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    iget-wide v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mCurrentTimeMs:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 554
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mDone:Z
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0

    .line 561
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 552
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mDone:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    iget-boolean v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mDone:Z

    if-eqz v0, :cond_0

    .line 496
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_0
    new-instance v0, Landroid/util/Pair;

    iget-wide v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mCurrentTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    .line 500
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    .line 501
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 502
    invoke-direct {p0}, Landroid/media/SubtitleTrack$CueList$EntryIterator;->nextKey()V

    .line 504
    :cond_1
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0}, Landroid/media/SubtitleTrack$CueList$EntryIterator;->next()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 7

    .prologue
    .line 510
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack$Cue;

    iget-wide v2, v0, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    .line 512
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_1
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 517
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    .line 518
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$0:Landroid/media/SubtitleTrack$CueList;

    # getter for: Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;
    invoke-static {v0}, Landroid/media/SubtitleTrack$CueList;->access$200(Landroid/media/SubtitleTrack$CueList;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 519
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$0:Landroid/media/SubtitleTrack$CueList;

    # getter for: Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;
    invoke-static {v0}, Landroid/media/SubtitleTrack$CueList;->access$200(Landroid/media/SubtitleTrack$CueList;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    :cond_2
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack$Cue;

    .line 524
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$0:Landroid/media/SubtitleTrack$CueList;

    iget-wide v2, v0, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    # invokes: Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V
    invoke-static {v1, v0, v2, v3}, Landroid/media/SubtitleTrack$CueList;->access$300(Landroid/media/SubtitleTrack$CueList;Landroid/media/SubtitleTrack$Cue;J)V

    .line 525
    iget-object v1, v0, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v1, :cond_3

    .line 526
    iget-object v2, v0, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-wide v4, v2, v1

    .line 527
    iget-object v6, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$0:Landroid/media/SubtitleTrack$CueList;

    # invokes: Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V
    invoke-static {v6, v0, v4, v5}, Landroid/media/SubtitleTrack$CueList;->access$300(Landroid/media/SubtitleTrack$CueList;Landroid/media/SubtitleTrack$Cue;J)V

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    :cond_3
    return-void
.end method
