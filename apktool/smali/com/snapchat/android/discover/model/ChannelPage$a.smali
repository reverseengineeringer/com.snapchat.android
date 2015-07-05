.class public final Lcom/snapchat/android/discover/model/ChannelPage$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/ChannelPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field f:I

.field g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:I

.field public n:I

.field public o:Ljava/lang/String;

.field public p:I

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Lcom/snapchat/android/discover/model/MediaState;

.field public x:Lcom/snapchat/android/discover/model/MediaState;

.field public y:Lcom/snapchat/android/discover/model/MediaState;

.field public z:Lcom/snapchat/android/discover/model/MediaState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$a;->o:Ljava/lang/String;

    .line 345
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$a;->w:Lcom/snapchat/android/discover/model/MediaState;

    .line 346
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$a;->x:Lcom/snapchat/android/discover/model/MediaState;

    .line 347
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$a;->y:Lcom/snapchat/android/discover/model/MediaState;

    .line 348
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$a;->z:Lcom/snapchat/android/discover/model/MediaState;

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 354
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lcom/snapchat/android/discover/model/ChannelPage;
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Labs;

    const-string v1, "Cannot build ChannelPage with null publisher name."

    const-string v2, "publisher_name"

    invoke-direct {v0, v1, v2}, Labs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Labs;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot build ChannelPage with primary color: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "primary_color"

    invoke-direct {v0, v1, v2}, Labs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/discover/model/ChannelPage$a;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$a;->f:I

    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$a;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$a;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Labs;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot build ChannelPage with secondary color: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "secondary_color"

    invoke-direct {v0, v1, v2}, Labs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/discover/model/ChannelPage$a;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$a;->g:I

    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$a;->h:Ljava/lang/String;

    if-nez v0, :cond_5

    new-instance v0, Labs;

    const-string v1, "Cannot build ChannelPage with null filled icon URL."

    const-string v2, "filled_icon"

    invoke-direct {v0, v1, v2}, Labs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$a;->i:Ljava/lang/String;

    if-nez v0, :cond_6

    new-instance v0, Labs;

    const-string v1, "Cannot build ChannelPage with null inverted icon URL."

    const-string v2, "inverted_icon"

    invoke-direct {v0, v1, v2}, Labs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$a;->k:Ljava/lang/String;

    if-nez v0, :cond_7

    new-instance v0, Labs;

    const-string v1, "Cannot build ChannelPage with null intro video URL."

    const-string v2, "intro_video"

    invoke-direct {v0, v1, v2}, Labs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_7
    new-instance v0, Lcom/snapchat/android/discover/model/ChannelPage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/discover/model/ChannelPage;-><init>(Lcom/snapchat/android/discover/model/ChannelPage$a;B)V

    return-object v0
.end method
