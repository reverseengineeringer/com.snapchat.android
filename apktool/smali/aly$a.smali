.class public final Laly$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field public b:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Landroid/os/Bundle;

.field public g:Ljava/lang/String;

.field public h:[Ljava/lang/String;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Long;

.field private final k:Lbhk;

.field private l:Lame;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lbhl;

    invoke-direct {v0}, Lbhl;-><init>()V

    iget-object v0, v0, Lbhl;->mClock:Lbhk;

    invoke-direct {p0, v0}, Laly$a;-><init>(Lbhk;)V

    .line 208
    return-void
.end method

.method private constructor <init>(Lbhk;)V
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->LOW:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object v0, p0, Laly$a;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 195
    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_LOWEST:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object v0, p0, Laly$a;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Laly$a;->c:Z

    .line 200
    const-string v0, "Unknown"

    iput-object v0, p0, Laly$a;->g:Ljava/lang/String;

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Laly$a;->j:Ljava/lang/Long;

    .line 212
    iput-object p1, p0, Laly$a;->k:Lbhk;

    .line 213
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)Laly$a;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p3

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 272
    new-instance v2, Lame;

    invoke-direct {v2, p1, p2, v0, v1}, Lame;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v2, p0, Laly$a;->l:Lame;

    .line 273
    return-object p0
.end method

.method public final a()Laly;
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 277
    iget-object v0, p0, Laly$a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    iget-object v0, p0, Laly$a;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    if-nez v0, :cond_1

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priority cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_1
    iget-object v0, p0, Laly$a;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    if-nez v0, :cond_2

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fallback priority cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_2
    iget-object v0, p0, Laly$a;->h:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Laly$a;->h:[Ljava/lang/String;

    array-length v0, v0

    if-gtz v0, :cond_4

    .line 290
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_4
    iget-object v0, p0, Laly$a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_5
    iget-object v0, p0, Laly$a;->j:Ljava/lang/Long;

    if-nez v0, :cond_6

    .line 298
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Laly$a;->j:Ljava/lang/Long;

    .line 301
    :cond_6
    iget-object v0, p0, Laly$a;->m:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 302
    iget-object v0, p0, Laly$a;->h:[Ljava/lang/String;

    aget-object v0, v0, v13

    iput-object v0, p0, Laly$a;->m:Ljava/lang/String;

    .line 305
    :cond_7
    sget-object v0, Lalv;->a:Ljava/util/Set;

    iget-object v1, p0, Laly$a;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 306
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "media type is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_8
    new-instance v0, Laly;

    iget-object v1, p0, Laly$a;->d:Ljava/lang/String;

    iget-object v2, p0, Laly$a;->f:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lauo;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laly$a;->e:Ljava/lang/String;

    iget-object v3, p0, Laly$a;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iget-object v4, p0, Laly$a;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iget-boolean v5, p0, Laly$a;->c:Z

    iget-object v6, p0, Laly$a;->j:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, p0, Laly$a;->g:Ljava/lang/String;

    iget-object v9, p0, Laly$a;->m:Ljava/lang/String;

    new-instance v10, Lalv;

    iget-object v11, p0, Laly$a;->h:[Ljava/lang/String;

    invoke-direct {v10, v11}, Lalv;-><init>([Ljava/lang/String;)V

    iget-object v11, p0, Laly$a;->l:Lame;

    iget-object v12, p0, Laly$a;->i:Ljava/lang/Object;

    invoke-direct/range {v0 .. v13}, Laly;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;ZJLjava/lang/String;Ljava/lang/String;Lalv;Lame;Ljava/lang/Object;B)V

    return-object v0
.end method
