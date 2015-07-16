.class public final Laje;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Laje;


# instance fields
.field public final a:Lajf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lajf",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lajf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lajf",
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
            "Lajf;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lajf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lajf",
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
    new-instance v0, Laje;

    invoke-direct {v0}, Laje;-><init>()V

    sput-object v0, Laje;->c:Laje;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lajd;

    invoke-direct {v0}, Lajd;-><init>()V

    new-instance v1, Lajh;

    invoke-direct {v1}, Lajh;-><init>()V

    new-instance v2, Lajc;

    invoke-direct {v2}, Lajc;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Laje;-><init>(Lajf;Lajf;Lajf;)V

    .line 35
    return-void
.end method

.method private constructor <init>(Lajf;Lajf;Lajf;)V
    .locals 2
    .param p1    # Lajf;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lajf;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lajf;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajf",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lajf",
            "<",
            "Landroid/graphics/Typeface;",
            ">;",
            "Lajf",
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

    iput-object v0, p0, Laje;->d:Ljava/util/List;

    .line 42
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajf;

    iput-object v0, p0, Laje;->a:Lajf;

    .line 43
    iget-object v0, p0, Laje;->d:Ljava/util/List;

    iget-object v1, p0, Laje;->a:Lajf;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {p2}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajf;

    iput-object v0, p0, Laje;->b:Lajf;

    .line 45
    iget-object v0, p0, Laje;->d:Ljava/util/List;

    iget-object v1, p0, Laje;->b:Lajf;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {p3}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajf;

    iput-object v0, p0, Laje;->e:Lajf;

    .line 47
    iget-object v0, p0, Laje;->d:Ljava/util/List;

    iget-object v1, p0, Laje;->e:Lajf;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public static a()Laje;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Laje;->c:Laje;

    return-object v0
.end method

.method private static a(Ljava/util/Set;Lajf;Lajg;)V
    .locals 2
    .param p0    # Ljava/util/Set;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Lajf;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lajg;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lajf;",
            "Lajg;",
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
    invoke-interface {p1, v0, p2}, Lajf;->b(Ljava/lang/String;Lajf$a;)V

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Laje;->e:Lajf;

    invoke-interface {v0, p1}, Lajf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final a(Lajr;Lajf$a;)V
    .locals 7
    .param p1    # Lajr;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lajf$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Preparing Geofilter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lajr;->mFilterId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    iget-object v0, p1, Lajr;->mImageUrl:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p1}, Lajr;->c()Ljava/util/List;

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
    iget-object v5, v0, Lcom/snapchat/android/model/GeofilterMarkup;->displayParameters:Lajs;

    iget-object v5, v5, Lajs;->font:Ljava/lang/String;

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
    new-instance v4, Lajg;

    invoke-direct {v4, v0, p2}, Lajg;-><init>(ILajf$a;)V

    .line 84
    iget-object v0, p0, Laje;->e:Lajf;

    invoke-static {v1, v0, v4}, Laje;->a(Ljava/util/Set;Lajf;Lajg;)V

    .line 85
    iget-object v0, p0, Laje;->a:Lajf;

    invoke-static {v2, v0, v4}, Laje;->a(Ljava/util/Set;Lajf;Lajg;)V

    .line 86
    iget-object v0, p0, Laje;->b:Lajf;

    invoke-static {v3, v0, v4}, Laje;->a(Ljava/util/Set;Lajf;Lajg;)V

    .line 87
    return-void
.end method
