.class final Laiw$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lajf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laiw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Laiw;

.field private final b:Lajr;

.field private final c:Z

.field private d:I


# direct methods
.method constructor <init>(Laiw;Lajr;Z)V
    .locals 1
    .param p2    # Lajr;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Z
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 132
    iput-object p1, p0, Laiw$b;->a:Laiw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x5

    iput v0, p0, Laiw$b;->d:I

    .line 133
    iput-object p2, p0, Laiw$b;->b:Lajr;

    .line 134
    iput-boolean p3, p0, Laiw$b;->c:Z

    .line 135
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    .line 139
    iget-object v0, p0, Laiw$b;->a:Laiw;

    iget-object v0, v0, Laiw;->a:Laje;

    iget-object v1, p0, Laiw$b;->b:Lajr;

    iget-object v1, v1, Lajr;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laje;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 141
    iget-object v0, p0, Laiw$b;->b:Lajr;

    iput-object v4, v0, Lajr;->mBitmap:Landroid/graphics/Bitmap;

    .line 142
    iget-object v5, p0, Laiw$b;->a:Laiw;

    iget-object v0, p0, Laiw$b;->b:Lajr;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcht;->c()Lcht;

    move-result-object v7

    invoke-virtual {v0}, Lajr;->c()Ljava/util/List;

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

    iget-object v1, v0, Lcom/snapchat/android/model/GeofilterMarkup;->displaySchedule:Laju;

    invoke-virtual {v1, v7}, Laju;->a(Lcht;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, v5, Laiw;->c:Lais;

    iget-object v1, v0, Lcom/snapchat/android/model/GeofilterMarkup;->type:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    sget-object v2, Lcom/snapchat/android/model/GeofilterMarkup$DataType;->TEXT:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/snapchat/android/model/GeofilterMarkup;->displayParameters:Lajs;

    iget-object v1, v1, Lajs;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, v3, Lais;->a:Laje;

    iget-object v2, v0, Lcom/snapchat/android/model/GeofilterMarkup;->source:Ljava/lang/String;

    iget-object v1, v1, Laje;->a:Lajf;

    invoke-interface {v1, v2}, Lajf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v3, Lais;->a:Laje;

    iget-object v3, v0, Lcom/snapchat/android/model/GeofilterMarkup;->displayParameters:Lajs;

    iget-object v3, v3, Lajs;->font:Ljava/lang/String;

    iget-object v1, v1, Laje;->b:Lajf;

    invoke-interface {v1, v3}, Lajf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_2

    new-instance v3, Laiu;

    invoke-direct {v3, v2, v1, v0}, Laiu;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;Lcom/snapchat/android/model/GeofilterMarkup;)V

    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/snapchat/android/model/GeofilterMarkup;->type:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    sget-object v2, Lcom/snapchat/android/model/GeofilterMarkup$DataType;->IMAGE:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    if-ne v1, v2, :cond_2

    new-instance v1, Laiq;

    iget-object v2, v3, Lais;->a:Laje;

    iget-object v3, v0, Lcom/snapchat/android/model/GeofilterMarkup;->source:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laje;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Laiq;-><init>(Landroid/graphics/Bitmap;Lcom/snapchat/android/model/GeofilterMarkup;)V

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
    new-instance v0, Laiw$a;

    iget-object v1, p0, Laiw$b;->a:Laiw;

    iget-object v2, p0, Laiw$b;->b:Lajr;

    iget-boolean v3, p0, Laiw$b;->c:Z

    invoke-direct {v0, v1, v2, v3}, Laiw$a;-><init>(Laiw;Lajr;Z)V

    .line 145
    iget-object v1, p0, Laiw$b;->a:Laiw;

    iget-object v1, v1, Laiw;->b:Lait;

    new-instance v2, Lait$a;

    invoke-direct {v2, v1, v4, v0, v6}, Lait$a;-><init>(Lait;Landroid/graphics/Bitmap;Lait$b;Ljava/util/List;)V

    iget-object v0, v1, Lait;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v1}, Lait$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 149
    :cond_4
    :goto_3
    return-void

    .line 146
    :cond_5
    iget-boolean v0, p0, Laiw$b;->c:Z

    if-eqz v0, :cond_4

    .line 147
    iget-object v0, p0, Laiw$b;->a:Laiw;

    invoke-static {v0}, Laiw;->a(Laiw;)V

    goto :goto_3

    :cond_6
    move-object v2, v1

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 153
    iget v0, p0, Laiw$b;->d:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Laiw$b;->d:I

    if-lez v0, :cond_0

    .line 155
    iget-object v0, p0, Laiw$b;->a:Laiw;

    iget-object v0, v0, Laiw;->a:Laje;

    iget-object v1, p0, Laiw$b;->b:Lajr;

    invoke-virtual {v0, v1, p0}, Laje;->a(Lajr;Lajf$a;)V

    .line 157
    :cond_0
    return-void
.end method
