.class public final Laii;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Laii;


# instance fields
.field public final a:Laij;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laij",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Laij;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laij",
            "<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laij;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Laij;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laij",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Laii;

    invoke-direct {v0}, Laii;-><init>()V

    sput-object v0, Laii;->c:Laii;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Laih;

    invoke-direct {v0}, Laih;-><init>()V

    new-instance v1, Lail;

    invoke-direct {v1}, Lail;-><init>()V

    new-instance v2, Laig;

    invoke-direct {v2}, Laig;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Laii;-><init>(Laij;Laij;Laij;)V

    .line 35
    return-void
.end method

.method private constructor <init>(Laij;Laij;Laij;)V
    .locals 2
    .param p1    # Laij;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laij;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Laij;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laij",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Laij",
            "<",
            "Landroid/graphics/Typeface;",
            ">;",
            "Laij",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laii;->d:Ljava/util/List;

    .line 42
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laij;

    iput-object v0, p0, Laii;->a:Laij;

    .line 43
    iget-object v0, p0, Laii;->d:Ljava/util/List;

    iget-object v1, p0, Laii;->a:Laij;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {p2}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laij;

    iput-object v0, p0, Laii;->b:Laij;

    .line 45
    iget-object v0, p0, Laii;->d:Ljava/util/List;

    iget-object v1, p0, Laii;->b:Laij;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {p3}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laij;

    iput-object v0, p0, Laii;->e:Laij;

    .line 47
    iget-object v0, p0, Laii;->d:Ljava/util/List;

    iget-object v1, p0, Laii;->e:Laij;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public static a()Laii;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Laii;->c:Laii;

    return-object v0
.end method

.method private static a(Ljava/util/Set;Laij;Laik;)V
    .locals 2
    .param p0    # Ljava/util/Set;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Laij;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laik;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Laij;",
            "Laik;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    invoke-interface {p1, v0, p2}, Laij;->b(Ljava/lang/String;Laij$a;)V

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Laii;->e:Laij;

    invoke-interface {v0, p1}, Laij;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final a(Laiv;Laij$a;)V
    .locals 7
    .param p1    # Laiv;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laij$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 63
    const-string v0, "GeofilterResourceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Preparing Geofilter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Laiv;->mFilterId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 65
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 66
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 68
    iget-object v0, p1, Laiv;->mImageUrl:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p1}, Laiv;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/GeofilterMarkup;

    .line 70
    iget-object v5, v0, Lcom/snapchat/android/model/GeofilterMarkup;->type:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    sget-object v6, Lcom/snapchat/android/model/GeofilterMarkup$DataType;->IMAGE:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    if-ne v5, v6, :cond_1

    .line 71
    iget-object v0, v0, Lcom/snapchat/android/model/GeofilterMarkup;->source:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_1
    iget-object v5, v0, Lcom/snapchat/android/model/GeofilterMarkup;->type:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    sget-object v6, Lcom/snapchat/android/model/GeofilterMarkup$DataType;->TEXT:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    if-ne v5, v6, :cond_0

    .line 73
    iget-object v5, v0, Lcom/snapchat/android/model/GeofilterMarkup;->displayParameters:Laiw;

    iget-object v5, v5, Laiw;->font:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, v0, Lcom/snapchat/android/model/GeofilterMarkup;->source:Ljava/lang/String;

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 76
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    add-int/2addr v0, v4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 82
    new-instance v4, Laik;

    invoke-direct {v4, v0, p2}, Laik;-><init>(ILaij$a;)V

    .line 84
    iget-object v0, p0, Laii;->e:Laij;

    invoke-static {v1, v0, v4}, Laii;->a(Ljava/util/Set;Laij;Laik;)V

    .line 85
    iget-object v0, p0, Laii;->a:Laij;

    invoke-static {v2, v0, v4}, Laii;->a(Ljava/util/Set;Laij;Laik;)V

    .line 86
    iget-object v0, p0, Laii;->b:Laij;

    invoke-static {v3, v0, v4}, Laii;->a(Ljava/util/Set;Laij;Laik;)V

    .line 87
    return-void
.end method
