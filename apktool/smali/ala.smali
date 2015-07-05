.class public final Lala;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 52
    const-string v0, "DEFAULT"

    const-string v1, "CAMERA"

    const-string v2, "FEED"

    const-string v3, "CHAT"

    const-string v4, "STORIES"

    const-string v5, "DISCOVER"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Ldi;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ldi;

    move-result-object v0

    sput-object v0, Lala;->a:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lala;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p1, Lala;->c:Ljava/util/SortedSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    iput-object v0, p0, Lala;->c:Ljava/util/SortedSet;

    .line 87
    iget-object v0, p0, Lala;->c:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    .line 88
    if-eqz p2, :cond_0

    .line 89
    iget-object v1, p0, Lala;->c:Ljava/util/SortedSet;

    invoke-interface {v1, p2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    iget-object v1, p0, Lala;->c:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->size()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lala;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lala;->b:Ljava/lang/String;

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p1, Lala;->b:Ljava/lang/String;

    iput-object v0, p0, Lala;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lala;->c:Ljava/util/SortedSet;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 71
    if-eqz v3, :cond_0

    .line 72
    iget-object v4, p0, Lala;->c:Ljava/util/SortedSet;

    invoke-interface {v4, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    const-string v0, "; "

    invoke-static {v1, v0}, Lavb;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lala;->b:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lala;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lala;

    invoke-direct {v0, p0, p1}, Lala;-><init>(Lala;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lalc;)Lcom/snapchat/android/networkmanager/DownloadPriority;
    .locals 3
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 139
    iget-object v1, p1, Lalc;->g:Lala;

    iget-object v2, p0, Lala;->c:Ljava/util/SortedSet;

    iget-object v1, v1, Lala;->c:Ljava/util/SortedSet;

    invoke-static {v2, v1, v0}, Lasy;->a(Ljava/util/SortedSet;Ljava/util/SortedSet;Z)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p1, Lalc;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 142
    :goto_1
    return-object v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p1, Lalc;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    goto :goto_1
.end method

.method public final b(Lalc;)I
    .locals 3
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lala;->c:Ljava/util/SortedSet;

    iget-object v1, p1, Lalc;->g:Lala;

    iget-object v1, v1, Lala;->c:Ljava/util/SortedSet;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lasy;->a(Ljava/util/SortedSet;Ljava/util/SortedSet;Z)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    if-ne p0, p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 108
    :cond_3
    check-cast p1, Lala;

    .line 110
    iget-object v2, p0, Lala;->c:Ljava/util/SortedSet;

    iget-object v3, p1, Lala;->c:Ljava/util/SortedSet;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lala;->c:Ljava/util/SortedSet;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lala;->b:Ljava/lang/String;

    return-object v0
.end method
