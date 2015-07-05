.class public final Laid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laic;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laid$a;
    }
.end annotation


# static fields
.field private static final c:Laid;


# instance fields
.field public final a:Laie;

.field public final b:Laib;

.field private final d:Laho;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Laid;

    invoke-direct {v0}, Laid;-><init>()V

    sput-object v0, Laid;->c:Laid;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Laie;

    invoke-direct {v0}, Laie;-><init>()V

    new-instance v1, Laib;

    invoke-direct {v1}, Laib;-><init>()V

    invoke-static {}, Laho;->a()Laho;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Laid;-><init>(Laie;Laib;Laho;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Laie;Laib;Laho;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Laid;->a:Laie;

    .line 35
    iput-object p2, p0, Laid;->b:Laib;

    .line 36
    iput-object p3, p0, Laid;->d:Laho;

    .line 37
    return-void
.end method

.method public static a()Laid;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Laid;->c:Laid;

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laiv;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 61
    iget-object v0, p0, Laid;->a:Laie;

    invoke-virtual {v0}, Laie;->c()Ljava/util/List;

    move-result-object v1

    .line 62
    iget-object v0, p0, Laid;->b:Laib;

    iget-boolean v0, v0, Laib;->g:Z

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Laid;->b:Laib;

    invoke-virtual {v0}, Laib;->c()Ljava/util/List;

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

    check-cast v0, Laiv;

    .line 67
    iget-object v0, v0, Laiv;->mFilterId:Ljava/lang/String;

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

    check-cast v0, Laiv;

    .line 70
    iget-object v4, v0, Laiv;->mFilterId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 71
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_2
    new-instance v0, Laid$a;

    invoke-direct {v0, p0, v5}, Laid$a;-><init>(Laid;B)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 77
    iget-object v0, p0, Laid;->d:Laho;

    invoke-virtual {v0}, Laho;->c()V

    .line 79
    :cond_3
    const-string v0, "GeofilterProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Returning "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " geofilters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    return-object v1
.end method
