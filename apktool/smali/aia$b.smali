.class final Laia$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laij$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Laia;

.field private final b:Laiv;

.field private final c:Z

.field private d:I


# direct methods
.method constructor <init>(Laia;Laiv;Z)V
    .locals 1
    .param p2    # Laiv;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Z
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 132
    iput-object p1, p0, Laia$b;->a:Laia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x5

    iput v0, p0, Laia$b;->d:I

    .line 133
    iput-object p2, p0, Laia$b;->b:Laiv;

    .line 134
    iput-boolean p3, p0, Laia$b;->c:Z

    .line 135
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 139
    const-string v0, "ResourcesReadyCallback"

    const-string v1, "Resources ready, creating bitmap."

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Laia$b;->a:Laia;

    iget-object v0, v0, Laia;->a:Laii;

    iget-object v1, p0, Laia$b;->b:Laiv;

    iget-object v1, v1, Laiv;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laii;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 141
    iget-object v0, p0, Laia$b;->b:Laiv;

    iput-object v4, v0, Laiv;->mBitmap:Landroid/graphics/Bitmap;

    .line 142
    iget-object v5, p0, Laia$b;->a:Laia;

    iget-object v0, p0, Laia$b;->b:Laiv;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcgs;->c()Lcgs;

    move-result-object v7

    invoke-virtual {v0}, Laiv;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/GeofilterMarkup;

    iget-object v1, v0, Lcom/snapchat/android/model/GeofilterMarkup;->displaySchedule:Laiy;

    invoke-virtual {v1, v7}, Laiy;->a(Lcgs;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, v5, Laia;->c:Lahw;

    iget-object v1, v0, Lcom/snapchat/android/model/GeofilterMarkup;->type:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    sget-object v2, Lcom/snapchat/android/model/GeofilterMarkup$DataType;->TEXT:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/snapchat/android/model/GeofilterMarkup;->displayParameters:Laiw;

    iget-object v1, v1, Laiw;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, v3, Lahw;->a:Laii;

    iget-object v2, v0, Lcom/snapchat/android/model/GeofilterMarkup;->source:Ljava/lang/String;

    iget-object v1, v1, Laii;->a:Laij;

    invoke-interface {v1, v2}, Laij;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v3, Lahw;->a:Laii;

    iget-object v3, v0, Lcom/snapchat/android/model/GeofilterMarkup;->displayParameters:Laiw;

    iget-object v3, v3, Laiw;->font:Ljava/lang/String;

    iget-object v1, v1, Laii;->b:Laij;

    invoke-interface {v1, v3}, Laij;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_2

    new-instance v3, Lahy;

    invoke-direct {v3, v2, v1, v0}, Lahy;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;Lcom/snapchat/android/model/GeofilterMarkup;)V

    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/snapchat/android/model/GeofilterMarkup;->type:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    sget-object v2, Lcom/snapchat/android/model/GeofilterMarkup$DataType;->IMAGE:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    if-ne v1, v2, :cond_2

    new-instance v1, Lahu;

    iget-object v2, v3, Lahw;->a:Laii;

    iget-object v3, v0, Lcom/snapchat/android/model/GeofilterMarkup;->source:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laii;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lahu;-><init>(Landroid/graphics/Bitmap;Lcom/snapchat/android/model/GeofilterMarkup;)V

    move-object v0, v1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 143
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 144
    new-instance v0, Laia$a;

    iget-object v1, p0, Laia$b;->a:Laia;

    iget-object v2, p0, Laia$b;->b:Laiv;

    iget-boolean v3, p0, Laia$b;->c:Z

    invoke-direct {v0, v1, v2, v3}, Laia$a;-><init>(Laia;Laiv;Z)V

    .line 145
    iget-object v1, p0, Laia$b;->a:Laia;

    iget-object v1, v1, Laia;->b:Lahx;

    new-instance v2, Lahx$a;

    invoke-direct {v2, v1, v4, v0, v6}, Lahx$a;-><init>(Lahx;Landroid/graphics/Bitmap;Lahx$b;Ljava/util/List;)V

    iget-object v0, v1, Lahx;->a:Ljava/util/concurrent/ExecutorService;

    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v1}, Lahx$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 149
    :cond_4
    :goto_3
    return-void

    .line 146
    :cond_5
    iget-boolean v0, p0, Laia$b;->c:Z

    if-eqz v0, :cond_4

    .line 147
    iget-object v0, p0, Laia$b;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)V

    goto :goto_3

    :cond_6
    move-object v2, v1

    goto :goto_1
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 153
    iget v0, p0, Laia$b;->d:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Laia$b;->d:I

    if-lez v0, :cond_0

    .line 155
    iget-object v0, p0, Laia$b;->a:Laia;

    iget-object v0, v0, Laia;->a:Laii;

    iget-object v1, p0, Laia$b;->b:Laiv;

    invoke-virtual {v0, v1, p0}, Laii;->a(Laiv;Laij$a;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v0, "ResourcesReadyCallback"

    const-string v1, "Could not prepare geofilter. Max attempts reached"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
