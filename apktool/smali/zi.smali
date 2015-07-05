.class public abstract Lzi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzi$a;
    }
.end annotation


# instance fields
.field private final a:Lajv;

.field final b:Lajr;

.field final c:Lals;

.field final d:Lals$a;


# direct methods
.method public constructor <init>(Lajr;)V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    new-instance v1, Lals;

    invoke-direct {v1}, Lals;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lzi;-><init>(Lajr;Lajv;Lals;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Lajr;Lajv;Lals;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lzi$1;

    invoke-direct {v0, p0}, Lzi$1;-><init>(Lzi;)V

    iput-object v0, p0, Lzi;->d:Lals$a;

    .line 33
    iput-object p1, p0, Lzi;->b:Lajr;

    .line 34
    iput-object p2, p0, Lzi;->a:Lajv;

    .line 35
    iput-object p3, p0, Lzi;->c:Lals;

    .line 36
    return-void
.end method


# virtual methods
.method final a()Lzi$a;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lzi;->b:Lajr;

    iget-boolean v0, v0, Lajr;->mNeedsAuth:Z

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Lzi$a;

    iget-object v1, p0, Lzi;->b:Lajr;

    iget-object v1, v1, Lajr;->mMediaId:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lzi$a;-><init>(Lzi;Ljava/lang/String;)V

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Lajr;)V
.end method

.method protected final a(Lals$b;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 115
    const-string v0, "StorySnapLoadTask"

    const-string v1, "Download for %s complete. Result:%s cachingException:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lzi;->b:Lajr;

    aput-object v3, v2, v4

    iget-object v3, p1, Lals$b;->a:Luc;

    aput-object v3, v2, v5

    iget-object v3, p1, Lals$b;->b:Ljava/lang/Exception;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p1, Lals$b;->a:Luc;

    .line 119
    if-eqz v0, :cond_1

    iget v0, v0, Luc;->mResponseCode:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1

    .line 122
    iget-object v0, p0, Lzi;->b:Lajr;

    invoke-virtual {v0}, Lajr;->aG()V

    .line 123
    iget-object v0, p0, Lzi;->b:Lajr;

    invoke-virtual {v0}, Lajr;->l()V

    .line 151
    :cond_0
    :goto_0
    iget-object v0, p0, Lzi;->b:Lajr;

    invoke-virtual {p0, v0}, Lzi;->a(Lajr;)V

    .line 152
    return-void

    .line 125
    :cond_1
    invoke-virtual {p1}, Lals$b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lzi;->b:Lajr;

    invoke-virtual {v0}, Lajr;->n()V

    .line 129
    iget-object v0, p0, Lzi;->b:Lajr;

    invoke-virtual {v0}, Lajr;->ak()I

    move-result v0

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lzi;->a:Lajv;

    new-array v1, v6, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->STORY_SNAP_IMAGE_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v4

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->MY_SNAP_IMAGE_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lajv;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lzi;->a:Lajv;

    new-array v1, v6, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->STORY_SNAP_VIDEO_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v4

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->MY_SNAP_VIDEO_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lajv;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lzi;->b:Lajr;

    invoke-virtual {v0}, Lajr;->l()V

    .line 146
    iget-object v0, p0, Lzi;->b:Lajr;

    invoke-virtual {v0}, Lajr;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lzi;->b:Lajr;

    invoke-virtual {v0}, Lajr;->aG()V

    goto :goto_0
.end method
