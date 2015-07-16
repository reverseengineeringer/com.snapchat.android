.class public Lzy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lajk;


# instance fields
.field protected final b:Lcom/snapchat/android/model/StoryCollection;

.field protected final c:Lzz;

.field protected d:Lakl;


# direct methods
.method public constructor <init>(Lakl;Lcom/snapchat/android/model/StoryCollection;)V
    .locals 1
    .param p1    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/StoryCollection;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-static {}, Lzz;->a()Lzz;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lzy;-><init>(Lzz;Lakl;Lcom/snapchat/android/model/StoryCollection;)V

    .line 26
    return-void
.end method

.method protected constructor <init>(Lzz;Lakl;Lcom/snapchat/android/model/StoryCollection;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p2}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    iput-object v0, p0, Lzy;->d:Lakl;

    .line 32
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzz;

    iput-object v0, p0, Lzy;->c:Lzz;

    .line 33
    invoke-static {p3}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    iput-object v0, p0, Lzy;->b:Lcom/snapchat/android/model/StoryCollection;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(ILaka;)I
    .locals 6

    .prologue
    .line 76
    iget-object v0, p0, Lzy;->c:Lzz;

    iget-object v1, p0, Lzy;->b:Lcom/snapchat/android/model/StoryCollection;

    const/4 v4, 0x0

    sget-object v5, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->LOAD_FROM_VIEWING:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lzz;->a(Lcom/snapchat/android/model/StoryCollection;ILaka;ZLcom/snapchat/android/controller/stories/StoryLoadingContext;)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public a(Laka;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V
    .locals 0
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 44
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public c()Laka;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lzy;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v1, p0, Lzy;->d:Lakl;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->d(Lakl;)Lakl;

    move-result-object v0

    iput-object v0, p0, Lzy;->d:Lakl;

    .line 65
    iget-object v0, p0, Lzy;->d:Lakl;

    return-object v0
.end method

.method public d()Laka;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lzy;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v1, p0, Lzy;->d:Lakl;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->c(Lakl;)Lakl;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lzy;->b:Lcom/snapchat/android/model/StoryCollection;

    instance-of v0, v0, Lakc;

    return v0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lzy;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v1, p0, Lzy;->d:Lakl;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->a(Lakl;)Z

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lzy;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v1, p0, Lzy;->d:Lakl;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->g(Lakl;)I

    move-result v0

    return v0
.end method
