.class public final Lait$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lait;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Lait$b;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lair;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lawo;


# direct methods
.method public constructor <init>(Lait;Landroid/graphics/Bitmap;Lait$b;Ljava/util/List;)V
    .locals 6
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lait$b;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lait$b;",
            "Ljava/util/List",
            "<",
            "Lair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lawo;->a()Lawo;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lait$a;-><init>(Lait;Landroid/graphics/Bitmap;Lait$b;Ljava/util/List;Lawo;)V

    .line 56
    return-void
.end method

.method private constructor <init>(Lait;Landroid/graphics/Bitmap;Lait$b;Ljava/util/List;Lawo;)V
    .locals 1
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lait$b;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Lawo;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lait$b;",
            "Ljava/util/List",
            "<",
            "Lair;",
            ">;",
            "Lawo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lait$a;->a:Lait;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 62
    invoke-static {p2}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lait$a;->b:Landroid/graphics/Bitmap;

    .line 63
    invoke-static {p3}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lait$b;

    iput-object v0, p0, Lait$a;->c:Lait$b;

    .line 64
    invoke-static {p4}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lait$a;->d:Ljava/util/List;

    .line 65
    invoke-static {p5}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawo;

    iput-object v0, p0, Lait$a;->e:Lawo;

    .line 66
    return-void
.end method


# virtual methods
.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-static {}, Lait;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    iget-object v1, p0, Lait$a;->b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lait$a;->b:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lait$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lait$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lair;

    invoke-interface {v0, v3}, Lair;->a(Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const-string v0, "DYNAMIC_ELEMENTS_ADDED"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v4, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    iget-object v0, p0, Lait$a;->e:Lawo;

    iget-object v1, p0, Lait$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lawo;->a(Landroid/graphics/Bitmap;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 46
    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lait$a;->c:Lait$b;

    invoke-interface {v0, p1}, Lait$b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
