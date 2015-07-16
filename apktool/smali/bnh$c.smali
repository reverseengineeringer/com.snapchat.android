.class public final Lbnh$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:[Lcbk;

.field public final synthetic d:Lbnh;

.field private final e:[J


# direct methods
.method private constructor <init>(Lbnh;Ljava/lang/String;J[Lcbk;[J)V
    .locals 1

    .prologue
    .line 773
    iput-object p1, p0, Lbnh$c;->d:Lbnh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    iput-object p2, p0, Lbnh$c;->a:Ljava/lang/String;

    .line 775
    iput-wide p3, p0, Lbnh$c;->b:J

    .line 776
    iput-object p5, p0, Lbnh$c;->c:[Lcbk;

    .line 777
    iput-object p6, p0, Lbnh$c;->e:[J

    .line 778
    return-void
.end method

.method synthetic constructor <init>(Lbnh;Ljava/lang/String;J[Lcbk;[JB)V
    .locals 1

    .prologue
    .line 767
    invoke-direct/range {p0 .. p6}, Lbnh$c;-><init>(Lbnh;Ljava/lang/String;J[Lcbk;[J)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .prologue
    .line 804
    iget-object v1, p0, Lbnh$c;->c:[Lcbk;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 805
    invoke-static {v3}, Lbnq;->a(Ljava/io/Closeable;)V

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 807
    :cond_0
    return-void
.end method
