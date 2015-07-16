.class public final Laiz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laiy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laiz$a;
    }
.end annotation


# static fields
.field private static final c:Laiz;


# instance fields
.field public final a:Laja;

.field public final b:Laix;

.field private final d:Laik;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Laiz;

    invoke-direct {v0}, Laiz;-><init>()V

    sput-object v0, Laiz;->c:Laiz;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Laja;

    invoke-direct {v0}, Laja;-><init>()V

    new-instance v1, Laix;

    invoke-direct {v1}, Laix;-><init>()V

    invoke-static {}, Laik;->a()Laik;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Laiz;-><init>(Laja;Laix;Laik;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Laja;Laix;Laik;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Laiz;->a:Laja;

    .line 35
    iput-object p2, p0, Laiz;->b:Laix;

    .line 36
    iput-object p3, p0, Laiz;->d:Laik;

    .line 37
    return-void
.end method

.method public static a()Laiz;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Laiz;->c:Laiz;

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Laiz;->a:Laja;

    invoke-virtual {v0}, Laja;->c()Ljava/util/List;

    move-result-object v1

    .line 62
    iget-object v0, p0, Laiz;->b:Laix;

    iget-boolean v0, v0, Laix;->g:Z

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Laiz;->b:Laix;

    invoke-virtual {v0}, Laix;->c()Ljava/util/List;

    move-result-object v2

    .line 65
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 66
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 67
    iget-object v0, v0, Lajr;->mFilterId:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 70
    iget-object v4, v0, Lajr;->mFilterId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 71
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_2
    new-instance v0, Laiz$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Laiz$a;-><init>(Laiz;B)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 77
    iget-object v0, p0, Laiz;->d:Laik;

    invoke-virtual {v0}, Laik;->c()V

    .line 79
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Returning "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " geofilters"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    return-object v1
.end method
