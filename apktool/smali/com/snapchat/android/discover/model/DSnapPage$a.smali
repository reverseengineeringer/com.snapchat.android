.class public final Lcom/snapchat/android/discover/model/DSnapPage$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/DSnapPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/Integer;

.field public m:Lcom/snapchat/android/discover/model/MediaState;

.field public n:Lcom/snapchat/android/discover/model/MediaState;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Z

.field r:Ljava/util/Map;
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
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object v1, p0, Lcom/snapchat/android/discover/model/DSnapPage$a;->a:Ljava/lang/String;

    .line 262
    iput-object v1, p0, Lcom/snapchat/android/discover/model/DSnapPage$a;->c:Ljava/lang/Integer;

    .line 263
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$a;->d:I

    .line 264
    iput-object v1, p0, Lcom/snapchat/android/discover/model/DSnapPage$a;->e:Ljava/lang/String;

    .line 271
    iput-object v1, p0, Lcom/snapchat/android/discover/model/DSnapPage$a;->l:Ljava/lang/Integer;

    .line 272
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$a;->m:Lcom/snapchat/android/discover/model/MediaState;

    .line 273
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$a;->n:Lcom/snapchat/android/discover/model/MediaState;

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$a;->r:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/model/DSnapPage$a;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$a;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    return-object p0
.end method

.method public final a()Lcom/snapchat/android/discover/model/DSnapPage;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 404
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lacs;

    const-string v1, "Cannot build dsnap page with null id."

    const-string v2, "dsnap_id"

    invoke-direct {v0, v1, v2}, Lacs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$a;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lacs;

    const-string v1, "Cannot build dsnap page with null edition id."

    const-string v2, "edition_id"

    invoke-direct {v0, v1, v2}, Lacs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$a;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lacs;

    const-string v1, "Cannot build dsnap page with null publisher name."

    const-string v2, "publisher_name"

    invoke-direct {v0, v1, v2}, Lacs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$a;->j:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$a;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Lacs;

    const-string v1, "Cannot build dsnap page with null color."

    const-string v2, "color"

    invoke-direct {v0, v1, v2}, Lacs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$a;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$a;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$a;->l:Ljava/lang/Integer;

    if-nez v0, :cond_6

    new-instance v0, Lacs;

    const-string v1, "Cannot build dsnap page with null ad type."

    const-string v2, "ad_type"

    invoke-direct {v0, v1, v2}, Lacs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$a;->r:Ljava/util/Map;

    if-nez v0, :cond_7

    new-instance v0, Lacs;

    const-string v1, "Cannot build dsnap page with invalid dsnap items."

    const-string v2, "dsnap_item"

    invoke-direct {v0, v1, v2}, Lacs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_7
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-direct {v0, p0, v3}, Lcom/snapchat/android/discover/model/DSnapPage;-><init>(Lcom/snapchat/android/discover/model/DSnapPage$a;B)V

    return-object v0
.end method
