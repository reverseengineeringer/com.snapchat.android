.class public final Laad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lapl;

.field public final b:Lcom/snapchat/android/model/StoryCollection;

.field public final c:Laac;

.field public d:Lakl;

.field public e:Lakl;

.field public f:Lakj;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lakl;Lcom/snapchat/android/model/StoryCollection;)V
    .locals 4
    .param p1    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/StoryCollection;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-static {}, Lapl;->a()Lapl;

    move-result-object v1

    instance-of v0, p2, Lakc;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/snapchat/android/model/StoryCollection;->w()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Laac;

    invoke-virtual {p2}, Lcom/snapchat/android/model/StoryCollection;->k()Lbks;

    move-result-object v3

    invoke-virtual {v3}, Lbks;->a()Lbkr;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Laac;-><init>(Lbkr;Z)V

    invoke-direct {p0, p1, p2, v1, v2}, Laad;-><init>(Lakl;Lcom/snapchat/android/model/StoryCollection;Lapl;Laac;)V

    .line 32
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lakl;Lcom/snapchat/android/model/StoryCollection;Lapl;Laac;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Laad;->d:Lakl;

    .line 25
    iput-object v0, p0, Laad;->e:Lakl;

    .line 26
    iput-object v0, p0, Laad;->f:Lakj;

    .line 37
    iput-object p3, p0, Laad;->a:Lapl;

    .line 38
    iput-object p4, p0, Laad;->c:Laac;

    .line 39
    iget v0, p4, Laac;->a:I

    iput v0, p0, Laad;->h:I

    .line 40
    iput-object p1, p0, Laad;->d:Lakl;

    .line 41
    iput-object p1, p0, Laad;->e:Lakl;

    .line 42
    iput-object p2, p0, Laad;->b:Lcom/snapchat/android/model/StoryCollection;

    .line 46
    iput v3, p0, Laad;->g:I

    .line 47
    iget-object v0, p0, Laad;->b:Lcom/snapchat/android/model/StoryCollection;

    instance-of v0, v0, Lakc;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Laad;->b:Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laad;->h:I

    .line 49
    iget-object v0, p0, Laad;->b:Lcom/snapchat/android/model/StoryCollection;

    iget v1, p0, Laad;->h:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->a(I)V

    .line 54
    :goto_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Laad;->d:Lakl;

    aput-object v2, v0, v1

    iget-object v1, p0, Laad;->b:Lcom/snapchat/android/model/StoryCollection;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Laad;->c:Laac;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Laad;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Laad;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 56
    return-void

    .line 51
    :cond_0
    iput v3, p0, Laad;->h:I

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 152
    iget-object v1, p0, Laad;->d:Lakl;

    iget-object v2, p0, Laad;->c:Laac;

    iget v3, p0, Laad;->g:I

    iget v4, p0, Laad;->h:I

    iget-object v5, p0, Laad;->b:Lcom/snapchat/android/model/StoryCollection;

    iget-object v6, p0, Laad;->e:Lakl;

    invoke-virtual {v5, v6}, Lcom/snapchat/android/model/StoryCollection;->b(Lakl;)I

    move-result v5

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lakl;->mCanAdFollow:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, v2, Laac;->c:I

    if-lt v3, v1, :cond_0

    iget v1, v2, Laac;->a:I

    if-lt v4, v1, :cond_0

    iget v1, v2, Laac;->b:I

    if-lt v5, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
