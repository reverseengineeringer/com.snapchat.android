.class final Luv$1;
.super Lcbb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luv;

.field totalBytesRead:J


# direct methods
.method constructor <init>(Luv;Lcbk;)V
    .locals 2

    .prologue
    .line 48
    iput-object p1, p0, Luv$1;->this$0:Luv;

    invoke-direct {p0, p2}, Lcbb;-><init>(Lcbk;)V

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Luv$1;->totalBytesRead:J

    return-void
.end method


# virtual methods
.method public final a(Lcav;J)J
    .locals 14

    .prologue
    .line 51
    invoke-super/range {p0 .. p3}, Lcbb;->a(Lcav;J)J

    move-result-wide v8

    .line 53
    iget-wide v2, p0, Luv$1;->totalBytesRead:J

    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    move-wide v0, v8

    :goto_0
    add-long/2addr v0, v2

    iput-wide v0, p0, Luv$1;->totalBytesRead:J

    .line 54
    iget-object v0, p0, Luv$1;->this$0:Luv;

    iget-object v7, v0, Luv;->mProgressListeners:[Lvg;

    array-length v10, v7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v10, :cond_2

    aget-object v1, v7, v0

    .line 55
    iget-wide v2, p0, Luv$1;->totalBytesRead:J

    iget-object v4, p0, Luv$1;->this$0:Luv;

    iget-object v4, v4, Luv;->mResponseBody:Lbne;

    invoke-virtual {v4}, Lbne;->a()J

    move-result-wide v4

    const-wide/16 v12, -0x1

    cmp-long v6, v8, v12

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_2
    invoke-interface/range {v1 .. v6}, Lvg;->a(JJZ)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 55
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 57
    :cond_2
    return-wide v8
.end method
