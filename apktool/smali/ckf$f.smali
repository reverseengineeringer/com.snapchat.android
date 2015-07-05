.class public final Lckf$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lckg;
.implements Lckh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lckf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field volatile a:Lckh;

.field volatile b:Lckg;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:[Ljava/lang/String;

.field private final f:Z

.field private final g:Z

.field private final h:Lckh;

.field private final i:Lckg;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lckh;Lckg;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1600
    iput-object p1, p0, Lckf$f;->c:Ljava/lang/String;

    .line 1601
    iput-object p2, p0, Lckf$f;->d:Ljava/lang/String;

    .line 1603
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v2

    iput-object v0, p0, Lckf$f;->e:[Ljava/lang/String;

    .line 1622
    :goto_0
    iput-object p3, p0, Lckf$f;->h:Lckh;

    .line 1623
    iput-object p4, p0, Lckf$f;->i:Lckg;

    .line 1624
    iput-boolean v2, p0, Lckf$f;->f:Z

    .line 1625
    iput-boolean v3, p0, Lckf$f;->g:Z

    .line 1626
    return-void

    .line 1609
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 1610
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1611
    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1612
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1618
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1619
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lckf$f;->e:[Ljava/lang/String;

    goto :goto_0
.end method
