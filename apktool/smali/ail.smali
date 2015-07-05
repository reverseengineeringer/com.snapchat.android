.class public final Lail;
.super Laif;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laif",
        "<",
        "Landroid/graphics/Typeface;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lawq;->FONT_CACHE:Lawp;

    invoke-static {}, Lalb;->a()Lalb;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lail;-><init>(Lawp;Lalb;Ljava/util/Map;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Lawp;Lalb;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lawp;",
            "Lalb;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p2, p1}, Laif;-><init>(Lalb;Lawp;)V

    .line 32
    iput-object p3, p0, Lail;->b:Ljava/util/Map;

    .line 33
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lail;->a:Lawp;

    invoke-virtual {v1, p1}, Lawp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lail;->a:Lawp;

    invoke-virtual {v1, p1}, Lawp;->c(Ljava/lang/String;)V

    .line 98
    :goto_0
    return v0

    .line 90
    :cond_0
    :try_start_0
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lail;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    const-string v2, "TypfaceResourceProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can not load font "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lail;->a:Lawp;

    invoke-virtual {v1, p1}, Lawp;->c(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lail;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lail;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 62
    .line 63
    if-eqz p2, :cond_0

    .line 64
    invoke-direct {p0, p1}, Lail;->b(Ljava/lang/String;)Z

    move-result p2

    .line 66
    :cond_0
    invoke-super {p0, p1, p2}, Laif;->a(Ljava/lang/String;Z)V

    .line 67
    return-void
.end method

.method public final b(Ljava/lang/String;Laij$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laij$a;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lail;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lail;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {p2}, Laij$a;->a()V

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lail;->a:Lawp;

    invoke-virtual {v0, p1}, Lawp;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lail;->a:Lawp;

    invoke-virtual {v0, p1}, Lawp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 42
    iget-object v0, p0, Lail;->a:Lawp;

    invoke-virtual {v0, p1}, Lawp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lail;->a:Lawp;

    invoke-virtual {v0, p1}, Lawp;->c(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lail;->a(Ljava/lang/String;Laij$a;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lail;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Laij$a;->a()V

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Laij$a;->b()V

    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {p0, p1, p2}, Lail;->a(Ljava/lang/String;Laij$a;)V

    goto :goto_0
.end method
