.class public final Lcom/snapchat/android/discover/model/DSnapPanel$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/DSnapPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

.field e:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

.field public f:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

.field public g:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

.field public h:Lcom/snapchat/android/discover/model/MediaState;

.field public i:Lbky;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$a;
    .locals 1

    .prologue
    .line 247
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$a;->e:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    .line 248
    return-object p0
.end method

.method public final a()Lcom/snapchat/android/discover/model/DSnapPanel;
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$a;->e:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->REMOTE_VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-eq v0, v1, :cond_0

    new-instance v0, Lacs;

    const-string v1, "Cannot build dsnap panel with null uri."

    const-string v2, "uri"

    invoke-direct {v0, v1, v2}, Lacs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$a;->e:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-nez v0, :cond_1

    new-instance v0, Lacs;

    const-string v1, "Cannot build dsnap panel with null media type."

    const-string v2, "media_type"

    invoke-direct {v0, v1, v2}, Lacs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$a;->e:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$a;->j:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lacs;

    const-string v1, "Cannot build video dsnap panel with null first frame URI."

    const-string v2, "video_first_frame"

    invoke-direct {v0, v1, v2}, Lacs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$a;->f:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    if-nez v0, :cond_3

    .line 279
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->LOOPING:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$a;->f:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$a;->g:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    if-nez v0, :cond_4

    .line 283
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->MEDIA_TOP:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$a;->g:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$a;->d:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    if-nez v0, :cond_5

    .line 287
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->MEDIA_TOP:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$a;->d:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    .line 291
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$a;->h:Lcom/snapchat/android/discover/model/MediaState;

    if-nez v0, :cond_6

    .line 292
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$a;->e:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->getDefaultMetadataLoadingState()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$a;->h:Lcom/snapchat/android/discover/model/MediaState;

    .line 295
    :cond_6
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/discover/model/DSnapPanel;-><init>(Lcom/snapchat/android/discover/model/DSnapPanel$a;B)V

    return-object v0
.end method
