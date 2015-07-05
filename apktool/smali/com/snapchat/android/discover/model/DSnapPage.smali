.class public final Lcom/snapchat/android/discover/model/DSnapPage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/DSnapPage$a;,
        Lcom/snapchat/android/discover/model/DSnapPage$Form;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lcgb;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end field

.field public final e:I

.field public final f:Ljava/lang/Integer;
    .annotation build Lcgb;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build Lcgb;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Lcgb;
    .end annotation
.end field

.field public final i:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end field

.field public final j:Ljava/lang/String;
    .annotation build Lcgb;
    .end annotation
.end field

.field public final k:Ljava/lang/Integer;
    .annotation build Lcgb;
    .end annotation
.end field

.field public final l:Lcom/snapchat/android/discover/model/MediaState;
    .annotation build Lcgb;
    .end annotation
.end field

.field public final m:Lcom/snapchat/android/discover/model/MediaState;
    .annotation build Lcgb;
    .end annotation
.end field

.field public final n:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end field

.field public final o:Z

.field private final p:Ljava/lang/String;
    .annotation build Lcgb;
    .end annotation
.end field

.field private q:Ljava/util/Map;
    .annotation build Lcgc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/lang/String;

.field private final s:Ljava/util/Map;
    .annotation build Lcgb;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/DSnapPanel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/snapchat/android/discover/model/DSnapPage$a;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPage$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPage$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->b:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPage$a;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    .line 74
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPage$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPage$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPage$a;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->i:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPage$a;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->p:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPage$a;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->j:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPage$a;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->c:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPage$a;->l:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->k:Ljava/lang/Integer;

    .line 81
    iget v0, p1, Lcom/snapchat/android/discover/model/DSnapPage$a;->d:I

    iput v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    .line 82
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPage$a;->m:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->l:Lcom/snapchat/android/discover/model/MediaState;

    .line 83
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPage$a;->n:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->m:Lcom/snapchat/android/discover/model/MediaState;

    .line 84
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPage$a;->r:Ljava/util/Map;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->s:Ljava/util/Map;

    .line 85
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPage$a;->i:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->d:Ljava/lang/String;

    .line 86
    iget-boolean v0, p1, Lcom/snapchat/android/discover/model/DSnapPage$a;->q:Z

    iput-boolean v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->o:Z

    .line 87
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPage$a;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->n:Ljava/lang/String;

    .line 88
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPage$a;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->r:Ljava/lang/String;

    .line 89
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/discover/model/DSnapPage$a;B)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/model/DSnapPage;-><init>(Lcom/snapchat/android/discover/model/DSnapPage$a;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    const-string v1, " -archived"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 129
    array-length v1, v0

    if-nez v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    .line 132
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->i:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Lcom/snapchat/android/discover/model/MediaState;
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->m:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->l:Lcom/snapchat/android/discover/model/MediaState;

    .line 178
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->m:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_0
.end method

.method public final d()Lcom/snapchat/android/discover/model/DSnapPanel;
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->s:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPage$Form;->TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPanel;

    return-object v0
.end method

.method public final e()Lcom/snapchat/android/discover/model/DSnapPanel;
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->s:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPage$Form;->LONGFORM:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPanel;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized h()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->q:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Latt;

    invoke-direct {v0}, Latt;-><init>()V

    iget-object v1, p0, Lcom/snapchat/android/discover/model/DSnapPage;->r:Ljava/lang/String;

    new-instance v2, Lcom/snapchat/android/discover/model/DSnapPage$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/discover/model/DSnapPage$1;-><init>(Lcom/snapchat/android/discover/model/DSnapPage;)V

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Latt;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->q:Ljava/util/Map;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->q:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DSnapPage"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 245
    const-string v1, "DSnap-%s-%s-%s-%s-%s"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Ad"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Content"

    goto :goto_0
.end method
