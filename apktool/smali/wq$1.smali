.class final Lwq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwq;
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
        "Laue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lwq;


# direct methods
.method constructor <init>(Lwq;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lwq$1;->a:Lwq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 190
    check-cast p1, Laue;

    check-cast p2, Laue;

    invoke-virtual {p2}, Laue;->d()I

    move-result v0

    invoke-virtual {p1}, Laue;->d()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
