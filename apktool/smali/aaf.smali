.class public abstract Laaf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laaf$a;
    }
.end annotation


# instance fields
.field private final a:Lakp;

.field final b:Lakl;

.field final c:Lamp;

.field final d:Lamp$a;


# direct methods
.method public constructor <init>(Lakl;)V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    new-instance v1, Lamp;

    invoke-direct {v1}, Lamp;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Laaf;-><init>(Lakl;Lakp;Lamp;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Lakl;Lakp;Lamp;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Laaf$1;

    invoke-direct {v0, p0}, Laaf$1;-><init>(Laaf;)V

    iput-object v0, p0, Laaf;->d:Lamp$a;

    .line 33
    iput-object p1, p0, Laaf;->b:Lakl;

    .line 34
    iput-object p2, p0, Laaf;->a:Lakp;

    .line 35
    iput-object p3, p0, Laaf;->c:Lamp;

    .line 36
    return-void
.end method


# virtual methods
.method final a()Laaf$a;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Laaf;->b:Lakl;

    iget-boolean v0, v0, Lakl;->mNeedsAuth:Z

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Laaf$a;

    iget-object v1, p0, Laaf;->b:Lakl;

    iget-object v1, v1, Lakl;->mMediaId:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Laaf$a;-><init>(Laaf;Ljava/lang/String;)V

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Lakl;)V
.end method

.method protected final a(Lamp$b;)V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Laaf;->b:Lakl;

    aput-object v1, v0, v3

    iget-object v1, p1, Lamp$b;->a:Lus;

    aput-object v1, v0, v4

    iget-object v1, p1, Lamp$b;->b:Ljava/lang/Exception;

    aput-object v1, v0, v2

    .line 118
    iget-object v0, p1, Lamp$b;->a:Lus;

    .line 119
    if-eqz v0, :cond_1

    iget v0, v0, Lus;->mResponseCode:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1

    .line 122
    iget-object v0, p0, Laaf;->b:Lakl;

    invoke-virtual {v0}, Lakl;->aB()V

    .line 123
    iget-object v0, p0, Laaf;->b:Lakl;

    invoke-virtual {v0}, Lakl;->l()V

    .line 151
    :cond_0
    :goto_0
    iget-object v0, p0, Laaf;->b:Lakl;

    invoke-virtual {p0, v0}, Laaf;->a(Lakl;)V

    .line 152
    return-void

    .line 125
    :cond_1
    invoke-virtual {p1}, Lamp$b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Laaf;->b:Lakl;

    invoke-virtual {v0}, Lakl;->n()V

    .line 129
    iget-object v0, p0, Laaf;->b:Lakl;

    invoke-virtual {v0}, Lakl;->ai()I

    move-result v0

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Laaf;->a:Lakp;

    new-array v1, v2, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->STORY_SNAP_IMAGE_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v3

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->MY_SNAP_IMAGE_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lakp;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Laaf;->a:Lakp;

    new-array v1, v2, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->STORY_SNAP_VIDEO_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v3

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->MY_SNAP_VIDEO_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lakp;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Laaf;->b:Lakl;

    invoke-virtual {v0}, Lakl;->l()V

    .line 146
    iget-object v0, p0, Laaf;->b:Lakl;

    invoke-virtual {v0}, Lakl;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Laaf;->b:Lakl;

    invoke-virtual {v0}, Lakl;->aB()V

    goto :goto_0
.end method
