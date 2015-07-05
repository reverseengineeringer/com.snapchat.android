.class public final Lpb;
.super Lot;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpb$a;,
        Lpb$b;
    }
.end annotation


# static fields
.field private static final TASK_NAME:Ljava/lang/String; = "SharedStorySearchTask"


# instance fields
.field private mCallback:Lpb$b;

.field private mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lpb$b;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lpb$b;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0}, Lot;-><init>()V

    .line 30
    iput-object p1, p0, Lpb;->mQuery:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lpb;->mCallback:Lpb$b;

    .line 32
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "/loq/friend_search"

    return-object v0
.end method

.method protected final b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v1, "username"

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "query"

    iget-object v2, p0, Lpb;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-object v0
.end method

.method protected final b(Laku;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p1, Laku;->result:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lpb;->mCallback:Lpb$b;

    iget-object v1, p1, Laku;->result:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lpb$b;->a(Ljava/util/ArrayList;)V

    .line 52
    :cond_0
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "SharedStorySearchTask"

    return-object v0
.end method
