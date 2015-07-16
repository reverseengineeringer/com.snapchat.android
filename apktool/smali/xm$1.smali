.class final Lxm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxm;
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
        "Lavc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lxm;


# direct methods
.method constructor <init>(Lxm;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lxm$1;->a:Lxm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 190
    check-cast p1, Lavc;

    check-cast p2, Lavc;

    invoke-virtual {p2}, Lavc;->d()I

    move-result v0

    invoke-virtual {p1}, Lavc;->d()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
