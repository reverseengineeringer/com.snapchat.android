.class public final Lavd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lavc;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 5
    check-cast p1, Lavc;

    check-cast p2, Lavc;

    invoke-virtual {p2}, Lavc;->a()I

    move-result v0

    invoke-virtual {p1}, Lavc;->a()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
