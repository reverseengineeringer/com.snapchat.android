.class public final Lbux;
.super Lbuv;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lbuv;-><init>(Ljava/util/Map;)V

    .line 26
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lbux$1;

    invoke-direct {v1, p0}, Lbux$1;-><init>(Lbux;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 43
    iput-object v0, p0, Lbuv;->a:Ljava/util/Map;

    .line 44
    return-void
.end method
