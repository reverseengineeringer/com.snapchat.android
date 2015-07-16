.class final Lanc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanc;->a(Ljava/util/Set;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Latr$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanc;


# direct methods
.method constructor <init>(Lanc;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lanc$1;->a:Lanc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 181
    check-cast p1, Latr$a;

    check-cast p2, Latr$a;

    new-instance v0, Ljava/lang/Long;

    iget-wide v2, p1, Latr$a;->mLastUpdatedTimestamp:J

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    new-instance v1, Ljava/lang/Long;

    iget-wide v2, p2, Latr$a;->mLastUpdatedTimestamp:J

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method
